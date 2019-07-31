import 'package:app_brazilian_storm_team/views/UsuarioViews/usuario_view.dart';
import 'package:app_brazilian_storm_team/views/login_view.dart';
import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:io';
import 'dart:convert';

class NovoClienteView extends StatefulWidget {
  @override
  _NovoClienteView createState() => _NovoClienteView();
}

class _NovoClienteView extends State<NovoClienteView> with TickerProviderStateMixin {
  final _ScaffoldKey = GlobalKey<ScaffoldState>();
  final GlobalKey<FormState> _FormKey = GlobalKey<FormState>();

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
    super.initState();
    Future(() {});
    new Future.delayed(Duration.zero, () {});

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
      body: Form(
        key: _FormKey,
        child: Container(
          padding: EdgeInsets.fromLTRB(20.0,20.0,20.0,20.0),
          constraints: BoxConstraints(
            minHeight: MediaQuery
                .of(context)
                .size
                .height,
          ),
          child: SingleChildScrollView(
            child: Container(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                textDirection: TextDirection.ltr,
                children: <Widget>[
                  Text(
                    'Nome*',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: 17.0,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF000000),
                    ),
                  ),
                  SizedBox(
                    height: 12.0,
                  ),
                  Container(
                    height: 50.0,
                    padding: EdgeInsets.fromLTRB(10.0, 0.0, 5.0, 0.0),
                    decoration: new BoxDecoration(
                        color: Color(0xFFFFFFFF),
                        borderRadius: new BorderRadius.circular(4.0)),
                    child: new Center(
                      child: TextFormField(
                        autofocus: false,
                        style: TextStyle(fontSize: 20, color: const Color(0xFF000000)),
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintStyle: TextStyle(
                            fontSize: 18,
                            color: const Color(0xFF495057),
                          ),
                          hintText: "Nome",
                          fillColor: Color(0xFF495057),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20.0),
                  Text(
                    'Telefone*',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: 17.0,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF000000),
                    ),
                  ),
                  SizedBox(
                    height: 12.0,
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(10.0, 0.0, 5.0, 0.0),
                    height: 50.0,
                    decoration: new BoxDecoration(
                        color: Color(0xFFFFFFFF),
                        borderRadius: new BorderRadius.circular(4.0)),
                    child: new Center(
                      child: TextFormField(
                        autofocus: false,
                        style: TextStyle(fontSize: 20, color: const Color(0xFF000000)),
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                          hintStyle: TextStyle(
                            fontSize: 18,
                            color: const Color(0xFF495057),
                          ),
                          border: InputBorder.none,
                          hintText: "Telefone",
                          fillColor: Color(0xFF495057),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20.0),
                  Text(
                    'Indicação*',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: 17.0,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF000000),
                    ),
                  ),
                  SizedBox(
                    height: 12.0,
                  ),
                  Container(
                    height: 50.0,
                    padding: EdgeInsets.fromLTRB(10.0, 0.0, 5.0, 0.0),
                    decoration: new BoxDecoration(
                        color: Color(0xFFFFFFFF),
                        borderRadius: new BorderRadius.circular(4.0)),
                    child: new Center(
                      child: TextFormField(
                        autofocus: false,
                        style: TextStyle(fontSize: 20, color: const Color(0xFF000000)),
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                          hintStyle: TextStyle(
                            fontSize: 18,
                            color: const Color(0xFF495057),
                          ),
                          border: InputBorder.none,
                          hintText: "Indicação",
                          fillColor: Color(0xFF495057),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20.0),
                ],
              ),
            ),
          ), /* add child content here */
        ),
      ),
      floatingActionButton: FittedBox(
        child: FloatingActionButton(
          backgroundColor: Color(0xFF007bff),
          onPressed: () {

          },
          child: Icon(
            Icons.check,
            color: Color(0xFFFFFFFF),
          ),
        ),
      ),
    );
  }


}
