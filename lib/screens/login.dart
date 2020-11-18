import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
            padding: EdgeInsets.all(80),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text('WELCOME', style: Theme.of(context).textTheme.headline1),
                TextFormField(
                  decoration: InputDecoration(hintText: 'Username'),
                ),
                TextFormField(
                  decoration: InputDecoration(hintText: 'Password'),
                  obscureText: true,
                ),
                SizedBox(
                  height: 20,
                ),
                RaisedButton(
                  color: Colors.yellow,
                  child: Text('Login'),
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, '/catalogue');
                  },
                ),
              ],
            )),
      ),
    );
  }
}
