import 'package:flutter/material.dart';

class ListGame extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("Daftar Game"),
        backgroundColor: Color(0xff660000),
      ),
      body: new ListView(
        children: <Widget>[
          new ListItem(nama: "Dota 2"),
          new ListItem(nama: "Dragon Nest"),
          new ListItem(nama: "Rainbow Six"),
          new ListItem(nama: "PUBG"),
          new ListItem(nama: "Call Of Duty"),
          new ListItem(nama: "Monster Hunter"),
          new ListItem(nama: "Counter Strike GO"),
          new ListItem(nama: "Pokemon GO")
        ],
      ),
    );
  }
}

class ListItem extends StatelessWidget {
  ListItem({this.nama});

  final String nama;

  @override
  Widget build(BuildContext context){
    return new Container(
        padding: new EdgeInsets.all(16.0),
        child: new Center(
          child: new Row(
            children: <Widget>[
              new Icon(Icons.favorite, size: 50,),
              new Container(
                margin: EdgeInsets.only(left: 16.0,right: 16.0),
                child: new Center(
                  child: new Column(
                    children: <Widget>[
                      Text(nama, style: new TextStyle(fontSize: 18.0)),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}