import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:catelogged/pages/signup.dart';
//import 'package:google_fonts/google_fonts.dart';

class SignIn extends StatelessWidget{
  final _formKey = GlobalKey<FormState>();
  String _email, _password;

  Widget build(BuildContext context){
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      body: Center(
        child: Form(
          key: _formKey,
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(30),
            child: Column(
              children: <Widget>[
                //Branding
                branding(),
                SizedBox(height: 15),
                Text('Login to continue', style: TextStyle(color: Colors.blueGrey[600])),
                SizedBox(height: 15),
                TextFormField(
                  onSaved: (value) => _email = value,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.email),
                    labelText: 'Email',
                    labelStyle: TextStyle(color: Colors.blueGrey[700]),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(15))
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                        borderSide: BorderSide(color: Colors.indigo)
                    ),
                  ),
                ),
                SizedBox(height: 20),
                TextFormField(
                  onSaved: (value) => _password = value,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.lock),
                    labelText: 'Password',
                    labelStyle: TextStyle(color: Colors.blueGrey[700]),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(15))
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                        borderSide: BorderSide(color: Colors.indigo)
                    ),
                  ),
                ),
                //Submit button
                SizedBox(
                  height: 20,
                ),
                SizedBox(
                  width: double.infinity,
                  child: FlatButton(
                    onPressed: (){},
                    textColor: Colors.white,
                    child: Text("Login"),
                    color: Colors.indigo,
                    padding: const EdgeInsets.all(15),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(15))
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                    children: <Widget>[
                      Expanded(
                          child: Divider(thickness: 2)
                      ),

                      Text(" or  ", style: TextStyle(color: Colors.blueGrey[400])),

                      Expanded(
                          child: Divider(thickness: 2)
                      ),
                    ]
                ),
                SizedBox(
                  height: 10,
                ),
                SizedBox(
                  width: double.infinity,
                  child: FlatButton(
                    onPressed: (){},
                    textColor: Colors.blueGrey[900],
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Image.asset('assets/images/google-logo.png', height:12),
                        SizedBox(width: 10),
                        Text('Sign in with Google')
                      ],
                    ),
                    padding: const EdgeInsets.all(15),
                    shape: RoundedRectangleBorder(
                      side: BorderSide(color: Colors.indigo),
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                    ),
                  ),
                ),
                Row(mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text('Not registered?'),
                    SizedBox(width: 5),
                    FlatButton(
                        onPressed: (){
                          Navigator.pushReplacement(
                              context, MaterialPageRoute(builder: (BuildContext context) => SignUp()));
                        },
                        child: Text("Sign Up", style: TextStyle(color: Colors.indigoAccent, decoration: TextDecoration.underline)))
                  ],)
              ],
            ),
          ),
        ),
      )
    );
  }
}
Row branding(){
  return new Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      Image.asset('assets/images/invoice.png', height: 35),
      SizedBox(width: 10),
      Text('catelogged',
          style: TextStyle(
            fontSize: 30,
            letterSpacing: 2,
          ))
    ],
  );


}