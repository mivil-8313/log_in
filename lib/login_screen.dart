import 'package:flutter/material.dart';
import 'package:log_in/sign_up_page.dart';

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
      appBar: AppBar(
        title: Text('Welcome,New User'),
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: ListView(
          children: <Widget>[
            Container(
              alignment: Alignment.center,
              padding: EdgeInsets.all(10),
              child: Text(
                'Intern',
                style: TextStyle(
                    color: Colors.pink,
                    fontWeight: FontWeight.w500,
                    fontSize: 30),
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: TextField(
                controller: nameController,
                decoration: InputDecoration(
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
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Password',
                ),
              ),
            ),
            // ignore: deprecated_member_use
            FlatButton(
              onPressed: () {
                //forgot password screen
              },
              textColor: Colors.green,
              child: Text('Forgot Password'),
            ),

            Container(
                height: 50,
                padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                // ignore: deprecated_member_use
                child: RaisedButton(
                  textColor: Colors.white,
                  color: Colors.green,
                  child: Text('Login'),
                  onPressed: () {},
                )),
            Container(
                child: Row(
              children: <Widget>[
                Text('Does not have account?'),
                // ignore: deprecated_member_use
                FlatButton(
                  textColor: Colors.green,
                  child: Text(
                    'Sign in',
                    style: TextStyle(fontSize: 20),
                  ),
                  onPressed: () {
                    //signup screen
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SignUpPage()),
                    );
                  },
                )
              ],
              mainAxisAlignment: MainAxisAlignment.center,
            ))
          ],
        ),
      ),
    );
  }
}
