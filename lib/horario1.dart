import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Horario1 extends StatefulWidget {
  const Horario1({super.key});

  @override
  State<Horario1> createState() => _Horario1State();
}

class _Horario1State extends State<Horario1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text("Linha 1 - 762",style: TextStyle(color: Colors.white), ),
        ),
        backgroundColor: Colors.orange,
      ),
      body: Container(
        width: 550,
        height: 550,
        child: Image.asset(
            'lib/img/linha 1.png',
            fit: BoxFit.contain,
          ),
      ),
    );
  }
}