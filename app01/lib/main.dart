import 'package:flutter/material.dart';

void main(){

  //Iniciar a execução do App
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Meu primeiro App',

      //Indicar qual é a tela inicial
      home: TelaPrincipal(),

    )
  );

}


//
// TELA PRINCIPAL
//
class TelaPrincipal extends StatelessWidget {
  
  //construtor
  const TelaPrincipal({ Key? key }) : super(key: key);

  //O método build é responsável por construir
  //os elementos visuais (widgets) que aparecerão
  //na interface gráfica (UI)
  @override
  Widget build(BuildContext context) {

    return Scaffold(

      body:  Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          
          const Icon(
            Icons.computer, size: 60,  
          ),

          const Center(
            child: Text('Hello World!'),
          ),

          Row(
            children: [
              Container(
                width: 100,
                height: 100,
                color: Colors.red,
              ),

              const SizedBox(
                width: 20,
              ),
              
              Container(
                width: 100,
                height: 100,
                color: Colors.green,
              ),


              Container(
                width: 100,
                height: 100,
                color: Colors.blue,
              ),
            ],
          ),

          const Center(
            child: Text('Hello World!'),
          ),

        ],
      ),
      
    );

  }

}