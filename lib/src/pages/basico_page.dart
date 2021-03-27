import 'package:flutter/material.dart';

class BasicoPage extends StatelessWidget {
  final styleTitle = TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold);
  final styleSubtitle = TextStyle(fontSize: 18.0, color: Colors.grey);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            _image(),
            _title(),
            _actions(),
            _textDescription(),
            _textDescription(),
            _textDescription(),
            _textDescription(),
            _textDescription(),
          ],
        ),
      ),
    );
  }

  Widget _image() {
    return Container(
      width: double.infinity,
      child: Image(
        height: 180.0,
        fit: BoxFit.cover,
        image: NetworkImage(
            'https://cdn2.mediotiempo.com/uploads/media/2021/03/26/hierve-agua-permitira-gente-comunidad.jpg'),
      ),
    );
  }

  Widget _title() {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 20.0),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Hierve el Agua', style: styleTitle),
                  SizedBox(height: 7.0),
                  Text('Visita las aguas termales', style: styleSubtitle)
                ],
              ),
            ),
            Icon(
              Icons.star,
              color: Colors.red[300],
              size: 30.0,
            ),
            Text(
              '41',
              style: TextStyle(fontSize: 20.0),
            )
          ],
        ),
      ),
    );
  }

  Widget _actions() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _actionIcon(Icons.call, 'CALL'),
        _actionIcon(Icons.near_me, 'ROUTE'),
        _actionIcon(Icons.share, 'SHARE'),
      ],
    );
  }

  Widget _actionIcon(IconData icon, String text) {
    return Column(
      children: [
        Icon(icon, color: Colors.blue, size: 40.0),
        SizedBox(height: 5.0),
        Text(text, style: TextStyle(fontSize: 15.0, color: Colors.blue)),
      ],
    );
  }

  _textDescription() {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 30.0),
        child: Text(
          'Hierve el Agua es un sistema de cascadas petrificadas, formadas por carbonato de calcio. Las cascadas son de origen natural y se formaron hace miles de años, por el escurrimiento de agua con alto contenido de minerales. El lugar se ubica a unos 70 km de la ciudad de Oaxaca, en la población de San Isidro Roaguía, municipio de San Lorenzo Albarradas, estado de Oaxaca, en México, en las cercanías de la zona arqueológica de Mitla y a 630 km de la Ciudad de México. Aún no ha cuenta con alguna categoría de protección, cómo área natural protegida o reserva de la biosfera.',
          textAlign: TextAlign.justify,
        ),
      ),
    );
  }
}
