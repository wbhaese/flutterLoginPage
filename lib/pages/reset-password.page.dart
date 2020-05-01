import 'package:flutter/material.dart';

class ResetPasswordPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,//background AppBar
        leading: IconButton(//leading: Posição à esquerda da tela
          icon: Icon(Icons.arrow_back),//ìcone para voltar 
          color: Colors.black38,//Cor do ícone
          onPressed: () => Navigator.pop(context, false),//.pop 'desmancha' tela atual para, neste caso, voltar a anterior  
        ),
      ),

      body: Container(
        padding: EdgeInsets.only(//Espaçamento interno 
          top: 20,
          left: 40,
          right: 40,
        ),
        color: Colors.white,// Background body
        child: ListView(//não permite que o teclado sobreponha os itens da tela
          children: <Widget>[
            SizedBox(//Companente com tamanho na tela
              width: 170,
              height: 170,
              child: 
                Image.asset("assets/reset-password-icon.png"),
            ),
            SizedBox(//Espaçamento entre 
              height: 20,
            ),
            Text(
              "Esqueceu sua Senha?",
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.w500,//Espessura da fonte, tipo bold 
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Por favor, informe o E-mail associado a sua conta para enviarmos um link com instruções de restauração para o mesmo.",
              style: TextStyle(
                fontSize: 16,//Tamanho
                fontWeight: FontWeight.w400,//Espessura da fonte
              ),
              textAlign: TextAlign.center,//Alinhamento
            ),
            SizedBox(
              height: 10,
            ),
            TextFormField(
              keyboardType: TextInputType.emailAddress,//Tipo de teclaod
              decoration: InputDecoration(
                labelText: "E-mail",//Placeholder
                labelStyle: TextStyle(//Style texto digitado
                  color: Colors.black38,
                  fontWeight: FontWeight.w400,
                  fontSize: 18,
                ),
              ),
              style: TextStyle(
                fontSize: 18,
                color: Colors.deepOrange,                
              ),
            ),

            SizedBox(
              height: 20,
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
                    "Enviar",      
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
              height: 20,
            ),
          ],
        ),
      ),
      
      
    );
  }
}