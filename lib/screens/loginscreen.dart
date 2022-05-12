import 'package:flutter/material.dart';
import 'dashboard.dart';

class LoginPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new _State();
}

class _State extends State<LoginPage> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: null,
        body: Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/bg.jpg"),
                    fit: BoxFit.cover)),
            child: ListView(
              children: <Widget>[
                Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(40),
                    child: const Icon(
                      Icons.accessible,
                      color: Colors.green,
                      size: 70.0,
                    )),
                Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(10),
                    child: const Text(
                      'Login to Universal Hub',
                      style: TextStyle(
                          color: Colors.red,
                          fontWeight: FontWeight.w500,
                          fontSize: 25),
                    )),
                Container(
                  padding: EdgeInsets.all(10),
                  child: TextField(
                    controller: nameController,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'User Name',
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                  child: TextField(
                    obscureText: true,
                    controller: passwordController,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Password',
                    ),
                  ),
                ),
                FlatButton(
                  onPressed: () {
                    //forgot password screen
                  },
                  textColor: Colors.red,
                  child:
                      Text('Forgot Password', style: TextStyle(fontSize: 17)),
                ),
                Container(
                    height: 50,
                    padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                    child: RaisedButton(
                      textColor: Colors.white,
                      color: Colors.orange,
                      child: Text('Login'),
                      onPressed: () {
                        //login
                      },
                    )),
                Container(
                    child: Column(
                  children: const <Widget>[
                    Text('Does not have account?',
                        style: TextStyle(fontSize: 17)),
                  ],
                  mainAxisAlignment: MainAxisAlignment.center,
                )),
                Container(
                    height: 50,
                    padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                    child: RaisedButton(
                      textColor: Colors.white,
                      color: Colors.red,
                      child: const Text('Create an account'),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Dashboard()),
                        );
                      },
                    )),
              ],
            )));
  }
}
