import 'package:flutter/material.dart';
// import 'package:doglife/pages/';

class SignupPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(
          top: 10, left: 40, right:40
        ),
        color: Colors.white,
        child: ListView(
          children: <Widget>[
            Container(
              width: 200,
              height: 200,
              alignment: Alignment(0.0, 1.15),
              decoration: new BoxDecoration(//permite inserir uma imagem como fundo do container
                image: new DecorationImage(
                  image: AssetImage("assest/profile-picture.png"),
                  fit: BoxFit.fitHeight,//Como a imagem se comporta dentro do container
                ),
              ),
              child: Container(
                height: 56,
                width: 56,
                alignment: Alignment.center,
                decoration: BoxDecoration(//permite fazer as bordas redondas em 'borderRadius'
                  gradient: LinearGradient(//Fundo gradiente
                    begin: Alignment.topLeft, //inicia no topo da esquerda
                    end: Alignment.bottomRight,//termina no fim da direita
                    stops: [0.3, 1],// começa em 0.3, termina em 1, e qtd de números de acordo com qtd de cores
                    colors: [
                      Color(0xfff58524),
                      Color(0xfff92b7f),
                    ],
                  ),
                  border: Border.all(//Borda neste caso branca 
                    width: 4.0,
                    color: Colors.white,
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(56), 
                  ),
                ),
              ),
            )
          ],
        ),
      ),

    );
  }
}