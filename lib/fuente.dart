import 'package:flutter/material.dart';

class Fuente extends StatelessWidget {
  final estiloTitulo = TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Datos generales de la empresa'),
        backgroundColor: Colors.yellow,
      ),
        body: SingleChildScrollView(
      child: Column(
        children: <Widget>[
          
          _crearTitulo(),
          _crearTexto(),
          _crearImagen2(context)
          
        ],
      ),
    ));
  }


  Widget _crearTitulo() {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 20.0),
        child: Row(
          children: <Widget>[
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                
                children: <Widget>[
                  
                  Text(  
                    'DATOS', style: estiloTitulo,
                    textAlign: TextAlign.center),
                  
                  SizedBox(height: 7.0),

                 
                ],
              ),
            ),
          
          ],
        ),
      ),
    );
  }


Widget _crearImagen2(BuildContext context) {
  return Container(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          "Logo de la empresa",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
        SizedBox(height: 10),
        Image.asset(
          "../assets/logo.png",
          width: 200,
          height: 200,
        ),
      ],
    ),
  );
}


  
  Widget _crearTexto() {
    
    return SafeArea(
      
      child: Container(
        
        padding: EdgeInsets.symmetric(horizontal: 40.0),
        
        child: Text(
          
          '1.- Nombre: Rockstar Games\n'
          '\n' 
          '2.- Dirección: 622 Broadway, New York, NY 10012, Estados Unidos\n' 
          '\n' 
          '3.- Teléfono: (212) 334-6633\n' 
          '\n' 
          '4.- Giro de la empresa: Desarrollo y publicación de videojuegos \n'
          '\n'
          '5.- Página Web: https://www.rockstargames.com/mx/\n' ,
          textAlign: TextAlign.left,
           style: TextStyle(fontSize: 20, color: Colors.black),
        ),
        
      ),
    );
  }
}




