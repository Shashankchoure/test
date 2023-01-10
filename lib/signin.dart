import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:test060/signup.dart';
import 'Appbutton.dart';
import 'Home.dart';
import 'appButton.dart';
import 'global.dart';
import 'global.dart';
import 'global.dart';
Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
}

class Signin extends StatefulWidget {
  const Signin({Key? key}) : super(key: key);

  @override
  State<Signin> createState() => _SigninState();
}

class _SigninState extends State<Signin> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  int currentIndex = 0;
  int subIndex = 0;

  TextEditingController mobileController = TextEditingController();
/*
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
*/

 /* @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }
*/

  String? otp;
  String msg = "";
  bool? status;

  bool isVisible = false;

  passwordVisibility() {
    setState(() {
      isVisible = !isVisible;
    });
  }

  /*final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  // final mobileController = TextEditingController();
  final ccodeController = TextEditingController();
  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();
  String? mobile, id, countrycode, countryName, mobileno;
  bool _isNetworkAvail = true;
  Animation? buttonSqueezeanimation;
  AnimationController? buttonController;
*/
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child:
        Scaffold(
          body:
          Column(
            children: [
              Container(
                child:
                Padding(
                  padding: const EdgeInsets.only(top: 0),
                  child: Image.asset(
                    'assets/images1/signin.png',
                  ),
                ),

              ),
              Text("Sign in", style: TextStyle(
                  color: Colors.black,
                  fontSize: 24,
                  fontWeight: FontWeight.w500
              ),),


              Padding(
                padding: EdgeInsets.only(bottom: 10, top: 20),
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 40),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            InkWell(
                              onTap: () {
                                setState(() {
                                  currentIndex = 0;
                                });
                              },
                              child: Row(
                                children: [
                                  Container(
                                    height: 20,
                                    width: 20,
                                    padding: EdgeInsets.all(4),
                                    decoration: BoxDecoration(
                                      // color: AppColor.PrimaryDark,
                                        borderRadius: BorderRadius.circular(
                                            100),
                                        border: Border.all(
                                            color: AppColor.PrimaryDark,
                                            width: 2)
                                    ),
                                    child: Container(
                                      height: MediaQuery.of(context).size.height,
                                      width:MediaQuery.of(context).size.width+20,
                                      decoration: BoxDecoration(
                                          color: currentIndex == 0 ? AppColor()
                                              .colorPrimary() : Colors
                                              .transparent,
                                          borderRadius: BorderRadius.circular(
                                              100)),
                                    ),
                                  ),
                                  SizedBox(width: 10,),
                                  Text("Job Seeker", style: TextStyle(
                                      color: AppColor.PrimaryDark,
                                      fontSize: 16),)
                                ],
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                setState(() {
                                  currentIndex = 1;
                                });
                              },
                              child: Row(
                                children: [
                                  Container(
                                    height: 20,
                                    width: 20,
                                    padding: EdgeInsets.all(4),
                                    decoration: BoxDecoration(
                                      // color: AppColor.PrimaryDark,
                                        borderRadius: BorderRadius.circular(
                                            100),
                                        border: Border.all(
                                            color: AppColor().colorSecondary(),
                                            width: 2)
                                    ),
                                    child: Container(
                                      height: 15,
                                      width: 15,
                                      decoration: BoxDecoration(
                                          color: currentIndex == 1 ? AppColor()
                                              .colorSecondary() : Colors
                                              .transparent,
                                          borderRadius: BorderRadius.circular(
                                              100)),
                                    ),
                                  ),
                                  SizedBox(width: 10,),
                                  Text("Recruiter", style: TextStyle(
                                      color: AppColor().colorSecondary(),
                                      fontSize: 16),)
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: 15,),

                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 40),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            InkWell(
                              onTap: () {
                                setState(() {
                                  subIndex = 0;
                                });
                              },
                              child: Row(
                                children: [
                                  Container(
                                    height: 20,
                                    width: 20,
                                    padding: EdgeInsets.all(4),
                                    decoration: BoxDecoration(
                                      // color: AppColor.PrimaryDark,
                                        borderRadius: BorderRadius.circular(
                                            100),
                                        border: Border.all(
                                            color: AppColor.PrimaryDark,
                                            width: 2)
                                    ),
                                    child: Container(
                                      height: 15,
                                      width: 15,
                                      decoration: BoxDecoration(
                                          color: subIndex == 0 ? AppColor()
                                              .colorPrimary() : Colors
                                              .transparent,
                                          borderRadius: BorderRadius.circular(
                                              100)),
                                    ),
                                  ),
                                  SizedBox(width: 10,),
                                  Text("Email", style: TextStyle(
                                      color: AppColor.PrimaryDark,
                                      fontSize: 16),)
                                ],
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                setState(() {
                                  subIndex = 1;
                                });
                              },
                              child: Padding(
                                padding: EdgeInsets.only(right: 17),
                                child: Row(
                                  children: [
                                    Container(
                                      height: 20,
                                      width: 20,
                                      padding: EdgeInsets.all(4),
                                      decoration: BoxDecoration(
                                        // color: AppColor.PrimaryDark,
                                          borderRadius: BorderRadius.circular(
                                              100),
                                          border: Border.all(color: AppColor()
                                              .colorSecondary(), width: 2)
                                      ),
                                      child: Container(
                                        height: 15,
                                        width: 15,
                                        decoration: BoxDecoration(
                                            color: subIndex == 1 ? AppColor()
                                                .colorSecondary() : Colors
                                                .transparent,
                                            borderRadius: BorderRadius.circular(
                                                100)),
                                      ),
                                    ),
                                    SizedBox(width: 10,),
                                    Text("Mobile ", style: TextStyle(
                                        color: AppColor().colorSecondary(),
                                        fontSize: 16),)
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: 10,),
                      subIndex == 1 ? Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          /*margin: EdgeInsets.symmetric(horizontal: 12),*/
                          child: Padding(
                            padding: EdgeInsets.only(left: 40,top: 30),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                /* Text("Mobile No"),*/
                                /*Padding(
                                  padding: const EdgeInsets.only(top: 20),
                                  child:
                                  Card(
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: ImageIcon(
                                        AssetImage("assets/images1/phone1.png"),
                                        color: backgroundblack,
                                        size: 24,
                                      ),
                                    ),
                                  ),
                                ),
*/
                                Padding(
                                  padding: const EdgeInsets.only(
                                      right: 30, left: 10,),
                                  child: Container(
                                    child:
                                    Card(
                                      elevation: 2,
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                        BorderRadius.circular(15),
                                        //set border radius more than 50% of height and width to make circle
                                      ),
                                      child:
                                      Padding(
                                        padding:
                                        const EdgeInsets.only(left: 20),
                                        child:
                                        TextFormField(
                                          controller: mobileController,
                                          keyboardType: TextInputType.number,
                                          decoration: InputDecoration(
                                              hintText: "Enter mobile no.",
                                              border: InputBorder.none

                                            /*border: OutlineInputBorder(
                                            borderRadius: BorderRadius.circular(15),
                                            borderSide: BorderSide(
                                              color: AppColor().colorBg2(),
                                            ),
                                          )*/
                                          ),
                                        ),
                                      ),
                                    )
                                  /*  Card(
                                      child:
                                      TextFormField(
                                        controller: mobileController,
                                        keyboardType:
                                        TextInputType.number,
                                        maxLength: 10,
                                        decoration: InputDecoration(
                                            hintText: "  Enter mobile no",
                                            counterText: "",
                                            *//*border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(6),
                                      borderSide: BorderSide(color: AppColor().colorEdit()),
                                    )*//*
                                            border: InputBorder.none
                                        ),),
                                    ),*/
                                  ),
                                ),

                                SizedBox(height: 80,),
                                Padding(
                                  padding: const EdgeInsets.only(right: 30),
                                  child: Container(
                                    height: 45,
                                    margin: EdgeInsets.symmetric(
                                        horizontal: 20, vertical: 15),
                                    decoration: BoxDecoration(
                                        color: AppColor().colorPrimaryDark1(),
                                        borderRadius: BorderRadius.circular(10)),
                                    alignment: Alignment.center,
                                    child: Text("Send OTP", style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w600,
                                        fontSize: 16),),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 30),
                                  child: InkWell(
                                    onTap: () {
                                      Navigator.push(context, MaterialPageRoute(
                                          builder: (context) => signup()));
                                    },
                                    child: Padding(
                                      padding: const EdgeInsets.only(top: 40),
                                      child: Row(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Text("Dont have an account?"),
                                          Padding(
                                            padding: const EdgeInsets.only(left: 5),
                                            child: Text("Sign Up", style: TextStyle(
                                                color: AppColor().colorSecondary()),),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ),                              ],
                            ),
                          ),
                        ),
                      ) :
                      Container(
                        /*margin: EdgeInsets.symmetric(horizontal: 12),*/
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [

                                  Expanded(
                                    child: Container(
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment
                                            .start,
                                        children: [

                                          Padding(
                                            padding: const EdgeInsets.only(
                                                right: 10, left: 70),
                                            child:
                                            Card(
                                              elevation: 2,
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                BorderRadius.circular(15),
                                                //set border radius more than 50% of height and width to make circle
                                              ),
                                              child:
                                              Padding(
                                                padding:
                                                const EdgeInsets.only(left: 20),
                                                child: TextFormField(
                                                  controller: emailController,
                                                  keyboardType: TextInputType
                                                      .name,
                                                  decoration: InputDecoration(
                                                      hintText: "Email",
                                                      border: InputBorder.none

                                                    /*border: OutlineInputBorder(
                                            borderRadius: BorderRadius.circular(15),
                                            borderSide: BorderSide(
                                              color: AppColor().colorBg2(),
                                            ),
                                          )*/
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                          SizedBox(height: 20,),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                right: 10, left: 70),
                                            child:
                                            Card(
                                              elevation: 2,
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                BorderRadius.circular(15),
                                                //set border radius more than 50% of height and width to make circle
                                              ),
                                              child:
                                              Padding(
                                                padding:
                                                const EdgeInsets.only(left: 20),
                                                child: TextFormField(
                                                  controller: passwordController,
                                                  keyboardType: TextInputType
                                                      .number,
                                                  decoration: InputDecoration(

                                                      hintText: "Enter password",
                                                      border: InputBorder.none

                                                    /*border: OutlineInputBorder(
                                            borderRadius: BorderRadius.circular(15),
                                            borderSide: BorderSide(
                                              color: AppColor().colorBg2(),
                                            ),
                                          )*/
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
/*
                                   InkWell(
                              onTap: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context) => Home()));
                              },
                              child:
                              Container(
                                height: 60,
                                width: 60,
                                margin: EdgeInsets.only(bottom: 10),
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  color: AppColor().colorSecondary(),
                                  borderRadius: BorderRadius.circular(100),
                                ),
                               */
           /* child: Text("SIGN IN",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w400,fontSize: 14),),*//*

                            ) ),
*/
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 250, top: 8),
                              child: Text("Forgot Password?",
                                style: TextStyle(color: Colors.black54),),
                            ),
                            SizedBox(height: 30,),
                            Padding(
                              padding: const EdgeInsets.only(right: 30,left: 30),
                              child: ElevatedButton.icon(style: ElevatedButton.styleFrom(
                                backgroundColor: backgroundblack,
                                minimumSize: Size.fromHeight(50),


                              ),
                                  icon: Icon(Icons.lock_open, size: 32,),
                                  label: Text(
                                    'Sign In',
                                    style: TextStyle(fontSize: 19),
                                  ),
                                  onPressed: signIn
                              ),
                            ),


                            /*InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => Homepage()));
                        },
                        child:
                        Padding(
                          padding: const EdgeInsets.only(left: 40),
                          child: Container(
                            height: 45,
                            margin: EdgeInsets.symmetric(horizontal: 25,vertical: 25),
                            decoration: BoxDecoration(color: AppColor.PrimaryDark,borderRadius: BorderRadius.circular(10)),
                            alignment: Alignment.center,
                            child: Text("Sign in",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w600,fontSize: 16),),
                          ),
                        ),
                      ),*/
                            InkWell(
                              onTap: () {
                                Navigator.push(context, MaterialPageRoute(
                                    builder: (context) => signup()));
                              },
                              child: Padding(
                                padding: const EdgeInsets.only(top: 40),
                                child: Row(
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text("Dont have an account?"),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 5),
                                      child: Text("Sign Up", style: TextStyle(
                                          color: AppColor().colorSecondary()),),
                                    )
                                  ],
                                ),
                              ),
                            ),


                          ],

                        ),

                      )


                    ],
                  ),
                ),

              ),

            ],),
        ));

  }
  Future signIn() async {
    await FirebaseAuth.instance.signInWithEmailAndPassword(
      email: emailController.text.trim(),
      password: passwordController.text.trim(),

    );
  }
}



