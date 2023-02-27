import 'package:flutter/material.dart';

class Carreras extends StatelessWidget {
  final TextEditingController _nombreController = TextEditingController();
  final TextEditingController _correoController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
          appBar: AppBar(
        title: Text('Contacto'),
        backgroundColor: Colors.blue[800],
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                controller: _nombreController,
                decoration: InputDecoration(
                  labelText: 'Nombre completo',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 16.0),
              TextFormField(
                controller: _correoController,
                decoration: InputDecoration(
                  labelText: 'Correo electrónico',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 16.0),
              ElevatedButton(
                onPressed: () {
                  // Manejar la acción del botón de envío
                },
                child: Text('Enviar'),
              ),
            ],
          ),
        ),
      ),
      backgroundColor: Colors.blue[100],
    );
  }
}
