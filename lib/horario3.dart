import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Horario3 extends StatefulWidget {
  const Horario3({super.key});

  @override
  State<Horario3> createState() => _Horario1State();
}

class _Horario1State extends State<Horario3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text("Linha 3 - 626",style: TextStyle(color: Colors.white),),
        ),
        backgroundColor: Colors.orange,
      ),
      body: Container(
        width: 550,
        height: 550,
        child: Image.asset(
            'lib/img/linha 3.png',
            fit: BoxFit.contain,
          ),
      ),
    );
  }
}