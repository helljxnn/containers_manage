import 'package:flutter/material.dart';

class ContainerExample extends StatelessWidget {
  const ContainerExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container( // Refactor para unir 2 widget en un solo 
          width: double.infinity,// Double infinity para que se adapte a la pantalla
          height: 80,
          color: Colors.green[400], 
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            mainAxisSize: MainAxisSize.max,
            children: [
              Text('ApData',style: TextStyle(fontSize: 24, color: Colors.white),)// FonSize para la fuente del texto
            ],
          ),
        ),
        SizedBox(height: 30),// Es un widget para dejar un espacio entre los elementos
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround, // Para dar espacio entre los elementos
          mainAxisSize: MainAxisSize.max,
          children: [   // El row necesita un children para poder meter containers 
            Container(width: 80, height: 80, color: Colors.black,),
            Container(width: 80, height: 80, color: Colors.purple[400],),
            Container(width: 80, height: 80, color: Colors.black,),
          ],
        ),
        SizedBox(height: 30,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          mainAxisSize: MainAxisSize.max, 
        children: [
          Container(width: 170, height: 100, color: Colors.purple[400],),
          Container(width: 190, height: 100, color: Colors.pink[400],),
        ],  
        ),
        SizedBox(height: 30,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          mainAxisSize: MainAxisSize.max, 
        children: [
          Container(width: 90, height: 190, color: Colors.black,),
          Container(width: 80, height: 80, color: Colors.pink[400],),
          Container(width: 90, height: 190, color: Colors.black,),
        ],  
        ),
      ],
    );
  }
}