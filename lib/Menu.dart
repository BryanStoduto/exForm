import 'package:flutter/material.dart';

class Menu extends StatefulWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  _MenuState createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: Text("                                                                                                                           Formulário"),
      ),
      body: Container(
      child: SingleChildScrollView(
        padding: EdgeInsets.all(30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget> [
            Padding(
              padding: EdgeInsets.all(30),
              child: Text(
                "Cadastro",
                style: TextStyle(
                  color:Colors.blueGrey,
                    fontSize: 40,
                    fontWeight: FontWeight.normal
                ),
              ),
            ),
            TextField(
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
              prefixIcon: Icon(
              Icons.account_circle,
              color: Colors.black,
              ),
                  labelText: "Digite seu Nome"
              ),
              style: TextStyle(
                  fontSize: 18
              ),
              //controller: _controllerUsuario,
            ),
            TextField(
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                prefixIcon: Icon(
                Icons.mail_outline,
                color: Colors.black,
                ),
                  labelText: "Digite seu email"
                  ),
              style: TextStyle(
                  fontSize: 18
              ),
              //controller: _controllerUsuario,
            ),
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                prefixIcon: Icon(
                Icons.calendar_today_sharp,
                color: Colors.black,
                ),
                  labelText: "Digite sua Idade"
              ),
              style: TextStyle(
                  fontSize: 18
              ),
              //controller: _controllerUsuario,
            ),
                  TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                prefixIcon: Icon(
                Icons.add_location_outlined,
                color: Colors.black,
                ),
                  labelText: "Código postal"
              ),
              style: TextStyle(
                  fontSize: 18
              ),
              //controller: _controllerUsuario,
            ),
            CheckboxListTile(
                title: Text("Lembrar informações ?"),
                checkColor: Colors.blueGrey,
                controlAffinity:
                ListTileControlAffinity.platform,
                value: false,
                onChanged: (bool? value) {
                  setState(() {
                  });
                },
              ),
            Padding(
              padding: EdgeInsets.only(top: 40),
              child: 
              RaisedButton(
                  color: Colors.blueGrey,
                  textColor: Colors.white,
                  padding: EdgeInsets.all(15),
                  child: Text(
                    "Cadastrar",
                    style: TextStyle(
                        fontSize: 30
                    ),
                  ),
                  onPressed: (){}
              ),
            ),
          ],
        ),
       ),
      ),
    );
  }
  
  RaisedButton({required MaterialColor color, required Color textColor, required EdgeInsets padding, required Text child, required Null Function() onPressed}) {}
}