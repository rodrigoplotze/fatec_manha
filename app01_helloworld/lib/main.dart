import 'package:flutter/material.dart';

void main() {
  //chamar o framework Flutter
  runApp(const PrincipalView());
}

//
// TELA PRINCIPAL
// Stateless ==> stl+TAB
class PrincipalView extends StatelessWidget {
  const PrincipalView({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Hello',
      home: Scaffold(
        body: Center(
          child: Text('Hello World!'),
        ),
      ),
    );
  }
}
