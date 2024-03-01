// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace

import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: true,
      builder: (context) => MainApp(),
    ),
  );
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Meu App',
      home: PrincipalView(),
    );
  }
}

class PrincipalView extends StatelessWidget {
  const PrincipalView({super.key});

  //
  // Método para criação de Container dinâmico
  //
  Widget criarContainer(titulo) {
    return Expanded(
      flex: 1,
      child: Container(
        height: 120,
        decoration: BoxDecoration(
          border: Border.all(width: 1.0),
        ),
        child: Center(child: Text(titulo)),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Texto'),
        backgroundColor: Colors.grey,
      ),
      body: Column(
        children: [
          Row(
            children: [
              criarContainer('A'),
              criarContainer('B'),
            ],
          ),
          criarContainer('C'),
          Row(
            children: [
              criarContainer('D'),
              criarContainer('E'),
            ],
          ),
        ],
      ),
    );
  }
}
