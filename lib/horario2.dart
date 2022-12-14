import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Horario2 extends StatefulWidget {
  const Horario2({super.key});

  @override
  State<Horario2> createState() => _Horario1State();
}

class _Horario1State extends State<Horario2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text("Linha 2 - R62",style: TextStyle(color: Colors.white),),
        ),
        backgroundColor: Colors.orange,
      ),
      body: Container(
        width: 550,
        height: 550,
        child: Image.asset(
            'lib/img/linha 2.png',
            fit: BoxFit.contain,
          ),
      ),
    );
  }
}