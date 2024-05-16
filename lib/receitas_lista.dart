import 'package:flutter/material.dart';
import 'receita.dart';

class ReceitasListaPage extends StatelessWidget {
  final List<Receita> receitas = [
    Receita('Ingredientes', '3 gemas , 1 colher de sopa de essência de baunilha,1 xícara de óleo,3 e 1/2 xícaras de farinha de trigo,Recheio e cobertura a gosto, aqui usamos doce de leite,2 xícaras de açúcar,250 ml de leite,3 claras em neve,1 colher (sopa) de fermento'),
    Receita('Modo de preparo', 'Bata a gema, o açúcar e a baunilha na batedeira,em seguida, acrescente o leite e o óleo e bata mais um pouco.Adicione as claras em neve, a farinha de trigo e o fermento e bata mais com o auxílio de um fouet (não bata na batedeira para que o fermento possa atuar),disponha a massa em forminhas próprias para cupcakes (sem encher muito) e leve ao forno até dourar,pós assado e frios, faça um buraco no centro de cada cupcake,reserve a tampinha,coloque o recheio escolhido em um saco de confeitar e junte-o no furo, no centro do cupcake,coloque a tampinha e cubra o cupcake com o a cobertura desejada e coloque confeitos de sua preferência.'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Receita de Cupcake'),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: receitas.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(receitas[index].nome),
            subtitle: Text(receitas[index].descricao),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pop(context);
        },
        child: Icon(Icons.arrow_back),
      ),
    );
  }
}
