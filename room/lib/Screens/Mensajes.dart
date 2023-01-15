import 'package:flutter/material.dart';

class MensajesScreen extends StatefulWidget {
  // const MensajesScreen({super.key});

  @override
  State<MensajesScreen> createState() => _MensajesScreenState();
}

class _MensajesScreenState extends State<MensajesScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text('Chat'),
      ),
    );
  }
}
