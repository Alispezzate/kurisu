import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kurisu/consts.dart';
import 'package:kurisu/features/anime_list/presentation/pages/anime_list_page.dart';
import 'package:kurisu/features/sign_in/presentation/bloc/sign_in_bloc.dart';
import 'package:url_launcher/url_launcher.dart';

/// Enter the SignIn documentation here
class SignInPage extends StatelessWidget {
  final TextEditingController tokenTextController = TextEditingController();
  final TextEditingController userNameTextController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SignIn'),
      ),
      body: Center(
        child: Column(
          children: [
            TextField(
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Username',
              ),
              controller: userNameTextController,
            ),
            TextField(
              decoration: InputDecoration(
                border: const OutlineInputBorder(),
                labelText: 'Token',
                suffixIcon: IconButton(
                  icon: const Text('Get token'), // Puoi scegliere un'icona diversa se preferisci
                  onPressed: redirectToLogin,
                ),
              ),
              controller: tokenTextController,
            ),
            MaterialButton(
              onPressed: () async {
                await saveToken(context);
              },
              child: const Text('SignIn'),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> redirectToLogin() async {
    final Uri url = Uri.parse(anilistLoginUrl);
    if (!await launchUrl(url)) {
      throw Exception('Could not launch $url');
    }
  }

  Future<void> saveToken(BuildContext context) async {
    BlocProvider.of<SignInBloc>(context).perform(tokenTextController.text, userNameTextController.text);
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => const AnimeListPage(title: 'Kurisu')));
  }
}
