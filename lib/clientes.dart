import 'package:flutter/material.dart';

class Clientes extends StatelessWidget {

 

  final List<String> nombresEmpresas = ['Take-Two Interactive ', 'Rockstar North', 'Rockstar San Diego'];
  final List<String> logosEmpresas = ['../assets/uno.png', '../assets/dos.png', '../assets/tres.png'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Clientes'),
        backgroundColor: Colors.red[800],
      ),
      body:   ListView.builder(
        itemCount: nombresEmpresas.length,
        itemBuilder: (BuildContext context, int index) {
          return Card(
            margin: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            child: ListTile(
              leading: Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.white,
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(5),
                  child: Image.asset(
                    logosEmpresas[index],
                    height: 50,
                    width: 50,
                  ),
                ),
              ),
              title: Container(
                width: MediaQuery.of(context).size.width - 20,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                ),
                child: Padding(
                  padding: EdgeInsets.all(40),
                  child: Center(
                    child: Text(nombresEmpresas[index]),
                  ),
                ),
              ),
            ),
          );
        },
      ),
      backgroundColor: Colors.red[100],
    );
  }
}