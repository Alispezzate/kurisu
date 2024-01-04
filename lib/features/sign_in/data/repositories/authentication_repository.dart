import 'package:talker/talker.dart';

/// Abstract class of AuthenticationRepository
abstract class AuthenticationRepository {
  const AuthenticationRepository({required this.logger});

  /// Logger
  final Talker logger;

  /// Method used to sign in
  Future<void> signIn(String token, String username) async => throw UnimplementedError();

  /// Method used to sign out
  Future<void> signOut() async => throw UnimplementedError();

  /// Method used to check if the user is signed in
  Future<bool> isSignedIn() async => throw UnimplementedError();

  /// Method used to get the access token
  Future<String> getAccessToken() async => throw UnimplementedError();

  /// Method used to get the username
  Future<String> getUsername() async => throw UnimplementedError();
}
