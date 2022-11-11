import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:payflow/app_widget.dart';

void main() {
  runApp(const AppFirebase());
}

class AppFirebase extends StatefulWidget {
  const AppFirebase({super.key});

  @override
  State<AppFirebase> createState() => _AppFirebaseState();
}

class _AppFirebaseState extends State<AppFirebase> {
  final Future<FirebaseApp> _initialization = Firebase.initializeApp();
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: _initialization,
      builder: (context, snapshot) {
        //caso a conexao com o firebas falhe
        if (snapshot.hasError) {
          return const Material(
            child: Center(
              child: Text(
                "Nao foi possivel iniciar o FireBase",
                textDirection: TextDirection.ltr,
              ),
            ),
          );
        }
        //caso a conexao com firebase conclua com sucesso
        if (snapshot.connectionState == ConnectionState.done) {
          return AppWidget();
        }
        //caso a conecao com o firebase ainda esteja em progresso
        return const Material(
          child: Center(
            child: CircularProgressIndicator(),
          ),
        );
      },
    );
  }
}
