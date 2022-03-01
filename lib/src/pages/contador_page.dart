import 'package:flutter/material.dart';

class ContadorPage extends StatefulWidget{

  @override
  createState() => _ContadorPageState();
  
}

class _ContadorPageState extends State<ContadorPage> {

  final _estiloTexto = new TextStyle(fontSize: 25);
  int _conteo = 10;

   @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
       title: Text('Stateful'),
       centerTitle: true,
     ),
     body:  Center(
       child: Column(
         mainAxisAlignment: MainAxisAlignment.center,
         children: <Widget> [
           Text ('Número de clicks', style: _estiloTexto),
           Text ( '$_conteo', style: _estiloTexto),
         ],
         )
     ),
     floatingActionButton: FloatingActionButton(
      child: Icon(Icons.add),
       onPressed: () {
         //print('Hola Mundo');
         
         setState(() {
           _conteo++;
         });
        },
     ),
   );
  }

}