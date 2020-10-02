import 'package:flutter/material.dart';

void main () => runApp(new MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return new MaterialApp(
      home: new LoginPage(),
      theme: new ThemeData(
        primarySwatch: Colors.blue
      ),
    );
  }
}

class LoginPage extends StatefulWidget{
  @override 
  State createState() => new LoginPageState();

}

class LoginPageState extends State<LoginPage> with SingleTickerProviderStateMixin{

  AnimationController _iconAnimationController;
  Animation<double> _iconAnimation;

  @override 
  void initState(){
    super.initState();
    _iconAnimationController = new AnimationController(
      vsync: this,
      duration: new Duration(milliseconds: 500)
    );
    _iconAnimation = new CurvedAnimation(
      parent: _iconAnimationController, 
      curve: Curves.easeOut
    );
    _iconAnimation.addListener(() => this.setState( (){ }));
    _iconAnimationController.forward();
  }

  @override
  Widget build(BuildContext context){
    return new Scaffold(
      backgroundColor: Colors.white,
      body: new Stack(
        fit: StackFit.expand,
        children: <Widget>[
          new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new Image(
                image: new AssetImage("assets/flip_new.png"),
            

              ),
              new Form(
                child: new Theme(
                  data: new ThemeData(
                    brightness : Brightness.light,
                    primarySwatch : Colors.blue,
                    inputDecorationTheme: new InputDecorationTheme(
                      labelStyle : new TextStyle(
                        color: Colors.blue,
                        fontSize: 20,
                      )
                    )
                  ),
                  child: new Container(
                    padding: const EdgeInsets.all(40.0),
                    child: new Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        new TextFormField(
                          decoration: new InputDecoration(
                            labelText: "Username",

                          ),
                          keyboardType: TextInputType.text,
                        ),
                         new TextFormField(
                          decoration: new InputDecoration(
                            labelText: "Enter Password",
                          ),
                          keyboardType: TextInputType.text,
                          obscureText: true,
                        ),
                        new Padding(
                          padding:const EdgeInsets.only(top: 40.0), 
                        ),
                        new MaterialButton(
                          height: 40,
                          minWidth: 100,
                          color: Colors.blue,
                          textColor: Colors.white,
                          child: new Text("Login"),
                          onPressed : ()=>{},
                          splashColor: Colors.black,
                        ),
                        new MaterialButton(
                          height: 20,
                          minWidth: 100,
                          padding: const EdgeInsets.only(top: 30),
                          textColor: Colors.blue,
                          child: new Text("Forget Password"),
                          onPressed : ()=>{},
                          
                        ),
                      ],
                    ),
                  ),
                ),
                
              )
            ],
          )
        ]
      )
      
    );
  }
}