
import 'package:flutter/material.dart';

class RecuperarSenhaView extends StatefulWidget {
  @override
  _RecuperarSenhaView createState() => _RecuperarSenhaView();
}

class _RecuperarSenhaView  extends State<RecuperarSenhaView> with TickerProviderStateMixin {
  final _ScaffoldKey = GlobalKey<ScaffoldState>();
  final GlobalKey<FormState> _FormKey = GlobalKey<FormState>();


  TextEditingController _TxtControllerNome = TextEditingController();
  TextEditingController _TxtControllerEmail = TextEditingController();
  TextEditingController _TxtControllerSenha = TextEditingController();
  TextEditingController _TxtControllerConfirmarSenha = TextEditingController();
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
    super.initState();

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
                  Center(child: Text('Registre-se',
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Color(0xFF6c757d),
                    ),
                  ),),
                  SizedBox(height: 20.0,),
                  Container(
                    height: 50.0,
                    decoration: new BoxDecoration(
                        color: Color(0xFFFFFFFF),
                        borderRadius: new BorderRadius.circular(4.0)),
                    child: new Center(
                      child: TextFormField(
                        controller: _TxtControllerNome ,
                        autofocus: false,
                        style: TextStyle(fontSize: 20 ,color: const Color(0xFF000000)),
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                          prefixIcon: const Icon(
                            Icons.person,
                            size:25,
                            color: Color(0xFF495057),
                          ),
                          border: InputBorder.none,
                          hintStyle: TextStyle(fontSize: 18 ,color: const Color(0xFF6c757d),fontFamily: 'Roboto',),
                          hintText: "Nome Completo",
                          fillColor:  Color(0xFF6c757d),),
                      ),
                    ),),
                  SizedBox(height: 20.0,),
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
                          hintStyle: TextStyle(fontSize: 18 ,color: const Color(0xFF6c757d),fontFamily: 'Roboto_Regular',),
                          hintText: "E-mail",
                          fillColor:  Color(0xFF6c757d),),
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
                        controller: _TxtControllerSenha ,
                        style: TextStyle(fontSize: 20 ,color: const Color(0xFF000000)),
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                          prefixIcon: const Icon(
                            Icons.https,
                            size:25,
                            color: Color(0xFF495057),
                          ),
                          hintStyle: TextStyle(fontSize: 18 ,color: const Color(0xFF6c757d),fontFamily: 'Roboto_Regular',),
                          border: InputBorder.none,
                          hintText: "Senha",
                          fillColor:  Color(0xFF6c757d),),
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
                        controller: _TxtControllerConfirmarSenha ,
                        style: TextStyle(fontSize: 20 ,color: const Color(0xFF000000)),
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                          prefixIcon: const Icon(
                            Icons.https,
                            size:25,
                            color: Color(0xFF495057),
                          ),
                          hintStyle: TextStyle(fontSize: 18 ,color: const Color(0xFF6c757d),fontFamily: 'Roboto_Regular',),
                          border: InputBorder.none,
                          hintText: "Confirma sua Senha",
                          fillColor:  Color(0xFF6c757d),),
                      ),
                    ),),
                  _RealizarLogin(),
                  SizedBox(height: 10.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'Já tenho uma conta! ',
                        style: TextStyle(fontSize: 15.0, color: Color(0xFF6c757d),),
                      ),
                      SizedBox(width: 5.0),
                      InkWell(
                        onTap: () {
                          Navigator.of(context).pop();
                        },
                        child: Text(
                          'Entrar',
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
            child: new Center(child: Text('Registrar',
              style: TextStyle(
                fontFamily: 'BrandonText_Bold',
                fontSize: 22.0,
                color: Colors.white,
              ),
            ),),
          ),
          onTap: () {
            FocusScope.of(context).requestFocus(new FocusNode());

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