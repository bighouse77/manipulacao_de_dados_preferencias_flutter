// ignore_for_file: file_names, prefer_const_constructors, prefer_const_literals_to_create_immutables, deprecated_member_use, prefer_final_fields

// salvar dados diretamente no aparelho do usuário!

import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextEditingController _controllerCampo = TextEditingController();

  _salvar() {}

  _recuperar() {}

  _remover() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Manipulação de dados"),
      ),
      body: Container(
        padding: EdgeInsets.all(32),
        child: Column(
          children: [
            Text(
              "valor",
              style: TextStyle(fontSize: 20),
            ),
            TextField(
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                labelText: "Digite algo",
              ),
              style: TextStyle(
                fontSize: 20,
              ),
              controller: _controllerCampo,
            ),
            Row(
              children: [
                RaisedButton(
                    color: Colors.blue,
                    child: Padding(
                      padding: const EdgeInsets.all(15),
                      child: Text(
                        "Salvar",
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      ),
                    ),
                    onPressed: _salvar),
                RaisedButton(
                    color: Colors.blue,
                    child: Padding(
                      padding: const EdgeInsets.all(15),
                      child: Text(
                        "Recuperar",
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      ),
                    ),
                    onPressed: _recuperar),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
