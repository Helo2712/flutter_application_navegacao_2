// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'receitas_lista.dart';
import 'detalhes_receita.dart';
import 'contato.dart';
import 'receita.dart';
class Myreceitas extends StatefulWidget {
  const Myreceitas({super.key});

  @override
  State<Myreceitas> createState() => _MyreceitasState();
}

class _MyreceitasState extends State<Myreceitas> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(image: AssetImage('assets/images/cute_cake_background_1909.jpg'),
          fit: BoxFit.cover,
          )
        ),
        child: Column(
          children: <Widget>[
            
            
            SizedBox(height: 450),
            Expanded(
              child: GridView.count(
                crossAxisCount: 3,
                padding: EdgeInsets.all(10.0),
                children: <Widget>[
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ReceitasListaPage()),
                      );
                    },
                    child: Column(
                      children: <Widget>[
                        Image.asset('assets/images/cupcake2.png', height: 80),
                        SizedBox(height: 5),
                        Text('Cupcake', style: TextStyle(fontSize: 16)),
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => DetalhesReceitaPage(receita: Receita('Bolo de Chocolate', 'Delicioso bolo de chocolate.'))),
                      );
                    },
                    child: Column(
                      children: <Widget>[
                        Image.asset('assets/images/bolo.png', height: 80),
                        SizedBox(height: 5),
                        Text('Bolos e tortas', style: TextStyle(fontSize: 16)),
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ContatoPage()),
                      );
                    },
                    child: Column(
                      children: <Widget>[
                        Image.asset('assets/images/pao.png', height: 80),
                        SizedBox(height: 5),
                        Text('Pães', style: TextStyle(fontSize: 16)),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      
    );
  }
}