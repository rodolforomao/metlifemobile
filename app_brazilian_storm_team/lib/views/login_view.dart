
import 'package:app_brazilian_storm_team/views/menu.dart';
import 'package:app_brazilian_storm_team/views/menu_drawer.dart';
import 'package:app_brazilian_storm_team/views/recuperar_senha_view.dart';
import 'package:app_brazilian_storm_team/views/usuario_cadastro_view.dart';
import 'package:flutter/material.dart';

class LoginView extends StatefulWidget {
  @override
  _LoginView createState() => _LoginView();
}

class _LoginView  extends State<LoginView> with TickerProviderStateMixin {
  final _ScaffoldKey = GlobalKey<ScaffoldState>();
  final GlobalKey<FormState> _FormKey = GlobalKey<FormState>();


  AnimationController animationController;
  Animation<double> animation;
  TextEditingController _TxtControllerEmail = TextEditingController();
  TextEditingController _TxtControllerSenha = TextEditingController();
  bool _IsLogando = false, isVisualizarSenha = false;




  void OnToastInformacao(String Mensagem) {
    final snackBar = SnackBar(
        backgroundColor: Color(0xFF000000),
        duration: Duration(seconds: 4),
        content: Text(Mensagem, style: TextStyle(color: Color(0xFFFFFFFF) ,fontFamily: 'BrandonText_Bold', fontSize: 16.0),)
    );
    _ScaffoldKey.currentState.showSnackBar(snackBar);
  }

  @override
  void initState() {
    animationController = new AnimationController(
        vsync: this,
        duration: new Duration(milliseconds: 500)
    );

    CurvedAnimation curve = CurvedAnimation(parent: animationController, curve: Curves.decelerate);
    animation = Tween(begin: 0.0, end: 1.0).animate(curve);

    super.initState();
    animationController.forward();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      key: _ScaffoldKey,
      body: Form(
        key: _FormKey,
        child: Container(
          alignment: Alignment.center,
          padding: EdgeInsets.fromLTRB(20.0,0.0,20.0,0.0),
          decoration: BoxDecoration(
            color: const Color(0xff2A2E40),
            image: new DecorationImage(
              colorFilter: new ColorFilter.mode(Colors.black.withOpacity(0.7), BlendMode.dstATop),
              image: new AssetImage("assets/imagens/bg_login.png"),
              fit: BoxFit.cover,
            ),
          ),
          constraints: BoxConstraints(
            minHeight: MediaQuery
                .of(context)
                .size
                .height,
          ),
          child: SingleChildScrollView(
            child: Container(
              decoration: BoxDecoration(
                  color: Color(0xFF090FFFFFF),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(100),
                    bottomRight: Radius.circular(100),

                  )
              ),

              padding: EdgeInsets.fromLTRB(20.0,40.0,20.0,40.0),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Center(child: Image.asset("assets/imagens/logo_descricao.png", width: 420.0),),
                  SizedBox(height: 20.0,),
                  Center(child: Text('Acesse sua conta',
                    style: TextStyle(
                      fontSize: 25.0,
                      color: Color(0xFF6c757d),
                    ),
                  ),),
                  SizedBox(height: 40.0,),
                  Container(
                    height: 50.0,
                    decoration: new BoxDecoration(
                        color: Color(0xFFFFFFFF),
                        borderRadius: new BorderRadius.circular(4.0)),
                    child: new Center(
                      child: TextFormField(
                        controller: _TxtControllerEmail,
                        autofocus: false,
                        style: TextStyle(fontSize: 20 ,color: const Color(0xFF000000)),
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                          prefixIcon: const Icon(
                            Icons.email,
                            size:23,
                            color: Color(0xFF495057),
                          ),
                          border: InputBorder.none,
                          hintStyle: TextStyle(fontSize: 18 ,color: const Color(0xFF495057),fontFamily: 'Roboto_Regular',),
                          hintText: "E-mail",
                          fillColor:  Color(0xFF495057),),
                      ),
                    ),),
                  SizedBox(height: 20.0),
                  Container(
                    height: 50.0,
                    decoration: new BoxDecoration(
                        color: Color(0xFFFFFFFF),
                        borderRadius: new BorderRadius.circular(4.0)),
                    child: new Center(
                      child: TextFormField(
                        autofocus: false,
                        obscureText: !isVisualizarSenha,
                        controller: _TxtControllerSenha,
                        style: TextStyle(fontSize: 20 ,color: const Color(0xFF000000)),
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                          prefixIcon: const Icon(
                            Icons.https,
                            size:25,
                            color: Color(0xFF495057),
                          ),
                          hintStyle: TextStyle(fontSize: 18 ,color: const Color(0xFF495057),fontFamily: 'Roboto_Regular',),
                          border: InputBorder.none,
                          hintText: "Senha",
                          fillColor:  Color(0xFF495057),),
                      ),
                    ),),
                  _RealizarLogin(),
                  SizedBox(height: 10.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'Não tem uma conta? ',
                        style: TextStyle(fontSize: 15.0, color: Color(0xFF6c757d),),
                      ),
                      SizedBox(width: 5.0),
                      InkWell(
                        onTap: () {
                          Navigator.push(context, new MaterialPageRoute(
                              builder: (context) =>
                              new UsuarioCadastroView()));
                        },
                        child: Text(
                          'Registre-se',
                          style: TextStyle(
                            fontSize: 15.0,
                            color: Color(0xFF007bff),
                            fontWeight: FontWeight.bold,),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ), /* add child content here */
        ),
      ),
    );
  }

  @override
  Widget _RealizarLogin() =>  new Container(
    child: _IsLogando == false ?  StreamBuilder<bool>(
      builder: (context, snapshot) =>Padding(
        padding: EdgeInsets.only(left: 0.0, top: 40.0, bottom: 20.0),
        child: new InkWell(
          child: new Container(
            //width: 100.0,
            height: 50.0,
            decoration: new BoxDecoration(
              color: Color(0xFF007bff),
              border: new Border.all(color: Color(0xFF007bff), width: 2.0),
              borderRadius: new BorderRadius.circular(4.0),
            ),
            child: new Center(child: Text('Entrar',
              style: TextStyle(
                fontFamily: 'BrandonText_Bold',
                fontSize: 22.0,
                color: Colors.white,
              ),
            ),),
          ),
          onTap: () {
            FocusScope.of(context).requestFocus(new FocusNode());
            Navigator.push(context, new MaterialPageRoute(
                builder: (context) =>
                new Menu()));
          },
        ),
      ),
    ) :  StreamBuilder<bool>(
      // stream: bloc.submitCheck,
      builder: (context, snapshot) =>Padding(
        padding: EdgeInsets.only(left: 0.0, top: 40.0, bottom: 20.0),
        child: new  InkWell(
          child: new Container(
            //width: 100.0,
            height: 50.0,
            decoration: new BoxDecoration(
              color: Color(0xFF007bff),
              border: new Border.all(color: Color(0xFF007bff), width: 2.0),
              borderRadius: new BorderRadius.circular(2.0),
            ),
            child: new Center(child:  Theme(
              data: Theme.of(context).copyWith(accentColor: Colors.white),
              child: new CircularProgressIndicator(),
            ),),
          ),

        ),
      ),
    ),
  );
}