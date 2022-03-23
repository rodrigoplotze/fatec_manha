import 'package:flutter/material.dart';

class WidgetCarro extends StatelessWidget {
  //Atributos para receber dados de outra classe
  final String marca;
  final String modelo;
  final String imagem;

  const WidgetCarro(this.marca, this.modelo, this.imagem, {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        //margin: const EdgeInsets.all(20),
        margin: const EdgeInsets.fromLTRB(20, 20, 20, 0),
        width: 500,
        height: 300,
        //color: Colors.grey.shade300,

        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.grey.shade900,
            width: 2,
          ),
          
          borderRadius: BorderRadius.circular(12),

          color: Colors.grey.shade300,
        ),

        child: Column(
          children: [
            Text(
              marca,
              style: const TextStyle(
                fontSize: 20,
                color: Colors.red,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              modelo,
              style: const TextStyle(
                fontSize: 16,
                color: Colors.red,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
              ),
            ),

            //INSERIR A IMAGEM DO CARRO
            Image.asset(
              imagem,
              scale: 1.8,
              fit: BoxFit.fitWidth,
            ),

          ],
        ),
      ),
    );
  }
}
