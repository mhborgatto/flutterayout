import 'package:flutter/material.dart';
import 'package:flutterlayout/global.dart' as global;

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Scaffold(
        backgroundColor:global.globalcolor,
        body: Container(
          padding: EdgeInsets.only(
            top: 20,
            left: 40,
            right: 40,
          ),
          child: ListView(
            children: <Widget>[
              SizedBox(
                width: 128,
                height: 128,
                child: Image.asset("assets/logo.png"),
              ),
              Divider(),
              Text(
                "Força de Vendas",
                style: TextStyle(
                  fontFamily: 'Lobster',
                  fontSize: 40.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              SizedBox(
                height: global.heightsizedbox,
              ),
              TextFormField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.business),
                  labelText: "CNPJ",
                  hintText: "00.000.000/0000-00",
                  border: OutlineInputBorder(),
                  labelStyle: TextStyle(
                    color: global.colorlabelstyle,
                    fontWeight: FontWeight.w400,
                    fontSize: global.fontsize,
                  ),
                ),
                style: TextStyle(
                  fontSize: global.fontsize,
                  color: global.colortextstyle,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              TextFormField(
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.people, color: Colors.red),
                  labelText: "Usuário",
                  labelStyle: TextStyle(
                    color: Colors.black26,
                    fontWeight: FontWeight.w400,
                    fontSize: global.fontsize,
                  ),
                ),
                style: TextStyle(
                  fontSize: global.fontsize,
                  color: global.colortextstyle,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              TextFormField(
                keyboardType: TextInputType.text,
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.vpn_key),
                  labelText: "Senha",
                  labelStyle: TextStyle(
                    color: global.colorlabelstyle,
                    fontWeight: FontWeight.w400,
                    fontSize: global.fontsize,
                  ),
                ),
                style: TextStyle(
                  fontSize: global.fontsize,
                  color: global.colortextstyle,
                ),
              ),
              Container(
                height: 40,
                alignment: Alignment.centerRight,
                child: FlatButton(
                  child: Text(
                    "Recuperar Senha",
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.black26,
                    ),
                  ),
                  onPressed: () {},
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 60,
                alignment: Alignment.centerLeft,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    stops: [0.3, 1],
                    colors: [
                      Color(0xFFff6659),
                      Color(0xFF9a0007),
                    ],
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(8),
                  ),
                ),
                child: SizedBox.expand(
                  child: FlatButton(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          "Login",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Colors.white70,
                          ),
                        ),
                        Container(
                          child: Icon(
                            Icons.input,
                            color: Colors.white,
                            size: 30.0,
                          ),
                        )
                      ],
                    ),
                    onPressed: () => {},
                  ),
                ),
              ),
            ],
          ),
        ),
      )
    );
  }
}
