import 'dart:html';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:projetofinal/tela1.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Tela De Login",
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: const MyLogin(),
    );
  }
}


class MyLogin extends StatefulWidget {
  const MyLogin({super.key});

  @override
  State<MyLogin> createState() => _MyLoginState();
}

class _MyLoginState extends State<MyLogin> {
   final TextEditingController _ctrlEmail = TextEditingController();
   final TextEditingController _ctrlPass = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
  preferredSize: Size.fromHeight(220.0),
  child: AppBar(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(
        bottom: Radius.circular(90),
      ),
    ),
    flexibleSpace: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
       Container(
         padding: const EdgeInsets.only(top: 50),
         child: Image.asset(
            'lib/img/asd.png',
            fit: BoxFit.contain,
            width: 120,
            height: 120,
          ),
       ),
      ],
    ),
      elevation: 0.0,
      backgroundColor: Color.fromARGB(164, 255, 153, 0),
      systemOverlayStyle: SystemUiOverlayStyle.dark,
  ),
),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[

// CAIXA DE TEXTO DO EMAIL

              Container(
              padding: const EdgeInsets.only(top: 50, bottom: 80, right: 50, left: 50 ),
              child: TextField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Color.fromARGB(94, 158, 158, 158),
                  hintText: "nome@exemplo.com",
                  labelText:"Email",
                  prefixIcon: Icon(Icons.email),
                  border: InputBorder.none,
                ),
                style: const TextStyle(
                  fontSize: 22
                ),
                controller: _ctrlEmail,
              ),
              ),

// CAIXA DE TEXTO DA SENHA

              Container(
                padding: const EdgeInsets.only(top: 3, bottom: 100, right: 50, left: 50 ),
                child: TextField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Color.fromARGB(94, 158, 158, 158),
                  labelText:"Senha",
                  prefixIcon: Icon(Icons.remove_red_eye_outlined),
                  border: InputBorder.none,
                ),
                style: const TextStyle(
                  fontSize: 22
                ),
                controller: _ctrlPass,
                obscureText: true,
              ),
              ),

// BOTÃO

              ElevatedButton(
            style: ButtonStyle(
              padding: MaterialStateProperty.all(const EdgeInsets.all(10))
            ),
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=> Tela1()));
            },
             child: const Text(
              "Login",
               style: TextStyle(
               fontSize: 15
            ),
           ),
          ),
            ],
          ),
        ) ,// ...
      );
    // 
  }
}