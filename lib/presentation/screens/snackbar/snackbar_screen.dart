import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SnackbarScreen extends StatelessWidget {
  static const String name = "SnackbarScreen";
  const SnackbarScreen({super.key});

  void showCustomSnackbar(BuildContext context) {
    ScaffoldMessenger.of(context).clearSnackBars();
    final snackBar = SnackBar(
      content: const Text('Hola mundo'),
      action: SnackBarAction(label: 'Ok', onPressed: () {}),
      duration: const Duration(seconds: 2),
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  void _openDialog(BuildContext context) {
    showDialog(
      barrierDismissible: false,
      context: context,
      builder: (BuildContext context) => AlertDialog(
        title: const Text('Estas seguro'),
        content: const Text(
            'Labore fugiat voluptate voluptate incididunt nostrud tempor laboris. Non sunt commodo officia elit velit ea nulla incididunt elit voluptate nulla nostrud id eiusmod. Sunt amet dolore fugiat ut laborum id dolor aliquip sunt.'),
        actions: [
          TextButton(
            onPressed: () {
              context.pop();
            },
            child: const Text('Cancelar'),
          ),
          FilledButton(
            onPressed: () {
              context.pop();
            },
            child: const Text('Aceptar'),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Snackbars y dialogos'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FilledButton.tonal(
              onPressed: () {
                showAboutDialog(context: context, children: [
                  const Text(
                      'Laborum id ea esse ea ipsum est. Cupidatat aliquip aliquip in nulla. Ut labore anim est sunt anim esse aliqua ea. Eiusmod Lorem tempor et occaecat laborum quis.')
                ]);
              },
              child: Text('Licencias usadas'),
            ),
            FilledButton.tonal(
              onPressed: () => _openDialog(context),
              child: Text('Mostrar dialogo'),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () => showCustomSnackbar(context),
        label: const Text('Mostrar snackbar'),
        icon: const Icon(Icons.remove_red_eye_outlined),
      ),
    );
  }
}
