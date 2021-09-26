import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    title: "Contador",
    home: Home()
  ));
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  int _valor01 = 0;
  int _valor02 = 0;
  int _valor03 = 0;
  int _valorTotal = 0;
  double _media = 0;
  String _mediaString = "0";

  void _atualizaValor(int opc, int valor){
    setState(() {
      if (opc == 1){
        _valor01 += valor;
      }else if (opc == 2){
        _valor02 += valor;
      }else{
        _valor03 += valor;
      }
      _valorTotal = (_valor01 + _valor02 - _valor03);
      _media = (_valor01 + _valor02 + _valor03)/3;
      _mediaString = _media.toStringAsFixed(2);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/background.png"),
            fit: BoxFit.cover,
          ),
        ),
        width: double.infinity,
        child: Container(

          margin: EdgeInsets.only(left: 50, right: 50, top: 100, bottom: 100),
          decoration: BoxDecoration(
              color: Color.fromRGBO(0, 0, 0, 0.5),
              border: Border(
              top: BorderSide(width: 2, color: Colors.white),
              bottom: BorderSide(width: 2, color: Colors.white),
              right: BorderSide(width: 2, color: Colors.white),
              left: BorderSide(width: 2, color: Colors.white),
            )
          ),

          child: Column(
            //Centralizando na vertical e horizontal
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text("Higor Turetta",
                style: TextStyle(fontSize: 32,color: Colors.white),
              ),
              SizedBox(height: 50),
              Text("Valor 01 = $_valor01",
              style: TextStyle(fontSize: 22, color: Colors.white)
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  RaisedButton(
                      child: Text("+1",
                          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                      onPressed: (){
                        _atualizaValor(1, 1);
                      },
                    color: Colors.greenAccent,
                  ),
                  SizedBox(width: 10),
                  RaisedButton(
                    child: Text("-1",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                    onPressed: (){
                      _atualizaValor(1, -1);
                    },
                    color: Colors.redAccent,
                  )
                ],
              ),
              SizedBox(height: 20),
              Text("Valor 02 = $_valor02",
                  style: TextStyle(fontSize: 22, color: Colors.white)
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  RaisedButton(
                    child: Text("+1",
                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                    onPressed: (){
                      _atualizaValor(2, 1);
                    },
                    color: Colors.greenAccent,
                  ),
                  SizedBox(width: 10),
                  RaisedButton(
                    child: Text("-1",
                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                    onPressed: (){
                      _atualizaValor(2, -1);
                    },
                    color: Colors.redAccent,
                  )
                ],
              ),
              SizedBox(height: 20),
              Text("Valor 03 = $_valor03",
                  style: TextStyle(fontSize: 22, color: Colors.white)
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  RaisedButton(
                    child: Text("+1",
                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                    onPressed: (){
                      _atualizaValor(3, 1);
                    },
                    color: Colors.greenAccent,
                  ),
                  SizedBox(width: 10),
                  RaisedButton(
                    child: Text("-1",
                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                    onPressed: (){
                      _atualizaValor(3, -1);
                    },
                    color: Colors.redAccent,
                  )
                ],
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text("Valor total: $_valorTotal",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.red),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text("Média Geral: $_mediaString",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.blue),
                  ),
                ],
              ),
            ]
          ),
        ),
      ),
    );
  }
}
