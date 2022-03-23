import 'package:flutter/material.dart';

import 'widget_carro.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'WebCars',
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
      //BARRA DE TÍTULO
      appBar: AppBar(
        title: const Text('WebCars'),
        centerTitle: true,
        backgroundColor: Colors.red.shade900,
      ),

      //BODY
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            WidgetCarro("Audi", "Q8", "lib/imagens/audi_q8.jpg"),
            WidgetCarro("Audi", "R8", "lib/imagens/audi_r8.jpg"),
            WidgetCarro("BMW", "M2", "lib/imagens/bmw_m2.jpg"),
            WidgetCarro("Ferrari", "488", "lib/imagens/ferrari_488.jpg"),
            WidgetCarro("Lamborghini", "Huracan", "lib/imagens/lamborghini_huracan.jpg"),
            WidgetCarro("Lamborghini", "Urus", "lib/imagens/lamborghini_urus.jpg"),
            WidgetCarro("Masserati", "GTS", "lib/imagens/maserati_gts.jpg"),
          ],
        ),
      ),
    );
  }
}
