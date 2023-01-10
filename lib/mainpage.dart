import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test060/signin.dart';

import 'Home.dart';


class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) =>
      Scaffold(
          body: StreamBuilder<User?>(
            stream: FirebaseAuth.instance.authStateChanges(),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return Homepage();
              } else
                return Signin();
            },
          )
      );


}
