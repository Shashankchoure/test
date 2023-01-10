import 'package:flutter/material.dart';
import 'package:test060/signin.dart';

import 'global.dart';
class signup extends StatefulWidget {
  const signup({Key? key}) : super(key: key);

  @override
  State<signup> createState() => _signupState();
}

class _signupState extends State<signup> {
  TextEditingController emailController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController mobileController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController yourNameController = TextEditingController();
  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();

  int currentIndex = 0;

  bool isVisible = false;

  showPassword() {
    setState(() {
      isVisible = !isVisible;
    });
  }

  @override
  Widget build(BuildContext context) {
    /*  return  Scaffold(
      body:
      Column(
        children: [
          Container(
            child:
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Image.asset(
                'assets/images/signin1.png',
              ),
            ),

          ),
          Text("Sign up",style: TextStyle(
              color:Colors.black,
              fontSize: 24,
              fontWeight: FontWeight.w500
          ),),


        ],
      ) ,


    );*/
    return SafeArea(
      child: Scaffold(
          resizeToAvoidBottomInset: false,
          // appBar: AppBar(
          //   elevation: 0,
          //   backgroundColor: Colors.white,
          //   automaticallyImplyLeading: false,
          //   title: Container(
          //       width: 100,

          //       height: 80,
          //       child: Image.asset("assets/authAssets/splash logo.png",fit: BoxFit.fill,)),
          // ),
          body: ListView(
            shrinkWrap: true,
            physics: ScrollPhysics(),
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 0.80,
                /*decoration: BoxDecoration(
                      image: DecorationImage(image: AssetImage("assets/images1/signin.png"),fit:BoxFit.fill)
                  ),*/
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 0),
                  child: Column(
                    children: [
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.only(top: 1),
                          child: Image.asset(
                            'assets/images1/signin.png',
                          ),
                        ),
                      ),
                      /*Container(
                          height: 60,
                          width: 80,
                          child: Image.asset("assets/authAssets/normalLogo.png",fit: BoxFit.fill,),),*/
                      Text(
                        "Sign Up",
                        style: TextStyle(
                          color: AppColor().appColorGrey(),
                          fontWeight: FontWeight.bold,
                          fontSize: 23,
                        ),
                      ),
                      SizedBox(
                        height: 18,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: InkWell(
                              onTap: () {
                                setState(() {
                                  currentIndex = 0;
                                });
                              },
                              child: Container(
                                height: 45,
                                width: MediaQuery.of(context).size.width,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  color: currentIndex == 0
                                      ? AppColor().colorPrimaryDark1()
                                      : Colors.white,
                                  /*  border: Border.all(
                                          color: AppColor().colorPrimaryDark1()
                                      )*/
                                ),
                                child: Text(
                                  "JOB SEEKER",
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                      color: currentIndex == 0
                                          ? Colors.white
                                          : AppColor.PrimaryDark),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 12,
                          ),
                          Expanded(
                            child: InkWell(
                              onTap: () {
                                setState(() {
                                  currentIndex = 1;
                                });
                              },
                              child: Container(
                                height: 45,
                                width: MediaQuery.of(context).size.width,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                    color: currentIndex == 1
                                        ? AppColor().colorPrimaryDark1()
                                        : Colors.transparent,
                                    borderRadius: BorderRadius.circular(6),
                                    border: Border.all(
                                        color: AppColor().colorPrimaryDark1())),
                                child: Text(
                                  "RECRUITER",
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                      color: currentIndex == 1
                                          ? Colors.white
                                          : AppColor.PrimaryDark),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Container(
                        //elevation: 0,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 0, right: 8),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(height: 20),

                              Container(height: 10),
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                      child: Padding(
                                        padding:
                                            const EdgeInsets.only(left: 40),
                                        child:
                                        Card(
                                          elevation: 8,
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(12)),

                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width: 1,
                                  ),
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [


  ],
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                      Container(
                        child:
                        Padding(
                          padding: const EdgeInsets.only(right: 3),
                          child: Column(
                            children: [
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 20, left: 50),
                        child:
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [

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
                                  controller: nameController,
                                  keyboardType: TextInputType.name,
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
                            currentIndex == 0
                                ? SizedBox.shrink()
                                : Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(
                                        height: 15,
                                      ),
                                      Card(
                                        elevation: 2,
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(15),
                                          //set border radius more than 50% of height and width to make circle
                                        ),
                                        child: Padding(
                                          padding:
                                              const EdgeInsets.only(left: 20),
                                          child: TextFormField(
                                            controller: nameController,
                                            keyboardType: TextInputType.name,
                                            decoration: InputDecoration(
                                                hintText: "Full Name",
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
                                    ],
                                  ),
                            currentIndex == 0
                                ? Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(
                                        height: 15,
                                      ),
                                      Card(
                                        elevation: 2,
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(15),
                                          //set border radius more than 50% of height and width to make circle
                                        ),
                                        child: Padding(
                                          padding:
                                              const EdgeInsets.only(left: 20),
                                          child: TextFormField(
                                            controller: nameController,
                                            keyboardType: TextInputType.name,
                                            decoration: InputDecoration(
                                                hintText: "First  Name",
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
                                      SizedBox(
                                        height: 15,
                                      ),
                                      Card(
                                        elevation: 2,
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(15),
                                          //set border radius more than 50% of height and width to make circle
                                        ),
                                        child: Padding(
                                          padding:
                                              const EdgeInsets.only(left: 20),
                                          child: TextFormField(
                                            controller: nameController,
                                            keyboardType: TextInputType.name,
                                            decoration: InputDecoration(
                                                hintText: "Last Name",
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
                                    ],
                                  )
                                : SizedBox.shrink(),
                            SizedBox(
                              height: 15,
                            ),
                            Card(
                              elevation: 2,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15),
                                //set border radius more than 50% of height and width to make circle
                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(left: 20),
                                child: TextFormField(
                                  controller: nameController,
                                  keyboardType: TextInputType.name,
                                  decoration: InputDecoration(
                                      hintText: "Mobile no.",
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
                            SizedBox(
                              height: 15,
                            ),
                            Card(
                              elevation: 2,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15),
                                //set border radius more than 50% of height and width to make circle
                              ),
                            ),
                            Card(
                              elevation: 2,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15),
                                //set border radius more than 50% of height and width to make circle
                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(left: 20),
                                child: TextFormField(
                                  controller: nameController,
                                  keyboardType: TextInputType.name,
                                  decoration: InputDecoration(
                                      hintText: "Password",
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
                            SizedBox(
                              height: 15,
                            ),
                            Card(
                              elevation: 2,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15),
                                //set border radius more than 50% of height and width to make circle
                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(left: 20),
                                child: TextFormField(
                                  controller: nameController,
                                  keyboardType: TextInputType.name,
                                  decoration: InputDecoration(
                                      hintText: "Confirm Password",
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
                            SizedBox(
                              height: 30,
                            ),
                            Align(
                              alignment: Alignment.center,
                              child: Container(
                                height: 45,
                                width: MediaQuery.of(context).size.width / 1.2,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                    color: AppColor().colorPrimaryDark1(),
                                    borderRadius: BorderRadius.circular(10)),
                                child: Text(
                                  "Submit",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 16),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Signin()));
                              },
                              child: Padding(
                                padding: const EdgeInsets.only(top: 30),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text("Don't have an account?"),
                                    Text(
                                      "Sign In",
                                      style: TextStyle(
                                          color: AppColor().colorSecondary()),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            Text("")
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          )),
    );
  }
}
