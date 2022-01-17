import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:jobtest2/services/auth.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: FirstPage());
  }
}

class FirstPage extends StatelessWidget {
  const FirstPage({Key? key}) : super(key: key);
  final _sizeTextBlack = const TextStyle(fontSize: 20.0, color: Colors.black);
  final _sizeTextWhite = const TextStyle(fontSize: 20.0, color: Colors.white);
  //dynamic _email;
  //dynamic _password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            child: TextFormField(
              decoration: InputDecoration(
                  labelText: "Email", helperText: "Not a valid email"),
              keyboardType: TextInputType.emailAddress,
              style: _sizeTextBlack,
            ),
            width: 300.0,
          ),
          Container(
            child: TextFormField(
              decoration: InputDecoration(
                labelText: "Password",
                helperText: "Password too short",
              ),
              obscureText: true,
              style: _sizeTextBlack,
            ),
            width: 300.0,
            padding: EdgeInsets.only(top: 10.0),
          ),
          Padding(
            padding: EdgeInsets.only(top: 35.0),
            child: MaterialButton(
              color: Theme.of(context).accentColor,
              height: 50.0,
              minWidth: 150.0,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ScreenWidget()),
                );
              },
              child: Text(
                "LOGIN",
                style: _sizeTextWhite,
              ),
            ),
          )
        ],
      )),
    );
  }
}

class ScreenWidget extends StatelessWidget {
  const ScreenWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          padding: EdgeInsets.only(top: 50, left: 120, right: 10),
          child: Text(
            'Welcome',
            style: TextStyle(
              fontWeight: FontWeight.normal,
              fontSize: 40.0,
            ),
          ),
        ),
        appBar: AppBar(
          actions: <Widget>[
            FlatButton.icon(
                onPressed: () {
                  AuthService().logOut();
                },
                icon: Icon(
                  Icons.logout,
                  color: Colors.white,
                ),
                label: SizedBox.shrink())
          ],
          title: const Text('Flutter login demo'),
          centerTitle: true,
        ),
        floatingActionButton: FloatingActionButton(
            onPressed: () {}, child: const Icon(Icons.add)),
      ),
    );
  }
}


