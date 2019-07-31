import 'package:app_brazilian_storm_team/views/cliente_views/novo_cliente_view.dart';
import 'package:app_brazilian_storm_team/views/login_view.dart';
import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:io';
import 'dart:convert';

class ListaClienteView extends StatefulWidget {
  @override
  _ListaClienteView createState() => _ListaClienteView();
}

class _ListaClienteView extends State<ListaClienteView>
    with TickerProviderStateMixin {
  final GlobalKey<ScaffoldState> _ScaffoldKey = GlobalKey<ScaffoldState>();

  AnimationController animationController;
  Animation<double> animation;
  bool ExisteInformacao;

  OnRealizandoOperacao(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return Dialog(
          child: new Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              new Container(
                margin: const EdgeInsets.only(
                    left: 5.0, top: 20.0, bottom: 20.0, right: 10.0),
                child: Theme(
                  data: Theme.of(context).copyWith(
                    accentColor: Color(0xFF6b83bf),
                  ),
                  child: new CircularProgressIndicator(),
                ),
              ),
              new Container(
                margin: const EdgeInsets.only(
                    left: 10.0, top: 20.0, bottom: 20.0, right: 5.0),
                child: new Text(
                  "Realizando  operação...",
                  maxLines: null,
                  style: new TextStyle(
                      fontFamily: 'BrandonText_Bold',
                      fontSize: 17.0,
                      color: Color(0xFF656565)),
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  OnToastInformacao(String Mensagem) {
    final snackBar = SnackBar(
        backgroundColor: Color(0xFF000000),
        duration: Duration(seconds: 4),
        content: Text(
          Mensagem,
          style: TextStyle(
              color: Color(0xFFFFFFFF),
              fontFamily: 'BrandonText_Bold',
              fontSize: 16.0),
        ));
    _ScaffoldKey.currentState.showSnackBar(snackBar);
  }

  @override
  void initState() {
    animationController = new AnimationController(
        vsync: this, duration: new Duration(milliseconds: 500));
    CurvedAnimation curve =
    CurvedAnimation(parent: animationController, curve: Curves.decelerate);
    animation = Tween(begin: 0.0, end: 1.0).animate(curve);
    super.initState();
    Future(() {});
    new Future.delayed(Duration.zero, () {});
    animationController.forward();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  void didChangeDependencies() {
    new Future.delayed(Duration.zero, () {});
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      key: _ScaffoldKey,
      backgroundColor: Color(0xFFf4f6f9),
      appBar: new AppBar(
        elevation: 0.5,
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
        title: Center(
          child: Image.asset("assets/imagens/logo_mini_met_life.png",
              height: 35.0),
        ),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[],
      ),
      floatingActionButton: FittedBox(
        child: FloatingActionButton(
          backgroundColor: Color(0xFF007bff),
          onPressed: () {
            Navigator.push(context,
                new MaterialPageRoute(builder: (context) => new NovoClienteView()));
          },
          child: Icon(
            Icons.add,
            color: Color(0xFFFFFFFF),
          ),
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
                icon: Icon(Icons.build, size: 26, color: Color(0xFF000000)),
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
                      fontFamily: 'Roboto_Regular',
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
            print("2");
            Navigator.of(context).pop();
            Navigator.pop(context, null);
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
                      fontFamily: 'Roboto_Regular',
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
                      OnToastInformacao(error.toString());
                    }
                  })
            ],
          ),
        );
      },
    );
  }
}
