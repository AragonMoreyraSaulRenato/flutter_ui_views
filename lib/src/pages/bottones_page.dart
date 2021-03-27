import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';

class BottonesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          _background(),
          SingleChildScrollView(
            child: Column(
              children: [
                _header(),
                _gridButtons(),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: _bottomNavBar(),
    );
  }

  Widget _bottomNavBar() {
    return BottomNavigationBar(
      backgroundColor: Color.fromRGBO(55, 57, 84, 1.0),
      unselectedItemColor: Color.fromRGBO(116, 117, 152, 1.0),
      selectedItemColor: Color.fromRGBO(241, 142, 172, 1.0),
      showSelectedLabels: false,
      showUnselectedLabels: false,
      items: [
        BottomNavigationBarItem(
          label: '',
          icon: Icon(Icons.calendar_today_outlined, size: 30.0),
        ),
        BottomNavigationBarItem(
          label: '',
          icon: Icon(Icons.bubble_chart_outlined, size: 30.0),
        ),
        BottomNavigationBarItem(
          label: '',
          icon: Icon(Icons.supervised_user_circle_outlined, size: 30.0),
        ),
      ],
    );
  }

  Widget _background() {
    final gradient = Container(
      height: double.infinity,
      width: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: FractionalOffset(0.0, 0.5),
          end: FractionalOffset(0.0, 1.0),
          colors: [
            Color.fromRGBO(52, 54, 101, 1.0),
            Color.fromRGBO(35, 37, 57, 1.0),
          ],
        ),
      ),
    );

    final pinkBox = Positioned(
      top: -100.0,
      left: -20.0,
      child: Transform.rotate(
        angle: -pi / 5.0,
        child: Container(
          height: 360.0,
          width: 360.0,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromRGBO(236, 98, 188, 1.0),
                Color.fromRGBO(241, 142, 172, 1.0),
              ],
            ),
            borderRadius: BorderRadius.circular(90.0),
          ),
        ),
      ),
    );

    return Stack(
      children: [
        gradient,
        pinkBox,
      ],
    );
  }

  Widget _header() {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Classify transaction',
              style: TextStyle(
                color: Colors.white,
                fontSize: 28.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              'Classify this transaction into a particular category',
              style: TextStyle(
                color: Colors.white,
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _gridButtons() {
    return Table(
      children: [
        TableRow(
          children: [
            _roundedButton(Colors.pink, Icons.settings_outlined, 'Settings'),
            _roundedButton(Colors.orange, Icons.call_outlined, 'Call'),
          ],
        ),
        TableRow(
          children: [
            _roundedButton(Colors.red, Icons.picture_as_pdf, 'Books'),
            _roundedButton(Colors.green, Icons.insert_drive_file, 'My Drive'),
          ],
        ),
        TableRow(
          children: [
            _roundedButton(
                Colors.greenAccent, Icons.multiline_chart, 'Analytics'),
            _roundedButton(Colors.blue[300], Icons.exit_to_app, 'Exit'),
          ],
        ),
        TableRow(
          children: [
            _roundedButton(
                Colors.purpleAccent, Icons.movie_filter, 'Entrertaiment'),
            _roundedButton(Colors.cyan, Icons.exit_to_app, 'Exit'),
          ],
        ),
      ],
    );
  }

  Widget _roundedButton(Color color, IconData icon, String text) {
    return Container(
      height: 160.0,
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: Color.fromRGBO(62, 66, 107, 0.7),
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20.0),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                backgroundColor: color,
                radius: 35.0,
                child: Icon(
                  icon,
                  color: Colors.white,
                  size: 30.0,
                ),
              ),
              SizedBox(height: 20.0),
              Text(
                text,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(color: color, fontSize: 16.0),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
