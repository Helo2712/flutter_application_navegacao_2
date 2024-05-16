import 'package:flutter/material.dart';
import 'package:flutter_application_navegacao_2/paginicial.dart';
import 'receitas_lista.dart';
import 'detalhes_receita.dart';
import 'contato.dart';
import 'receita.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Myreceitas(),
    );
  }
}
class HomePage extends StatelessWidget {
  final List<Receita> receitas = [
    Receita('Cupcake de Chocolate', 'Delicioso cupcake de chocolate.'),
    Receita('Bolo de Cenoura', 'Bolo de cenoura com cobertura de chocolate.'),
    Receita('Pão Caseiro', 'Pão caseiro fresquinho.'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Minha Confeitaria'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            SizedBox(height: 20),
            Image.asset('assets/images/bolo.png', height: 200),
            SizedBox(height: 20),
            Expanded(
              child: GridView.count(
                crossAxisCount: 3,
                padding: EdgeInsets.all(10.0),
                children: <Widget>[
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => DetalhesReceitaPage(receita: receitas[0])),
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

