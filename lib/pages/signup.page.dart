import 'package:flutter/material.dart';
import 'package:doglife/pages/reset-password.page.dart';

class SignupPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(
          top: 5, left: 40, right:40
        ),
        color: Colors.white,
        child: ListView(
          children: <Widget>[
            Container(
              width: 200,
              height: 200,
              alignment: Alignment(0.0, 1.15),// Alinhamento - 1 alinhará imagem na parte inferior
              decoration: new BoxDecoration(//permite inserir uma imagem como fundo do container
                image: new DecorationImage(
                  image: AssetImage("assets/profile-picture.png"),
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
                child: SizedBox.expand(
                  child: FlatButton(
                    child: Icon (
                      Icons.add_a_photo,
                      color: Colors.white,
                    ),
                    onPressed: () {},
                  ),
                ),
              ),
            ),

            SizedBox(
              height: 10
            ),
            TextFormField(
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                labelText: "Nome",
                labelStyle: TextStyle(
                  color: Colors.black38,//Cor cinza
                  fontWeight: FontWeight.w400,//Expessura
                  fontSize: 20,//Tamanho
                ),
              ),
              style: TextStyle(
                fontSize: 20
              ),
            ),

            SizedBox(
              height: 10
            ),
            TextFormField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                labelText: "E-Mail",
                labelStyle: TextStyle(
                  color: Colors.black38,//Cor cinza
                  fontWeight: FontWeight.w400,//Expessura
                  fontSize: 20,//Tamanho
                ),
              ),
              style: TextStyle(
                fontSize: 20
              ),
            ),

            SizedBox(
              height: 10
            ),
            TextFormField(
              keyboardType: TextInputType.text,
              obscureText: true,
              decoration: InputDecoration(
                labelText: "Senha",
                labelStyle: TextStyle(
                  color: Colors.black38,//Cor cinza
                  fontWeight: FontWeight.w400,//Expessura
                  fontSize: 20,//Tamanho
                ),
              ),
              style: TextStyle(
                fontSize: 20
              ),
            ),

            SizedBox(
              height: 20
            ),
            Container(
              height: 60,//Altura
              alignment: Alignment.centerLeft,//alinhamento ao centro na vertical e à esquerda na horizontal
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  stops: [0.3, 1],
                  colors: [
                    Color(0xfff58524),
                    Color(0xfff92b7f),
                  ],
                ),
                borderRadius: BorderRadius.all(
                  Radius.circular(5),//bordas arredondadas
                ),
              ),
              child: SizedBox.expand(//Expand toma todo o tamanho do container
                child: FlatButton(
                  child: Text(
                    "Cadastrar",      
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  onPressed: () => {},
                ),
              ),
            ),

            SizedBox(
              height: 10
            ),
            Container(
              height: 40,
              alignment: Alignment.center,
              child: FlatButton(
                child: Text(
                  "Cancelar" ,
                  textAlign: TextAlign.center,               
                ),
                onPressed: () => Navigator.pop(context, false),
              ),
            ),

          ],
        ),
      ),

    );
  }
}