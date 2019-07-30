import 'package:flutter/material.dart';
//import 'package:validate/validate.dart';  //for validation


class MyData {
  String name = '';
  String phone = '';
  String email = '';
  String age = '';
}

class UsuarioView extends StatefulWidget {
  @override
  _UsuarioView createState() => new _UsuarioView();
}

class _UsuarioView extends State<UsuarioView> {
  int currStep = 0;
  static var _focusNode = new FocusNode();
  final GlobalKey<ScaffoldState> _ScaffoldKey = GlobalKey<ScaffoldState>();
  static MyData data = new MyData();

  @override
  void initState() {
    super.initState();
    _focusNode.addListener(() {
      setState(() {});
      print('Has focus: $_focusNode.hasFocus');
    });
  }

  @override
  void dispose() {
   // _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        key: _ScaffoldKey,
        backgroundColor: Color(0xFFf4f6f9),
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Color(0xFFFFFFFF),
          title: Center(
            child: Image.asset("assets/imagens/logo_mini_met_life.png",
                height: 30.0),
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
          actions: <Widget>[],
        ),
        body: Form(
          child: Container(
            alignment: Alignment.center,
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
                padding: EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 40.0),
                child: Stepper(
                  steps: [
                    new Step(
                        title: const Text('Dados Cadastrais'),
                        //subtitle: const Text('Enter your name'),
                        isActive: true,
                        //state: StepState.error,
                        state: StepState.indexed,
                        content: Container(
                          alignment: Alignment.center,
                          constraints: BoxConstraints(
                            minHeight: MediaQuery
                                .of(context)
                                .size
                                .height,
                          ),
                          child: SingleChildScrollView(
                            child: Container(
                              padding: EdgeInsets.fromLTRB(20.0,0.0,20.0,0.0),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Text(
                                    'Nome Completo',
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
                                            fontFamily: 'Roboto_Regular',
                                          ),
                                          hintText: "Nome Completo",
                                          fillColor: Color(0xFF495057),
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 20.0),
                                  Text(
                                    'CPF',
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
                                            fontFamily: 'Roboto_Regular',
                                          ),
                                          border: InputBorder.none,
                                          hintText: "CPF",
                                          fillColor: Color(0xFF495057),
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 20.0),
                                  Text(
                                    'Data Nascimento',
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
                                            fontFamily: 'Roboto_Regular',
                                          ),
                                          border: InputBorder.none,
                                          hintText: "Data Nascimento",
                                          fillColor: Color(0xFF495057),
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 20.0),
                                  Text(
                                    'Sexo',
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
                                            fontFamily: 'Roboto_Regular',
                                          ),
                                          border: InputBorder.none,
                                          hintText: "Sexo",
                                          fillColor: Color(0xFF495057),
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 20.0),
                                  Text(
                                    'Estado Cívil',
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
                                            fontFamily: 'Roboto_Regular',
                                          ),
                                          border: InputBorder.none,
                                          hintText: "Estado Cívil",
                                          fillColor: Color(0xFF495057),
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 20.0),
                                  Text(
                                    'Endereço Residencial',
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
                                            fontFamily: 'Roboto_Regular',
                                          ),
                                          border: InputBorder.none,
                                          hintText: "Endereço Residencial",
                                          fillColor: Color(0xFF495057),
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 20.0),
                                  Text(
                                    'Email',
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
                                            fontFamily: 'Roboto_Regular',
                                          ),
                                          border: InputBorder.none,
                                          hintText: "Email",
                                          fillColor: Color(0xFF495057),
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 20.0),
                                  Text(
                                    'Celular',
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
                                            fontFamily: 'Roboto_Regular',
                                          ),
                                          border: InputBorder.none,
                                          hintText: "Celular",
                                          fillColor: Color(0xFF495057),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ), /* add child content here */
                        ),
                    ),
                    new Step(
                        title: const Text('Dados Familiares'),
                        //subtitle: const Text('Subtitle'),
                        isActive: true,
                        //state: StepState.editing,
                        state: StepState.indexed,
                        content: new TextFormField(
                          keyboardType: TextInputType.phone,
                          autocorrect: false,
                          validator: (value) {
                            if (value.isEmpty || value.length < 10) {
                              return 'Please enter valid number';
                            }
                          },
                          onSaved: (String value) {
                            data.phone = value;
                          },
                          maxLines: 1,
                          decoration: new InputDecoration(
                              labelText: 'Enter your number',
                              hintText: 'Enter a number',
                              icon: const Icon(Icons.phone),
                              labelStyle:
                              new TextStyle(decorationStyle: TextDecorationStyle.solid)),
                        )),
                    new Step(
                        title: const Text('Rendimentos'),
                        // subtitle: const Text('Subtitle'),
                        isActive: true,
                        state: StepState.indexed,
                        // state: StepState.disabled,
                        content: new TextFormField(
                          keyboardType: TextInputType.emailAddress,
                          autocorrect: false,
                          validator: (value) {
                            if (value.isEmpty || !value.contains('@')) {
                              return 'Please enter valid email';
                            }
                          },
                          onSaved: (String value) {
                            data.email = value;
                          },
                          maxLines: 1,
                          decoration: new InputDecoration(
                              labelText: 'Enter your email',
                              hintText: 'Enter a email address',
                              icon: const Icon(Icons.email),
                              labelStyle:
                              new TextStyle(decorationStyle: TextDecorationStyle.solid)),
                        )),
                    new Step(
                        title: const Text('Patrimônio'),
                        // subtitle: const Text('Subtitle'),
                        isActive: true,
                        state: StepState.indexed,
                        content: new TextFormField(
                          keyboardType: TextInputType.number,
                          autocorrect: false,
                          validator: (value) {
                            if (value.isEmpty || value.length > 2) {
                              return 'Please enter valid age';
                            }
                          },
                          maxLines: 1,
                          onSaved: (String value) {
                            data.age = value;
                          },
                          decoration: new InputDecoration(
                              labelText: 'Enter your age',
                              hintText: 'Enter age',
                              icon: const Icon(Icons.explicit),
                              labelStyle:
                              new TextStyle(decorationStyle: TextDecorationStyle.solid)),
                        )),
                    new Step(
                        title: const Text('Educação dos Filhos'),
                        // subtitle: const Text('Subtitle'),
                        isActive: true,
                        state: StepState.indexed,
                        content: new TextFormField(
                          keyboardType: TextInputType.number,
                          autocorrect: false,
                          validator: (value) {
                            if (value.isEmpty || value.length > 2) {
                              return 'Please enter valid age';
                            }
                          },
                          maxLines: 1,
                          onSaved: (String value) {
                            data.age = value;
                          },
                          decoration: new InputDecoration(
                              labelText: 'Enter your age',
                              hintText: 'Enter age',
                              icon: const Icon(Icons.explicit),
                              labelStyle:
                              new TextStyle(decorationStyle: TextDecorationStyle.solid)),
                        )),
                    new Step(
                        title: const Text('Padrão de Vida'),
                        // subtitle: const Text('Subtitle'),
                        isActive: true,
                        state: StepState.indexed,
                        content: new TextFormField(
                          keyboardType: TextInputType.number,
                          autocorrect: false,
                          validator: (value) {
                            if (value.isEmpty || value.length > 2) {
                              return 'Please enter valid age';
                            }
                          },
                          maxLines: 1,
                          onSaved: (String value) {
                            data.age = value;
                          },
                          decoration: new InputDecoration(
                              labelText: 'Enter your age',
                              hintText: 'Enter age',
                              icon: const Icon(Icons.explicit),
                              labelStyle:
                              new TextStyle(decorationStyle: TextDecorationStyle.solid)),
                        )),
                    new Step(
                        title: const Text('Empréstimos'),
                        // subtitle: const Text('Subtitle'),
                        isActive: true,
                        state: StepState.indexed,
                        content: new TextFormField(
                          keyboardType: TextInputType.number,
                          autocorrect: false,
                          validator: (value) {
                            if (value.isEmpty || value.length > 2) {
                              return 'Please enter valid age';
                            }
                          },
                          maxLines: 1,
                          onSaved: (String value) {
                            data.age = value;
                          },
                          decoration: new InputDecoration(
                              labelText: 'Enter your age',
                              hintText: 'Enter age',
                              icon: const Icon(Icons.explicit),
                              labelStyle:
                              new TextStyle(decorationStyle: TextDecorationStyle.solid)),
                        )),
                    new Step(
                        title: const Text('Seguros e Previdências'),
                        // subtitle: const Text('Subtitle'),
                        isActive: true,
                        state: StepState.indexed,
                        content: new TextFormField(
                          keyboardType: TextInputType.number,
                          autocorrect: false,
                          validator: (value) {
                            if (value.isEmpty || value.length > 2) {
                              return 'Please enter valid age';
                            }
                          },
                          maxLines: 1,
                          onSaved: (String value) {
                            data.age = value;
                          },
                          decoration: new InputDecoration(
                              labelText: 'Enter your age',
                              hintText: 'Enter age',
                              icon: const Icon(Icons.explicit),
                              labelStyle:
                              new TextStyle(decorationStyle: TextDecorationStyle.solid)),
                        )),
                    new Step(
                        title: const Text('Plano'),
                        // subtitle: const Text('Subtitle'),
                        isActive: true,
                        state: StepState.indexed,
                        content: new TextFormField(
                          keyboardType: TextInputType.number,
                          autocorrect: false,
                          validator: (value) {
                            if (value.isEmpty || value.length > 2) {
                              return 'Please enter valid age';
                            }
                          },
                          maxLines: 1,
                          onSaved: (String value) {
                            data.age = value;
                          },
                          decoration: new InputDecoration(
                              labelText: 'Enter your age',
                              hintText: 'Enter age',
                              icon: const Icon(Icons.explicit),
                              labelStyle:
                              new TextStyle(decorationStyle: TextDecorationStyle.solid)),
                        )),
                  ],
                  type: StepperType.vertical,
                  currentStep: this.currStep,
                  onStepContinue: () {
                    setState(() {
                      if (currStep < 9 - 1) {
                        currStep = currStep + 1;
                      } else {
                        currStep = 0;
                      }
                      // else {
                      // Scaffold
                      //     .of(context)
                      //     .showSnackBar(new SnackBar(content: new Text('$currStep')));

                      // if (currStep == 1) {
                      //   print('First Step');
                      //   print('object' + FocusScope.of(context).toStringDeep());
                      // }

                      // }
                    });
                  },
                  onStepCancel: () {
                    setState(() {
                      if (currStep > 0) {
                        currStep = currStep - 1;
                      } else {
                        currStep = 0;
                      }
                    });
                  },
                  onStepTapped: (step) {
                    setState(() {
                      currStep = step;
                    });
                  },
                ),
              ),
            ), /* add child content here */
          ),
        )
    );
  }
}




class StepperDemo extends StatefulWidget {
  StepperDemo() : super();

  final String title = "Stepper Demo";

  @override
  StepperDemoState createState() => StepperDemoState();
}

class StepperDemoState extends State<StepperDemo> {
  //
  int current_step = 0;
  List<Step> steps = [
    Step(
      title: Text('Step 1'),
      content: Text('Hello!'),
      isActive: true,
    ),
    Step(
      title: Text('Step 2'),
      content: Text('World!'),
      isActive: true,
    ),
    Step(
      title: Text('Step 3'),
      content: Text('Hello World!'),
      state: StepState.complete,
      isActive: true,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Appbar
      appBar: AppBar(
        // Title
        title: Text("Simple Stepper Demo"),
      ),
      // Body
      body: Container(
        child: Stepper(
          currentStep: this.current_step,
          steps: steps,
          type: StepperType.vertical,
          onStepTapped: (step) {
            setState(() {
              current_step = step;
            });
          },
          onStepContinue: () {
            setState(() {
              if (current_step < steps.length - 1) {
                current_step = current_step + 1;
              } else {
                current_step = 0;
              }
            });
          },
          onStepCancel: () {
            setState(() {
              if (current_step > 0) {
                current_step = current_step - 1;
              } else {
                current_step = 0;
              }
            });
          },
        ),
      ),
    );
  }
}
