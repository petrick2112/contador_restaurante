import 'package:flutter/material.dart';

void main() {

  runApp(MaterialApp(
      title: "Contador",

      home: Home() ));
}

  class Home extends StatefulWidget {
    @override
    _HomeState createState() => _HomeState();
  }


class _HomeState extends State<Home> {

  int _pessoas = 0;
  String _informa;

  void _alterarPessoa(int valor){
    setState(() {

      _pessoas = _pessoas + valor;

            if (_pessoas < 10) {
              _informa = "Pode Entrar!";
            }
              else {
              _informa = "O estabelecimento está cheio!";
              _pessoas = 10;
            }
              
            if (_pessoas <= 0) {
              _pessoas = 0;
              _informa = "O estabelecimento está vazio. Pode entrar!";
            }
        }
    );
  }

  @override
  Widget build(BuildContext context) {

    return Stack(

      children: <Widget>[

        Image.asset("images/restaurant.jpg",
          fit: BoxFit.cover,
          height: 1000.0,
        ),

        Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children: <Widget>[

            Text("Pessoas: $_pessoas",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  decoration: TextDecoration.none
              ),
            ),

            Row(mainAxisAlignment: MainAxisAlignment.center,

              children: <Widget>[

                TextButton(
                  child: Text("+1",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 40,
                    ),
                  ),
                  onPressed: () {
                    _alterarPessoa(1);
                  },
                ),

                TextButton(
                  child: Text("-1",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 40,
                    ),
                  ),
                  onPressed: () {
                    _alterarPessoa(-1);
                  },
                ),

              ],
            ),

            Text(_informa,
              style: TextStyle(
                  color: Colors.white,
                  fontStyle: FontStyle.italic,
                  fontSize: 30,
                  decoration: TextDecoration.none
              ),
            ),
          ],
        )

      ],
    );
  }
}

