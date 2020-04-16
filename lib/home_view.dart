import 'package:flutter/material.dart';
import 'package:myaplication/profil_page.dart';
import 'package:myaplication/list_game.dart';

class HomePage extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<HomePage> {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: Text("Dashboard"), leading: Icon(Icons.home), backgroundColor: Color(0xff660000)),
      body: new Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text("Halo Selamat Datang di My List Game",
                style: new TextStyle(fontSize: 20.0)),
            ButtonTheme(
                minWidth: MediaQuery.of(context).size.width,
                child: new Container(
                  margin: const EdgeInsets.only(top: 8.0, left: 8.0, bottom: 8.0, right: 8.0),
                  child: new RaisedButton(
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context){
                          return ListGame();
                        }));
                      },
                      color: Color(0xff660000),
                      textColor: Colors.white,
                      child: Text("Daftar Game")),
                )
            ),
            ButtonTheme(
                minWidth: MediaQuery.of(context).size.width,
                child: new Container(
                  margin: const EdgeInsets.only(top: 8.0, left: 8.0, bottom: 8.0, right: 8.0),
                  child: new RaisedButton(
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context){
                          return ProfilPage();
                        }));
                      },
                      color: Color(0xff660000),
                      textColor: Colors.white,
                      child: Text("Profil")),
                )
            ),
          ],
        ),
      ),
    );
  }
}