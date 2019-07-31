import 'package:app_brazilian_storm_team/views/ClienteViews/lista_cliente_view.dart';
import 'package:app_brazilian_storm_team/views/ClienteViews/novo_cliente_view.dart';
import 'package:app_brazilian_storm_team/views/UsuarioViews/lista_usuarios_view.dart';
import 'package:app_brazilian_storm_team/views/login_view.dart';
import 'package:flutter/material.dart';
import 'dart:async';

class Menu extends StatefulWidget {
  @override
  _Menu createState() => new _Menu();
}

//State is information of the application that can change over time or when some actions are taken.
class _Menu extends State<Menu> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        brightness: Brightness.dark,
        backgroundColor: Color(0xFFFFFFFF),
        title: Center(
          child: Image.asset("assets/imagens/logo_mini_met_life.png",
              height: 35.0),
        ),
        iconTheme: IconThemeData(
          color: Colors.white,
        ),
        elevation: 0.5,
        textTheme: TextTheme(
            title: TextStyle(
          color: Colors.white,
          fontSize: 20.0,
        )),
        actions: <Widget>[
          _SelecionarTopoPopup(context),
        ],
      ),
      body: Form(
        child: Container(
          color: Color(0xFFf4f6f9),
          constraints: BoxConstraints(
            minHeight: MediaQuery
                .of(context)
                .size
                .height,
          ),
          child: SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.fromLTRB(10.0,20.0,10.0,20.0),
              child: Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Expanded(
                        child: InkWell(
                          onTap: () {

                          },
                          child: Card(
                            child: new Container(
                              padding: new EdgeInsets.all(32.0),
                              child: new Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Icon(
                                    Icons.phone,
                                    size: 30,
                                    color: Color(0xFF007bff),
                                  ),
                                  SizedBox(
                                    height: 8.0,
                                  ),
                                  Text(
                                    'AB Fone',
                                    style: TextStyle(
                                        fontSize: 17.0,
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xFF007bff)),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Card(
                          child: new Container(
                            padding: new EdgeInsets.all(32.0),
                            child: Column(
                              children: <Widget>[
                                Icon(
                                  Icons.calendar_today,
                                  size: 30,
                                  color: Color(0xFF007bff),
                                ),
                                SizedBox(
                                  height: 8.0,
                                ),
                                Text(
                                  'Agenda',
                                  style: TextStyle(
                                      fontSize: 17.0,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xFF007bff)),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Expanded(
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                new MaterialPageRoute(
                                    builder: (context) => new ListaUsuariosView()));
                          },
                          child: Card(
                            child: new Container(
                              padding: new EdgeInsets.all(32.0),
                              child: new Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Icon(
                                    Icons.content_paste,
                                    size: 30,
                                    color: Color(0xFF007bff),
                                  ),
                                  SizedBox(
                                    height: 8.0,
                                  ),
                                  Text(
                                    'Fechamento',
                                    style: TextStyle(
                                        fontSize: 17.0,
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xFF007bff)),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                new MaterialPageRoute(
                                    builder: (context) => new ListaClienteView()));
                          },
                          child: Card(
                            child: new Container(
                              padding: new EdgeInsets.all(32.0),
                              child: new Column(
                                children: <Widget>[
                                  Icon(
                                    Icons.people_outline,
                                    size: 30,
                                    color: Color(0xFF007bff),
                                  ),
                                  SizedBox(
                                    height: 8.0,
                                  ),
                                  Text(
                                    'Clientes',
                                    style: TextStyle(
                                        fontSize: 17.0,
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xFF007bff)),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ), /* add child content here */
        ),
      ),
    );
  }

  Widget _SelecionarTopoPopup(cxt) => new PopupMenuButton(
        icon: Icon(Icons.more_vert, color: Color(0xFF000000), size: 30),
        itemBuilder: (context) => [
          PopupMenuItem(
            child: new InkWell(
              onTap: () {
                Navigator.of(context).pop();
              },
              child: new Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  IconButton(
                    icon: Icon(Icons.build, size: 25, color: Color(0xFF000000)),
                  ),
                  Text('Configuração',
                      style: TextStyle(
                          fontSize: 17.0,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF000000))),
                  SizedBox(
                    width: 50.0,
                  ),
                ],
              ),
            ),
          ),
          PopupMenuItem(
            child: new InkWell(
              onTap: () {
                Navigator.of(context).pop();
              },
              child: new Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  IconButton(
                    icon: Icon(Icons.person_outline,
                        size: 26, color: Color(0xFF000000)),
                  ),
                  Text('Perfil',
                      style: TextStyle(
                          fontSize: 17.0,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF000000))),
                  SizedBox(
                    width: 50.0,
                  ),
                ],
              ),
            ),
          ),
          PopupMenuItem(
            child: new InkWell(
              onTap: () {
                _onSairAplicativoDialog(cxt);
              },
              child: new Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  IconButton(
                    icon: Icon(Icons.exit_to_app,
                        size: 26, color: Color(0xFF000000)),
                  ),
                  Text('Sair',
                      style: TextStyle(
                          fontSize: 17.0,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF000000))),
                  SizedBox(
                    width: 50.0,
                  ),
                ],
              ),
            ),
          ),
        ],
      );

  void _onSairAplicativoDialog(context) {
    // flutter defined function
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(
            'Deseja realmente sair?',
            style: TextStyle(
                color: Color(0xFF404040),
                fontFamily: 'BrandonText_Bold',
                fontSize: 18.0),
          ),
          content: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              FlatButton(
                  child: Text(
                    'Cancelar',
                    style: TextStyle(
                        color: Color(0xFF404040),
                        fontFamily: 'BrandonText_Bold',
                        fontSize: 17.0),
                  ),
                  onPressed: () {
                    Navigator.of(context).pop();
                  }),
              FlatButton(
                  child: Text(
                    'Ok',
                    style: TextStyle(
                        color: Color(0xFF404040),
                        fontFamily: 'BrandonText_Bold',
                        fontSize: 17.0),
                  ),
                  onPressed: () async {
                    Navigator.of(context).pop();
                    try {
                      Navigator.of(context).pushAndRemoveUntil(
                          new MaterialPageRoute(
                              builder: (BuildContext context) =>
                                  new LoginView()),
                          (Route<dynamic> route) => false);
                    } catch (error) {
                      //OnToastInformacao(error.toString());
                    }
                  })
            ],
          ),
        );
      },
    );
  }
}
