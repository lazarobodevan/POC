import 'package:flutter/material.dart';
import 'package:poc/components/button.dart';
import 'package:poc/components/text_input.dart';
import 'package:poc/components/title.dart';
import 'package:poc/theme/theme.dart';

class Register extends StatelessWidget {
  const Register({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ThemeColors.secondaryWhite,
        iconTheme: const IconThemeData(size: 40, color: ThemeColors.primary1),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.only(top: 20, left: 40, right: 40, bottom: 20),
        child: Form(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.only(bottom: 20),
                  child: TitleH3(text: 'Crie sua conta'),
                ),
                Column(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(bottom: 18),
                      child: TextInput(width: double.maxFinite, height: 57, placeholder: 'Nome completo'),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(bottom: 18),
                      child: TextInput(width: double.maxFinite, height: 57, placeholder: 'E-mail'),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(bottom: 18),
                      child: TextInput(width: double.maxFinite, height: 57, placeholder: 'Senha'),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(bottom: 18),
                      child: TextInput(width: double.maxFinite, height: 57, placeholder: 'Confirmar senha'),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(bottom: 18),
                      child: TextInput(width: double.maxFinite, height: 57, placeholder: 'Matricula'),
                    ),
                    const TextInput(width: double.maxFinite, height: 57, placeholder: 'Curso'),
                    Padding(
                      padding: const EdgeInsets.only(top: 40),
                      child: Button(text: 'Concluir', onTap: (){}),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
    );
  }
}
