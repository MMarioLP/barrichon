import 'package:flutter/material.dart';

class Filosofia extends StatelessWidget {
  final estiloTitulo = TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold);
  final estiloSubTitulo = TextStyle(fontSize: 18.0, color: Colors.grey);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Filosofía'),
        backgroundColor: Colors.brown,
      ),
        body: SingleChildScrollView(
      child: Column(
        children: <Widget>[
          
          _crearTitulo(),
          _crearTexto(),
          _crearTitulo2(),
          _crearTexto2(),
          _crearTitulo3(),
          _crearTexto3(),
          _crearTitulo4(),
          _crearText4()
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
                crossAxisAlignment: CrossAxisAlignment.start,
                
                children: <Widget>[
                  
                  Text(  
                    '  Historia', style: estiloTitulo,
                    textAlign: TextAlign.justify),
                  
                  SizedBox(height: 7.0),

                 
                ],
              ),
            ),
          
          ],
        ),
      ),
    );
  }


    Widget _crearTitulo2() {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 20.0),
        child: Row(
          children: <Widget>[
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                
                children: <Widget>[
                  
                  Text(  
                    '  Misión', style: estiloTitulo,
                    textAlign: TextAlign.justify),
                  
                  SizedBox(height: 7.0),

                 
                ],
              ),
            ),
          
          ],
        ),
      ),
    );
  }

    Widget _crearTitulo3() {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 20.0),
        child: Row(
          children: <Widget>[
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                
                children: <Widget>[
                  
                  Text(  
                    '  Visión', style: estiloTitulo,
                    textAlign: TextAlign.justify),
                  
                  SizedBox(height: 7.0),

                 
                ],
              ),
            ),
          
          ],
        ),
      ),
    );
  }
  Widget _crearTitulo4() {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 20.0),
        child: Row(
          children: <Widget>[
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                
                children: <Widget>[
                  
                  Text(  
                    '  Valores', style: estiloTitulo,
                    textAlign: TextAlign.justify),
                  
                  SizedBox(height: 7.0),

                 
                ],
              ),
            ),
          
          ],
        ),
      ),
    );
  }

  Widget _accion(IconData icon, String texto) {
    return Column(
      children: <Widget>[
        
        SizedBox(height: 5.0),
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
          'Rockstar Games es una empresa de videojuegos fundada en Nueva York en 1998'
          'por los hermanos Houser y otros socios. Desde su creación, Rockstar Games se ha' 
          'destacado por su enfoque en juegos de alta calidad, con una atención meticulosa' 
          'a los detalles y una narrativa profunda y compleja. Su primer gran éxito fue la serie' 
          'Grand Theft Auto, que debutó en 1997 y permitió a los jugadores explorar grandes' 
          'ciudades abiertas y llevar a cabo actividades delictivas. Desde entonces, la empresa' 
          'ha lanzado otros juegos muy exitosos, como Red Dead Redemption y Bully. Aunque ha sido'
          'criticada por su enfoque en temas violentos y controvertidos en algunos de sus juegos,'
          'Rockstar Games sigue siendo una de las empresas más importantes y respetadas en la' 
          'industria de los videojuegos.',
          textAlign: TextAlign.justify,
        ),
      ),
    );
  }

  
  Widget _crearTexto2() {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 40.0),
        child: Text(
          'La misión de Rockstar Games es crear experiencias de entretenimiento únicas e inolvidables,'
          'mediante la combinación de tecnología de vanguardia, diseño innovador y narrativa ' 
          'profunda y compleja. La empresa busca ofrecer juegos de alta calidad que desafíen a los' 
          'jugadores y los sumerjan en mundos virtuales complejos y emocionantes. Rockstar Games ' 
          'se ha comprometido a mantener altos estándares de calidad en todos sus juegos y a ' 
          'garantizar que sus productos sean accesibles y satisfactorios para una amplia audiencia en' 
          'todo el mundo. Además, la empresa ha demostrado un compromiso con la innovación '
          'constante y la evolución de la industria de los videojuegos a lo largo del tiempo.',
          textAlign: TextAlign.justify,
        ),
      ),
    );
  }
  
  Widget _crearTexto3() {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 40.0),
        child: Text(
          'La visión de Rockstar Games es seguir siendo un líder en la industria de los videojuegos '
          'mediante la creación de experiencias de entretenimiento inolvidables e innovadoras para ' 
          'una audiencia global. La empresa se ha comprometido a utilizar la tecnología más avanzada ' 
          'y el diseño más innovador para ofrecer juegos de alta calidad que desafíen a los jugadores y ' 
          'los sumerjan en mundos virtuales complejos y emocionantes.',
          textAlign: TextAlign.justify,
        ),
      ),
    );
  }
  
  Widget _crearText4() {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 40.0),
        child: Text(
          '1.-Creatividad e innovación\n'
          '\n' 
          '2.- Calidad\n' 
          '\n' 
          '3.-Pasión por el entretenimiento interactivo\n' 
          '\n' 
          '4.-Respeto por la diversidad\n'
          '\n'
          '5.-Responsabilidad social\n' ,
          textAlign: TextAlign.left,
        ),
        
      ),
    );
  }
}




