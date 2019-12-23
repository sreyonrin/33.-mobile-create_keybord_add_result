
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(Letter());
class Letter extends StatefulWidget {
  @override
  _LetterState createState() => _LetterState();
}

class _LetterState extends State<Letter> {
  String _firstName ="";
  String _lastName ="";
  String _info ="";
  void register(){
    setState(() {
      _info = _firstName + "add" + _lastName;
    });
  }

  // String _firstName = "";
  // void showfirstName(String firstName){
  //   setState(() {
  //     _firstName = firstName;
  //   });
  // }

  // String _lastName = "";
  // void showlastName(String lastName){
  //   setState(() {
  //     _lastName = lastName;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("TextField"),
        ),
        body: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(30.0),
              child: TextField(
                // onChanged: showfirstName,
                onChanged: (String text){
                  _firstName = text;
                },
              ),
            ),
            Container(
              padding: EdgeInsets.all(30.0),
              child: TextField(             
                // onChanged:showlastName,
                onChanged: (String text){
                  _lastName = text;
                },
              ),
            ),
            // Text("First Name:"+ _firstName),
            // Text("Last Name:"+ _lastName),
            Container(
              width: 300.0,
              padding: EdgeInsets.only(bottom: 30.0),
              child: RaisedButton(
                onPressed: register,
                child: Text("Register" , style: TextStyle(color: Colors.purple),),
                color: Colors.yellow,
              ),
            ),
              Text( _info, style: TextStyle(fontSize: 30.0,color:Colors.green),),
          ],
        ),
      ),
    );
    
  }
}