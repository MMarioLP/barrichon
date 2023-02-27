import 'package:flutter/material.dart';

class Becas extends StatelessWidget {
final List<String> nombres = ['Terry Donovan', 'Sam Houser', 'Dan Houser'];
  final List<String> fotos = ['../assets/ter.jpeg', '../assets/sam.png', '../assets/dan.png'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Equipo de Trabajo'),
       
        backgroundColor: Colors.green,
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemCount: nombres.length,
        itemBuilder: (BuildContext context, int index) {
          return Card(
            margin: EdgeInsets.all(8),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage(fotos[index]),
                ),
                SizedBox(height: 16),
                Text(nombres[index], style: TextStyle(fontSize: 18)),
              ],
            ),
          );
        },
      ),
    );
  }
}
