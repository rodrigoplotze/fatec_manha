// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../model/contato.dart';

class PrincipalView extends StatefulWidget {
  const PrincipalView({super.key});

  @override
  State<PrincipalView> createState() => _PrincipalViewState();
}

class _PrincipalViewState extends State<PrincipalView> {
  //Declaração da lista dinâmica de Contatos
  List<Contato> dados = [];

  @override
  void initState() {
    dados = Contato.preencher();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contatos', style: TextStyle(color: Colors.yellow,),),
        backgroundColor: Colors.blue.shade900,
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        //
        // ListView
        //
        child: ListView.builder(
          //Quantidade de Itens
          itemCount: dados.length,
          //Aparência de cada Item
          itemBuilder: (context, index) {
            return Card(
              child: ListTile(
                title: Text(dados[index].nome),
                subtitle: Text(dados[index].email),
              ),
            );
          },
        ),

      ),
    );
  }
}
