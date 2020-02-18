import 'package:flutter/material.dart';

/// Construct a color from a hex code string, of the format #RRGGBB.
Color hexToColor(String code) {
  return new Color(int.parse(code.substring(1, 7), radix: 16) + 0xFF000000);
}

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          padding: EdgeInsets.only(
            top: 60,
            left: 40,
            right: 40,
          ),
          color: Colors.white10,
          child: ListView(
            children: <Widget>[
              SizedBox(
                width: 128,
                height: 128,
                child: Image.asset("assets/logo.png"),
              ),
              SizedBox(height: 20,
              ),
              TextFormField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: "CNPJ",
                  labelStyle: TextStyle(
                    color: Colors.black26,
                    fontWeight: FontWeight.w400,
                    fontSize:20,
                  ),
                ),
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black54,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              TextFormField(
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  labelText: "Usuário",
                  labelStyle: TextStyle(
                    color: Colors.black26,
                    fontWeight: FontWeight.w400,
                    fontSize:20,
                  ),
                ),
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black54,
                ),
              ),
              SizedBox(
                height: 10,
              ),              
              TextFormField(
                keyboardType: TextInputType.text,
                obscureText: true,
                decoration: InputDecoration(
                  labelText: "Senha",
                  labelStyle: TextStyle(
                    color: Colors.black26,
                    fontWeight: FontWeight.w400,
                    fontSize: 20,
                  ),
                 ),
                 style: TextStyle(
                   fontSize: 20,
                   color:Colors.black54,
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
                    stops: [0.3,1],
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
    );
  }
}