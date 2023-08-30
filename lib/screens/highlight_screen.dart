import 'package:flutter/material.dart';

class HighLight extends StatelessWidget {
  const HighLight({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HighLight'),
        backgroundColor: Colors.purple,
        iconTheme: IconThemeData(color: Colors.white),
      ),
    );
  }
}
