import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kurisu/features/anime_list/presentation/pages/anime_list_page.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../consts.dart';
import '../bloc/sign_in_bloc.dart';

/// Enter the SignIn documentation here
class SignInPage extends StatefulWidget {
  /// The constructor of the page.
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInState();
}

class _SignInState extends State<SignInPage> {
  TextEditingController tokenTextController = TextEditingController();
  TextEditingController userNameTextController = TextEditingController();

  @override
  void initState() {
    super.initState();
    BlocProvider.of<SignInBloc>(context).check();
  }

  @override
  void dispose() {
    super.dispose();
  }

  //build the page
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

  redirectToLogin() async {
    Uri url = Uri.parse(anilistLoginUrl);
    if (!await launchUrl(url)) {
      throw Exception('Could not launch $url');
    }
  }

  saveToken(BuildContext context) async {
    BlocProvider.of<SignInBloc>(context).perform(tokenTextController.text, userNameTextController.text);
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => const AnimeListPage(title: 'Kurisu')));
  }
}
