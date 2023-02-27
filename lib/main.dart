import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
//import 'package:menu_dash/scroll_page.dart';
import 'informacion.dart';
import 'carreras.dart';
import 'becas.dart';
import 'basic_page.dart';
import 'scroll_page.dart';
import 'filosofia.dart';
import 'clientes.dart';
import 'fuente.dart';
void main() {
  runApp(
   
    MaterialApp(
       debugShowCheckedModeBanner: false,
      home: MyApp(),
      routes: <String, WidgetBuilder>{
        "/inicio": (BuildContext context) => MyApp(),
        "/informacion": (BuildContext context) => Informacion(),
        "/carreras": (BuildContext context) => Carreras(),
        "/becas": (BuildContext context) => Becas(),
        "/basica": (BuildContext context) => BasicoPage(),
        "/scroll": (BuildContext context) => ScrollPage(),
        "/filosofia": (BuildContext context) => Filosofia(),
        "/clientes": (BuildContext context) =>  Clientes(),
        "/fuente": (BuildContext context) =>  Fuente(),
      },
    ),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
  
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
     
    return Scaffold(
      
      appBar: AppBar(
        title: Text('Rockstar Games',
        style: TextStyle(
        color: Colors.white,
        ),
        ),
        
        backgroundColor: Colors.yellow[800],
        
      ),
      backgroundColor: Colors.black,
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text(
                'Usuario Invitado',
                style: TextStyle(fontSize: 17),
              ),
              accountEmail: Text('ttrevor@admin.com'),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://assets.reedpopcdn.com/138130412425.jpg/BROK/thumbnail/1200x1200/quality/100/138130412425.jpg'),
              ),
              decoration: BoxDecoration(color: Colors.red[400]),
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text('Información'),
              onTap: () {
                Navigator.pushNamed(context, '/fuente');
              },
            ),
            ListTile(
              leading: Icon(Icons.vpn_key),
              title: Text('Carreras'),
              onTap: () {
                Navigator.pushNamed(context, '/carreras');
              },
            ),
            ListTile(
              leading: Icon(Icons.info),
              title: Text('Contactanos'),
              onTap: () {
                Navigator.pushNamed(context, '/becas');
              },
            ),
            ListTile(
              leading: Icon(Icons.pageview_outlined),
              title: Text('Página Básica'),
              onTap: () {
                Navigator.pushNamed(context, '/basica');
              },
            ),
            ListTile(
              leading: Icon(Icons.exit_to_app),
              title: Text('Salir'),
              onTap: () {
                if (Platform.isAndroid) {
                  SystemNavigator.pop();
                } else {
                  exit(0);
                }
              },
            ),
          ],
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(30),
        child: GridView.count(
          crossAxisCount: 2,
          children: <Widget>[
            MyMenu(
                title: 'Filosofía',
                icon: Icons.book,
                iconColor: Colors.brown,
                ruta: '/filosofia',	),
            MyMenu(
              title: 'Ubicación de la empresa',
              icon: Icons.location_on,
              iconColor: Colors.orange,
              ruta: '/informacion',
            ),
            MyMenu(
                title: 'Contacto',
                icon: Icons.person,
                iconColor: Colors.blue,
                ruta: '/carreras'),
            MyMenu(
              title: 'Clientes',
              icon: Icons.attach_money,
              iconColor: Colors.red,
              ruta: '/clientes',
            ),
            MyMenu(
                title: 'Personal',
                icon: Icons.person_2_sharp,
                iconColor: Colors.blueGrey,
                ruta: '/becas'),
            MyMenu(
              title: 'Datos',
              icon: Icons.error_outline,
              iconColor: Colors.green,
              ruta: '/fuente',
            ),
          ],
        ),
      ),
    );
  }
}

class MyMenu extends StatelessWidget {
  MyMenu(
      {required this.title,
      required this.icon,
      required this.iconColor,
      required this.ruta});

  final String title;
  final IconData icon;
  final MaterialColor iconColor;
  final String ruta;

  @override
  Widget build(BuildContext context) {
    return Card(
      
      margin: EdgeInsets.all(8),
      
      child: InkWell(
        onTap: () {
          Navigator.pushNamed(context, ruta);
        },
        splashColor: Colors.green,
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Icon(
                icon,
                size: 70,
                color: iconColor,
              ),
              Text(
                title,
                style: TextStyle(fontSize: 17),
              )
            ],
          ),
        ),
      ),
    );
  }
}
