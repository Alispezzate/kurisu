import 'dart:convert';

import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:http/http.dart' as http;
import 'package:jwt_decoder/jwt_decoder.dart';
import 'package:kurisu/consts.dart';
import 'package:kurisu/features/sign_in/data/repositories/authentication_repository.dart';
import 'package:talker/talker.dart';

/// Implementation of the base interface AuthenticationRepository
class AnilistAuthenticationRepository implements AuthenticationRepository {
  const AnilistAuthenticationRepository({required this.logger});

  /// Logger
  @override
  final Talker logger;

  @override
  Future<void> signIn(String token, String username) async {
    final uri = Uri.parse('https://anilist.co/api/v2/oauth/token');
    final response = await http.post(
      uri,
      headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
      },
      body: jsonEncode({
        'grant_type': 'authorization_code',
        'client_id': anilistClientId,
        'client_secret': anilistClientSecret,
        'redirect_uri': anilistRedirectUri,
        'code': token,
      }),
    );

    if (response.statusCode == 200) {
      final responseBody = jsonDecode(response.body);
      logger.info("access_token ${responseBody['access_token']}");
      const storage = FlutterSecureStorage();
      await storage.write(key: accessTokenKey, value: responseBody['access_token'] as String);
      final temp = await storage.read(key: accessTokenKey);
      logger.info("access_token $temp");
      await storage.write(key: usernameKey, value: username);
      // Converting expiresIn to a more readable format
      final expirationDateTime = DateTime.now().add(Duration(seconds: responseBody['expires_in'] as int));
      logger.info('Token will expire on: ${expirationDateTime.toLocal()}');
      return;
    }
    if (response.statusCode == 400) {
      final responseBody = jsonDecode(response.body);
      logger.error(responseBody);
    }
  }

  @override
  Future<String> getAccessToken() async {
    const storage = FlutterSecureStorage();
    final accessToken = await storage.read(key: accessTokenKey);
    return accessToken ?? '';
  }

  @override
  Future<bool> isSignedIn() async {
    try {
      const storage = FlutterSecureStorage();
      final String? accessToken = await storage.read(key: accessTokenKey);
      final bool isExpired = JwtDecoder.isExpired(accessToken ?? '');
      return !isExpired;
    } catch (e) {
      return false;
    }
  }

  @override
  Future<void> signOut() async {
    const storage = FlutterSecureStorage();
    await storage.delete(key: accessTokenKey);
  }

  @override
  Future<String> getUsername() async {
    const storage = FlutterSecureStorage();
    final username = await storage.read(key: usernameKey);
    return username ?? '';
  }
}
