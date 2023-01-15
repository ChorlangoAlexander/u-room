import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:room/Screens/Home.dart';
import 'package:room/Screens/Mensajes.dart';
import 'package:room/Screens/Perfil.dart';
import 'package:room/Utils/NavBar.dart';

class BNavigattor extends StatefulWidget {
  BNavigattor({Key? key}) : super(key: key);

  @override
  State<BNavigattor> createState() => _BNavigattorState();
}

class _BNavigattorState extends State<BNavigattor> {
  int _paginaActual = 0;
  List<Widget> _paginas = [
    Home(),
    MensajesScreen(),
    MensajesScreen(),
    PerfilScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavBar(),
      appBar: AppBar(
        flexibleSpace: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/2.jpe g'),
                fit: BoxFit.cover,
                colorFilter:
                    ColorFilter.mode(Colors.amber.shade300, BlendMode.darken)),
          ),
        ),
      ),
      body: _paginas[_paginaActual],
      bottomNavigationBar: Container(
        child: CurvedNavigationBar(
          color: Colors.green,
          backgroundColor: Colors.transparent,
          index: _paginaActual,
          onTap: (index) {
            setState(() {
              _paginaActual = index;
            });
          },
          items: [
            Icon(Icons.home, size: 30, color: Colors.white),
            Icon(Icons.messenger_rounded, size: 30, color: Colors.white),
            Icon(Icons.notifications, size: 30, color: Colors.white),
            Icon(Icons.person, size: 30, color: Colors.white),
          ],
        ),
      ),
    );
  }
}
