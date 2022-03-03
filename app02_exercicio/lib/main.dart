import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Exercício',
    home: TelaPrincipal(),
  ));
}

//
// TELA PRINCIPAL
//
class TelaPrincipal extends StatelessWidget {
  const TelaPrincipal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Exercício'),
        backgroundColor: Colors.amber.shade900,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.home),
          ),
        ],
      ),
      body: Column(
        children: [
          Row(
            children: [
              Container(
                width: MediaQuery.of(context).size.width * 0.50,
                height: MediaQuery.of(context).size.height * 0.20,
                color: Colors.amber.shade200,
                child: const Center(child: Text('A')),
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.50,
                height: MediaQuery.of(context).size.height * 0.20,
                color: Colors.blue.shade200,
                child: const Center(child: Text('B')),
              ),
            ],
          ),
          Row(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.50,
                color: Colors.red.shade200,
                child: const Center(child: Text('C')),
              ),
            ],
          ),
          Row(
            children: [
              Container(
                width: MediaQuery.of(context).size.width * 0.50,
                height: MediaQuery.of(context).size.height * 0.20,
                color: Colors.amber.shade200,
                child: const Center(child: Text('D')),
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.50,
                height: MediaQuery.of(context).size.height * 0.20,
                color: Colors.blue.shade200,
                child: const Center(child: Text('E')),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
