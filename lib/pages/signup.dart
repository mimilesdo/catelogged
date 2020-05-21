import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:catelogged/pages/signin.dart';

class SignUp extends StatelessWidget{
  final _formKey = GlobalKey<FormState>();
  String _email, _password, _passwordConfirm;

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
                Text('Sign up to continue', style: TextStyle(color: Colors.blueGrey[600])),
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
                SizedBox(height: 20),
                TextFormField(
                  onSaved: (value) => _passwordConfirm = value,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.lock),
                    labelText: 'Confirm password',
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
                    child: Text("Sign up"),
                    color: Colors.indigo,
                    padding: const EdgeInsets.all(15),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(15))
                    ),
                  ),
                ),
                Row(mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text('Already registered?'),
                    SizedBox(width: 5),
                    FlatButton(
                        onPressed: (){
                          Navigator.pushReplacement(
                              context, MaterialPageRoute(builder: (BuildContext context) => SignIn()));
                        },
                        child: Text("Sign in", style: TextStyle(color: Colors.indigoAccent, decoration: TextDecoration.underline),))
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