import 'package:flutter/material.dart';

class BasicoPage extends StatelessWidget {

  final estiloTitulo = TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold);
  final estiloSubtitulo = TextStyle(fontSize: 18.0, color: Colors.grey);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[

            _crearImagen(),

            _crearTitulo(),

            _crearAcciones(),

            _crearTexto(),
            _crearTexto(),
            _crearTexto(),
            _crearTexto(),

          ],
        ),
      )
    );
  }

  Widget _crearImagen() {
    return Container(
      width: double.infinity,
      child: Image(
        image: NetworkImage('https://images.pexels.com/photos/814499/pexels-photo-814499.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500'),
        height: 200.0,
        fit: BoxFit.cover,
      ),
    );
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
                  Text('Lago con un puente', style: estiloTitulo),
                  SizedBox(height: 7.0),
                  Text('Un lago en Alemania', style: estiloSubtitulo)
                ],
              ),
            ),

            Icon(Icons.star, color: Colors.red, size: 30.0),
            Text('41', style: TextStyle(fontSize: 20.0))
          ],
        ),
      ),
    );
  }

  Widget _crearAcciones() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        _accion(icon: Icons.call, texto: 'Call'),
        _accion(icon: Icons.near_me, texto: 'Router'),
        _accion(icon: Icons.share, texto: 'Share'),
      ],
    );
  }

  Widget _accion({IconData icon, String texto}) {
    return Column(
      children: <Widget>[
        Icon(icon, color: Colors.blue, size: 40.0),
        SizedBox(height: 5.0),
        Text(texto, style: TextStyle(fontSize: 15.0, color: Colors.blue))
      ],
    );
  }

  Widget _crearTexto() {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 40.0),
        child: Text(
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer pellentesque justo porttitor, pulvinar justo eu, tristique nisi. Sed quis turpis risus. In finibus mi eget augue maximus mollis. Nam id suscipit ex, vitae pellentesque justo. Ut eu enim mauris. Nunc dictum felis a leo tincidunt, eu aliquam libero dapibus. Pellentesque bibendum sodales mattis. Nulla sit amet iaculis felis. Aenean sed blandit nunc. Sed aliquet id ipsum non condimentum. Donec non dui non leo rhoncus commodo. Vestibulum pulvinar accumsan tortor. Aenean vitae erat a quam congue dignissim. Nunc eu condimentum sem, a rhoncus enim. Nullam quis nisi posuere lacus auctor molestie. Sed eleifend molestie mauris, lobortis ultrices odio interdum eu.',
          textAlign: TextAlign.justify,
        ),
      ),
    );
  }
}