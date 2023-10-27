import 'package:flutter/material.dart';
import 'package:poc/components/button.dart';
import 'package:poc/components/text_input.dart';
import 'package:poc/components/title.dart';
import 'package:poc/theme/theme.dart';
import 'package:poc/utils/notifier.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(right: 40, left: 40),
          child: Wrap(
            runSpacing: 20,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const TitleH3(text: "Perfil"),
                  Ink(
                    height: 40,
                    width: 40,
                    child: InkWell(
                      onTap: () {
                        Notifier.showAlertDialog(
                            context, "Atenção!", "Tem certeza que deseja sair?",
                            () {
                          Navigator.pushReplacementNamed(context, "/");
                          Notifier.showToast(context, "Você saiu com sucesso!",
                              ThemeColors.semanticGreen, () {
                            Notifier.showToast(
                                context,
                                "Você desfez a ação anterior",
                                ThemeColors.semanticGreen,
                                () {},
                                null);
                          }, null);
                        });
                      },
                      radius: 40,
                      borderRadius: BorderRadius.circular(40),
                      child: const Icon(
                        Icons.logout,
                        color: Colors.red,
                        size: 30,
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 60,
              ),
              const TextInput(
                  width: double.maxFinite,
                  height: 57,
                  placeholder: "Nome completo"),
              const TextInput(
                  width: double.maxFinite, height: 57, placeholder: "Email"),
              const TextInput(
                  width: double.maxFinite, height: 57, placeholder: "Senha"),
              const TextInput(
                  width: double.maxFinite,
                  height: 57,
                  placeholder: "Confirmar senha"),
              const TextInput(
                  width: double.maxFinite,
                  height: 57,
                  placeholder: "Matrícula"),
              const TextInput(
                  width: double.maxFinite, height: 57, placeholder: "Curso"),
              const SizedBox(
                height: 90,
              ),
              Center(
                  child: Button(
                      text: "Salvar",
                      onTap: () {
                        Notifier.showAlertDialog(context, "Atenção!",
                            "Deseja salvar suas alterações?", () {
                          Navigator.of(context).pop();
                          Notifier.showToast(
                              context,
                              "Dados salvos com sucesso!",
                              ThemeColors.semanticGreen, () {
                            Notifier.showToast(
                                context,
                                "Você desfez a ação anterior",
                                ThemeColors.semanticGreen,
                                () {},
                                null);
                          }, null);
                        });
                      })),
              const SizedBox(
                height: 90,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
