// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: true,
      builder: (context) =>  MainApp(),
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

class PrincipalView extends StatefulWidget {
  const PrincipalView({super.key});

  @override
  State<PrincipalView> createState() => _PrincipalViewState();
}

class _PrincipalViewState extends State<PrincipalView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //Barra de título
      appBar: AppBar(
        title: Text('Hello Flutter'),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      
      //Cor do fundo do body
      backgroundColor: Colors.blue.shade100,

      body: Column(

        //Alinhamento EIXO PRINCIPAL
        mainAxisAlignment: MainAxisAlignment.start,

        //Alinhamento EIXO SECUNDÁRIO
        crossAxisAlignment: CrossAxisAlignment.start,

        children: [
          Container(
            width: 100,
            height: 100,
            color: Colors.red,
          ),
          Row(
            
            mainAxisAlignment: MainAxisAlignment.start,

            children: [
              Container(
                width: 100,
                height: 100,
                color: Colors.green,
              ),
              Container(
                width: 100,
                height: 100,
                color: Colors.yellow,
              ),
            ],
          ),
          Row(
            children: [
              Container(
                width: 100,
                height: 100,
                color: Colors.purple,
              ),
              Column(
                children: [
                  Icon(
                    Icons.computer,
                    size: 50,
                  ),
                  Icon(
                    Icons.mouse,
                    size: 50,
                  ),
                ],
              ),
            ],
          ),
        ],

      ),
    );
  }
}
