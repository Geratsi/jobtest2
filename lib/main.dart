import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(
  ScreenWidget(),
);

class MyApp extends StatelessWidget {
  final _sizeTextBlack = const TextStyle(fontSize: 20.0, color: Colors.black);
  final _sizeTextWhite = const TextStyle(fontSize: 20.0, color: Colors.white);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  child: TextFormField(
                    decoration: InputDecoration(labelText: "Email"),
                    keyboardType: TextInputType.emailAddress,
                    style: _sizeTextBlack,
                  ),
                  width: 300.0,
                ),
                Container(
                  child: TextFormField(
                    decoration: InputDecoration(labelText: "Password"),
                    obscureText: true,
                    style: _sizeTextBlack,
                  ),
                  width: 300.0,
                  padding: EdgeInsets.only(top: 10.0),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 35.0),
                  child: MaterialButton(
                    color: Theme
                        .of(context)
                        .accentColor,
                    height: 50.0,
                    minWidth: 150.0,
                    onPressed: () {  },
                    child: Text(
                      "LOGIN",
                      style: _sizeTextWhite,
                    ),
                  ),
                )
              ],
            )
        ),
      ),
    );
  }
}

class ScreenWidget extends StatelessWidget {
  const ScreenWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter login demo'),
        ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add)
      ),
      ),
    );
  }
}

//class SimpleWidget extends StatefulWidget {
//  const _SimpleWidget({Key? key}) : super(key: key);
//}

//class _SimpleWidgetState extends State<SimpleWidget> {
//  int _count = 0;
//  @override
//  Widget build(BuildContext context) {
//    return Center(
//      child: Column(
//          mainAxisAlignment: MainAxisAlignment.center,
//          children: <Widget>[
//            Text('_count'),
//            RaisedButton(onPressed: onPressed() {},
//              child: Text('+'),  )
//          ],
//      )
//    );
//  }
//}

