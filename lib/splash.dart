import 'package:flutter/material.dart';
import 'package:test060/signin.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  int currentIndex = 0;
  int subIndex = 0;
  bool isVisible = false;


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(
        const Duration(seconds: 3),
            () => Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => Signin()),
        ));

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          /*image: DecorationImage(
                image: AssetImage('assets/images/splash screen.png'),
                fit: BoxFit.fill
            )*/
        ),
        child: Center(
          child: Image.asset(
            'assets/images1/splash screen.png',fit: BoxFit.cover,
            width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height

        ),
        ),
      ),
    );
  }
}
