import 'package:flutter/material.dart';
import 'package:doglife/pages/reset-password.page.dart';
// import 'package:doglife/pages/';

class LoginPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(//permite appbar e body, neste caso sem appbar
      body: Container(
        padding: EdgeInsets.only(//caso todos paddings fossem iguais, seria .all no lugar de .only
          top: 30,
          left: 40,
          right: 40,
        ),
        color: Colors.white,
        child: ListView(//para o teclado não sobresair os itens da tela 
          children: <Widget>[
            SizedBox(//usado para definir o tamanho
              width: 128,
              height: 128,
              child: Image.asset("assets/logo.png"),//necessário fazer os imports no puspec.yaml
            ),

            SizedBox(//pode ser utilizado Divider também.
              height: 20,//espaçamento entre a imagem e inputs
            ),

            TextFormField(//input de E-MAIL
              keyboardType: TextInputType.emailAddress,//define o tipo de teclado
              decoration: InputDecoration(
                labelText: "E-mail",//placeholder do input
                labelStyle: TextStyle(
                  color: Colors.black38,//cor escura acinzentado
                  fontWeight: FontWeight.w400,//Fonte quase negrito
                  fontSize: 20,//tamanho
                )
              ),
              style: TextStyle(
                fontSize: 20,
              ),//caixa de texto da label
            ),

            SizedBox(//espaçamento entre campos
              height: 10,//espaçamento entre a imagem e inputs
            ),

            TextFormField(//input SENHA
              keyboardType: TextInputType.text,//define o tipo de teclado
              obscureText: true, //oculta valores com asteriscos
              decoration: InputDecoration(
                labelText: "Senha",//placeholder do input
                labelStyle: TextStyle(
                  color: Colors.black38,//cor escura acinzentado
                  fontWeight: FontWeight.w400,//Fonte quase negrito
                  fontSize: 20,//tamanho
                )
              ),
              style: TextStyle(//caixa de texto da label
                fontSize: 20,
              ),
            ),


            Container(
              height: 40,
              alignment: Alignment.centerRight,//Alinha centro direita
              child: FlatButton(//Tipo de botão
                child: Text(
                  "Recuperar Senha",
                  // textAlign: TextAlign.right,
                ),
                onPressed: () {
                  Navigator.push( //Ao clicar, encaminha para outra página
                    context, 
                    MaterialPageRoute(
                      builder: (context) => ResetPasswordPage(), 
                    ),
                  );
                },
              )
            ),

            SizedBox(
              height: 20,
            ),

            //para criar um fundo dinâmico, usamos um container e inserimos o botão internamente
            //dentro do container vai o buttom

            Container(//Container para Botão login
              height: 60,
              alignment: Alignment.centerLeft,
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
                borderRadius: BorderRadius.all(
                  Radius.circular(5), 
                ),
              ),

              child: SizedBox.expand( //toma todo conteúdo do container
                child: FlatButton(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,//cria espaçamento usado internamente para imagem e texto
                    children: <Widget>[
                      Text(
                        "Login",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 20,
                        ),
                        textAlign: TextAlign.left,
                      ),
                      Container(
                        child: SizedBox(
                          child: Image.asset("assets/bone.png"),
                          height: 28,
                          width: 28,
                        )
                      )
                    ],
                  ),
                  onPressed: () => {},
                ),
              ),
            ),

            SizedBox(//Espaçamento entre login e facebook
              height: 10,
            ),

            Container(//Container para botão do facebook.
              height: 60,
              alignment: Alignment.centerLeft,
              decoration: BoxDecoration(//permite fazer as bordas redondas em 'borderRadius'
                color: Color(0xff3c5a99),                  
                borderRadius: BorderRadius.all(
                  Radius.circular(5), 
                ),
              ),

              child: SizedBox.expand( //toma todo conteúdo do container
                child: FlatButton(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,//cria espaçamento usado internamente para imagem e texto
                    children: <Widget>[
                      Text(
                        "Login com Facebook",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 20,
                        ),
                        textAlign: TextAlign.left,
                      ),
                      Container(
                        child: SizedBox(
                          child: Image.asset("assets/fb-icon.png"),
                          height: 28,
                          width: 28,
                        )
                      )
                    ],
                  ),
                  onPressed: () => {},
                ),
              ),
            ),

            SizedBox(//Espaçamento para cadastre-se 
              height: 10,
            ),

            Container(//Container para cadastre-se.
              height: 40,
              child: FlatButton(
                child: Text(
                  "Cadastre-se",
                  textAlign: TextAlign.center,
                ),
                onPressed: () => {},
              ),
            ),
          
          ],
        ),
      ),
    );
  }
}