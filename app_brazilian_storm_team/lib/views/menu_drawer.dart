import 'dart:io';
import 'package:app_brazilian_storm_team/views/UsuarioViews/lista_usuarios_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';



class MenuDrawerWidget extends StatefulWidget {


  MenuDrawerWidget() : super();
  @override
  MenuDrawerWidgetPageState createState() => MenuDrawerWidgetPageState();


}

class MenuDrawerWidgetPageState extends State<MenuDrawerWidget>  with TickerProviderStateMixin {
  final GlobalKey<ScaffoldState>  _ScaffoldKeyMenuDrawer = GlobalKey<ScaffoldState>();
  int _SelecionadoDrawerIndex = 0 , _NaoSelecionadoDrawerIndex = 0;
  _getDrawerItemWidget(int pos) {
    switch (pos) {
      case 0:
        return new ListaUsuariosView();
      case 1:
      default:
        return new Text("Error");
    }
  }

  _onSelectItem(int index) {
    setState(() => _SelecionadoDrawerIndex = index);
    Navigator.of(context).pop(); // close the drawer
  }
  @override
  void initState() {
    super.initState();

  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.blue,
      key: _ScaffoldKeyMenuDrawer,
      drawer: Drawer(
        child: new Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Align(
              alignment: Alignment.topCenter,
              child: Container(
                color:  Colors.blue,
                child:  UserAccountsDrawerHeader(
                  currentAccountPicture: Container(
                    padding: EdgeInsets.only(left:0.0,top: 0.0,bottom: 20.0,right: 0.0),
                    margin: const EdgeInsets.only(left:0.0,top: 0.0,bottom: 20.0,right: 10.0),
                    child : Icon(Icons.account_circle,size:90 ,color:  Color(0xFFFFFFFF),)
                  ),
                  accountName: Container(
                    padding: EdgeInsets.only(left:0.0,top: 5.0,bottom: 0.0,right: 0.0),
                    margin: const EdgeInsets.only(left:0.0,top: 0.0,bottom: 0.0,right: 10.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        new Text("Alessandro Junior " , style: TextStyle(fontFamily: 'Roboto_Regular',  fontSize: 17.0, color: Color(0xFFFFFFFF))),
                        SizedBox(height: 4.0),
                        new Text("allessandrosj@gmail.com", style: TextStyle(fontFamily: 'Roboto_Regular',  fontSize: 15.0, color: Color(0xFFFFFFFF))),
                      ],
                    ),
                  ),

                ),
              ),

            ),
            Expanded(
              child:Container(
                alignment: Alignment.topLeft,
                constraints: BoxConstraints(
                  maxHeight: MediaQuery
                      .of(context)
                      .size
                      .height,
                ),
                child: SingleChildScrollView(
                  child: Container(
                    padding: EdgeInsets.fromLTRB(0.0,0.0,5.0,0.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Container(
                            decoration: BoxDecoration(
                                color: 0 == _SelecionadoDrawerIndex
                                    ? Color(0xFF403497fd)
                                    : Colors.transparent,
                                borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(100),
                                  bottomRight: Radius.circular(100),

                                )
                            ),
                            height:60,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                IconButton(
                                  icon: Icon(Icons.people_outline ,size: 22 ,color: Color(0xFF000000)),
                                ),
                                Text('Cliente',
                                    style: TextStyle(
                                        fontSize: 17.0,
                                        fontFamily: "Roboto,RobotoDraft,Helvetica,Arial,sans-serif",

                                        color: Color(0xFF000000))),
                                SizedBox(
                                  width: 50.0,
                                ),
                              ],
                            ),
                            alignment: Alignment(-1.0, 0.0)
                        ),
                        Container(
                            height:60,
                            color: 1 == _SelecionadoDrawerIndex
                                ? Color(0xFF403497fd)
                                : Colors.transparent,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                IconButton(
                                  icon: Icon(Icons.calendar_today ,size: 20 ,color: Color(0xFF000000)),
                                ),
                                Text('Agenda ',
                                    style: TextStyle(
                                        fontSize: 17.0,
                                        color: Color(0xFF000000))),
                                SizedBox(
                                  width: 50.0,
                                ),
                              ],
                            ),
                            alignment: Alignment(-1.0, 0.0)
                        ),
                        Container(
                            height:60,
                            color: 1 == _SelecionadoDrawerIndex
                                ? Color(0xFF403497fd)
                                : Colors.transparent,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                IconButton(
                                  icon: Icon(Icons.content_paste ,size: 20 ,color: Color(0xFF000000)),
                                ),
                                Text('Anotações ',
                                    style: TextStyle(
                                        fontSize: 17.0,
                                        color: Color(0xFF000000))),
                                SizedBox(
                                  width: 50.0,
                                ),
                              ],
                            ),
                            alignment: Alignment(-1.0, 0.0)
                        ),
                      ],
                    ),
                  ),
                ), /* add child content here */
              ),
            ),
          ],
        ),

      ),
      body: _getDrawerItemWidget(_SelecionadoDrawerIndex),
    );
  }
}


