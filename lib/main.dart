import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:salao/models/user.dart';
import 'package:salao/screens/wrapper.dart';
import 'package:salao/services/auth.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return StreamProvider<User>.value(
      value: AuthService().user,
      child: MaterialApp(
        home: Wrapper(),
      ),
    );
  }
}
