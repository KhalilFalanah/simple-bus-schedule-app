import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:projetofinal/horario2.dart';
import 'package:projetofinal/horario3.dart';
import 'package:projetofinal/horario1.dart';

class Tela1 extends StatefulWidget {
  const Tela1({Key? key}) : super(key: key);

  @override
  State<Tela1> createState() => _Tela1State();
}

class _Tela1State extends State<Tela1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: const Text("New Journey")
        ),
        backgroundColor: Colors.orange,
      ),
 body: SingleChildScrollView(
  child: Column(
    children: <Widget>[
      Container(
        height: 250,
        width: double.infinity,
         child: Image.asset(
            'lib/img/fundo1.png',
            fit: BoxFit.cover,
          ),

      ),

  Center(
         child: Container(
          padding: EdgeInsets.only(top: 60),
           child: Row( 
                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                     children: [
                       Image.asset('lib/img/botao.png'),
                       Image.asset('lib/img/botao.png'),
                       Image.asset('lib/img/botao.png'),
                     ],
               ),
         ),
       ),
 Center(
         child: Container(
          padding: EdgeInsets.only(top: 50),
           child: Row(
                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                     children: [
                  ElevatedButton(
            style: ButtonStyle(
              padding: MaterialStateProperty.all(const EdgeInsets.all(10))
            ),
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=> Horario1()));
            },
             child: const Text(
              "Linha 1",
               style: TextStyle(
               fontSize: 15
            ),
           ),
          ),
          ElevatedButton(
            style: ButtonStyle(
              padding: MaterialStateProperty.all(const EdgeInsets.all(10))
            ),
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=> Horario2()));
            },
             child: const Text(
              "Linha 2",
               style: TextStyle(
               fontSize: 15
            ),
           ),
          ),
          ElevatedButton(
            style: ButtonStyle(
              padding: MaterialStateProperty.all(const EdgeInsets.all(10))
            ),
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=> Horario3()));
            },
             child: const Text(
              "Linha 3",
               style: TextStyle(
               fontSize: 15
            ),
           ),
          ),
                     ],
               ),
         ),
       ),
    ]
    ),

 )



    );
  }
}