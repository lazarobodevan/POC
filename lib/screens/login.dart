import 'package:flutter/material.dart';
import 'package:poc/components/button.dart';
import 'package:poc/components/text_input.dart';
import 'package:poc/theme/theme.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 60, top: 230),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Center(
                    child: RichText(
                      text: TextSpan(
                        text: 'Track',
                        style: TextStyle(
                            fontSize: 60,
                            fontFamily: 'NotoSerif',
                            fontWeight: FontWeight.w600,
                            foreground: Paint()
                              ..shader = const LinearGradient(
                                      colors: ThemeColors.primary3G)
                                  .createShader(const Rect.fromLTWH(0, 0, 300, 10))),
                        children: [
                          TextSpan(
                              text: 'It',
                              style: TextStyle(
                                  foreground: Paint()
                                    ..shader = const LinearGradient(
                                            colors: ThemeColors.primary2G)
                                        .createShader(const Rect.fromLTWH(
                                            0, 0, 200, 100))))
                        ],
                      ),
                    ),
                  ),
                  const Text(
                    'Seu aplicativo de tarefas',
                    style: TextStyle(fontSize: 18),
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(bottom: 18),
              child: TextInput(width: 286, height: 57, placeholder: 'Email'),
            ),
            const TextInput(width: 286, height: 57, placeholder: 'Senha'),
            Padding(
              padding: const EdgeInsets.only(right: 55, bottom: 40),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                      onPressed: () {},
                      child: const Text(
                        'Esqueci minha senha',
                        style: TextStyle(),
                      )),
                ],
              ),
            ),
            Button(
              text: 'Entrar',
              onTap: () {
                Navigator.pushReplacementNamed(context, '/home');
              },
            ),
            Padding(
              padding: const EdgeInsets.only(top: 40),
              child: TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/register');
                },
                child: const Text(
                  'CRIAR CONTA',
                  style: TextStyle(
                      color: ThemeColors.secondaryBlack,
                      fontWeight: FontWeight.w600),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
