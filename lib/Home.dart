/*
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      Center(child: Text('welcome to home')),
    );
  }
}
*/
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  final user = FirebaseAuth.instance.currentUser!;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBar(
          title: Text('Home'),
        ),
        body: Padding(
            padding:EdgeInsets.all(32),
            child:Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("sign In as",
                  style: TextStyle(fontSize: 16),
                ),
                SizedBox(height: 8),
                Text(user.email!,
                  style:TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 20,),
                ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(
                      minimumSize: Size.fromHeight(50)
                  ),
                  icon:Icon(Icons.arrow_back,size:32),
                  label: Text('Sign out',
                    style: TextStyle(fontSize: 24),
                  ),
                  onPressed: ()  =>FirebaseAuth.instance.signOut(),

                ),
              ],
            )

        )
    );
  }
}

