import 'package:flutter/material.dart';

class Informacion extends StatelessWidget {
  final estiloTitulo = TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold);
  final estiloSubTitulo = TextStyle(fontSize: 18.0, color: Colors.grey);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        title: Text('Ubicación'),
        backgroundColor: Colors.blue,
      ),
        body: SingleChildScrollView(
      child: Column(
        children: <Widget>[
          _crearImagen(context),
          _crearAcciones(),
          _crearTexto(),
        _crearImagen3(context),
       


          
        ],
      ),
    ));
  }



  Widget _crearImagen(BuildContext context) {
    return Container(
       
      width: double.infinity,
      child: GestureDetector(
        onTap: () => Navigator.pushNamed(context, 'scroll'),
        child: Image(
          image: AssetImage('../assets/mapa.png'),
          height:200.0,
         fit: BoxFit.cover,
        ),
      ),
    );
  }


  Widget _crearImagen2(BuildContext context) {
    return Container(
       
      
    );
  }

  Widget _crearImagen4(BuildContext context) {
    return Container(
       
     
    );
  }
  Widget _crearImagen5(BuildContext context) {
    return Container(
       
     
    );
  }  
  Widget _crearImagen6(BuildContext context) {
    return Container(
       
     
    );
  }
  Widget _crearImagen7(BuildContext context) {
    return Container(
       
     
    );
  }

    Widget _crearImagen3(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
  children: [
     SizedBox(height: 16.0),
    _crearImagen2(context),
     
    SizedBox(height: 20.0),
    Image(
      image: AssetImage('../assets/vice.jpg'),
     
      height:200.0,
      fit: BoxFit.cover,
    ),
     SizedBox(height: 16.0),
    _crearImagen5(context),
      SizedBox(height: 20.0),
    Image(
      image: AssetImage('../assets/san.jpg'),
      height:200.0,
      fit: BoxFit.cover,
    ),
    SizedBox(height: 16.0),
    _crearImagen6(context),
    SizedBox(height: 20.0),

    Image(
      image: AssetImage('../assets/gta4.jpg'),
      
      
      height:200.0,
      fit: BoxFit.cover,
    ),
     _crearImagen7(context),
     SizedBox(height: 20.0),
    Image(
      image: AssetImage('../assets/gta5.jpg'),
      height:200.0,
      fit: BoxFit.cover,
    ),
    
  ],
);
  }





   Widget _crearAcciones() {
    return Row(
      
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[

        _accion(Icons.location_on, 'UBICACIÓN') ,
      
      ],
      
    );
    
  }
  

  Widget _accion(IconData icon, String texto) {
    return Column(
      children: <Widget>[
        Icon(icon, color: Colors.blue, size: 40.0),
       
        Text(
          texto,
          style: TextStyle(fontSize: 15.0, color: Colors.blue),
          
        )
      ],
    );
  }

  Widget _crearTexto() {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 40.0),
        child: Text(
          
          'Rockstar Games\n'
          '622 Broadway\n'
          'New York, NY 10012\n'
          'Estados Unidos\n',
          textAlign: TextAlign.center,

        ),
      ),
    );
  }
}