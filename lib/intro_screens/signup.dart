// ignore_for_file: unnecessary_const, prefer_const_constructors, sort_child_properties_last, use_build_context_synchronously
import 'dart:developer';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sign_button/sign_button.dart';
// import '../screens/main.dart';
import 'login.dart';
// import 'package:firebase_auth/firebase_auth.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';

class Signup extends StatefulWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController cpasswordController = TextEditingController();
  // void signUp() async {
  //   String email = emailController.text.trim();
  //   String password = passwordController.text.trim();
  //   String cpassword = cpasswordController.text.trim();

  //   if (email == '' || password == '' || cpassword == '') {
  //     log('Please fill the details');
  //   } else if (password != cpassword) {
  //     log('Password do not match!');
  //   } else {
  //     try {
  //       UserCredential userCredential =
  //           await FirebaseAuth.instance.createUserWithEmailAndPassword(
  //         email: email,
  //         password: password,
  //       );
  //       if (userCredential.user != null) {
  //         Navigator.push(
  //             context, CupertinoPageRoute(builder: (context) => MainPage()));
  //       }
  //     } on FirebaseAuthException catch (ex) {
  //       log((ex.code.toString()));
  //     }
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        backgroundColor: Color(0xFF262525),
        body: Center(
          child: SingleChildScrollView(
            padding: EdgeInsets.all(10),
            reverse: true,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Lottie.asset('assets/chat_bubbles.json', width: 150),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Register Here!',
                  style: GoogleFonts.pacifico(
                      fontSize: 45,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFF2CC5B5)),
                  // color: Color(0xFF2CC5B5)),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  textAlign: TextAlign.center,
                  'Your friends are already here, join with them.',
                  style: GoogleFonts.comfortaa(
                      fontSize: 22,
                      fontWeight: FontWeight.w500,
                      height: 1.5,
                      color: Color.fromARGB(255, 255, 255, 255)),
                  // color: Color(0xFF2CC5B5)),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 30, top: 10, bottom: 10, right: 30),
                  child: TextFormField(
                    // controller: ,
                    style: GoogleFonts.comfortaa(
                        fontSize: 18, color: Colors.white),
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      prefixIcon: const Padding(
                        padding:
                            EdgeInsets.all(0), // add padding to adjust icon
                        child: const Icon(
                          EvaIcons.phoneOutline,
                          color: Colors.white,
                        ),
                      ),
                      border: InputBorder.none,
                      labelText: 'Phone Number',
                      labelStyle: const TextStyle(color: Colors.white),
                      hintText: '+91 00000 00000',
                      hintStyle: const TextStyle(color: Colors.white54),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: const BorderSide(
                          color: Colors.white54,
                          width: 2.0,
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: const BorderSide(
                          color: Colors.white54,
                          width: 2.0,
                        ),
                      ),
                      // hintTextDirection: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 30, top: 10, bottom: 10, right: 30),
                  child: TextFormField(
                    controller: emailController,
                    style: GoogleFonts.comfortaa(
                        fontSize: 18, color: Colors.white),
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      prefixIcon: const Padding(
                        padding:
                            EdgeInsets.all(0), // add padding to adjust icon
                        child: const Icon(
                          EvaIcons.emailOutline,
                          color: Colors.white,
                        ),
                      ),
                      border: InputBorder.none,
                      labelText: 'Email',
                      labelStyle: const TextStyle(color: Colors.white),
                      hintText: 'Enter your email',
                      hintStyle: const TextStyle(color: Colors.white54),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: const BorderSide(
                          color: Colors.white54,
                          width: 2.0,
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: const BorderSide(
                          color: Colors.white54,
                          width: 2.0,
                        ),
                      ),
                      // hintTextDirection: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 30, top: 10, bottom: 10, right: 30),
                  child: TextFormField(
                    controller: passwordController,
                    style: GoogleFonts.comfortaa(
                        fontSize: 18, color: Colors.white),
                    keyboardType: TextInputType.text,
                    obscureText: true,
                    decoration: InputDecoration(
                        prefixIcon: const Padding(
                          padding:
                              EdgeInsets.all(0), // add padding to adjust icon
                          child: const Icon(
                            EvaIcons.lockOutline,
                            color: Colors.white,
                          ),
                        ),
                        border: InputBorder.none,
                        labelText: 'Password',
                        labelStyle: const TextStyle(color: Colors.white),
                        hintText: 'Enter password',
                        hintStyle: const TextStyle(color: Colors.white54),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide: const BorderSide(
                            color: Colors.white54,
                            width: 2.0,
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide: BorderSide(
                            color: Colors.white54,
                            width: 2.0,
                          ),
                        )),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 30, top: 10, bottom: 10, right: 30),
                  child: TextFormField(
                    controller: cpasswordController,
                    style: GoogleFonts.comfortaa(
                        fontSize: 18, color: Colors.white),
                    keyboardType: TextInputType.text,
                    obscureText: true,
                    decoration: InputDecoration(
                        prefixIcon: Padding(
                          padding:
                              EdgeInsets.all(0), // add padding to adjust icon
                          child: Icon(
                            EvaIcons.lockOutline,
                            color: Colors.white,
                          ),
                        ),
                        border: InputBorder.none,
                        labelText: 'Confirm Password',
                        labelStyle: const TextStyle(color: Colors.white),
                        hintText: 'Re-enter password',
                        hintStyle: const TextStyle(color: Colors.white54),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide: const BorderSide(
                            color: Colors.white54,
                            width: 2.0,
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide: BorderSide(
                            color: Colors.white54,
                            width: 2.0,
                          ),
                        )),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Color(0xFF2CC5B5)),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(100.0),
                          ),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text(
                          'Register',
                          style: GoogleFonts.comfortaa(
                              fontSize: 22,
                              color: Colors.white,
                              fontWeight: FontWeight.w700),
                        ),
                      ),
                      onPressed: () {}
                      // signUp,
                      // () {
                      //   Navigator.push(
                      //     context,
                      //     MaterialPageRoute(builder: (context) => Homepage()),
                      //   );
                      //The user picked true.
                      // },
                      ),
                ),
                const SizedBox(
                  height: 20.0,
                  width: 150,
                  child: Divider(
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SignInButton.mini(
                      padding: (8),
                      buttonType: ButtonType.google,
                      onPressed: () {},
                    ),
                    SignInButton.mini(
                      padding: (8),
                      buttonType: ButtonType.facebook,
                      onPressed: () {},
                    ),
                    SignInButton.mini(
                      padding: (8),
                      buttonType: ButtonType.twitter,
                      onPressed: () {},
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'Already an user?',
                      style: GoogleFonts.comfortaa(
                          fontSize: 20, color: Colors.white),
                    ),
                    TextButton(
                      child: Text(
                        'Login',
                        style: GoogleFonts.comfortaa(
                            fontSize: 20,
                            color: Color(0xFF2CC5B5),
                            fontWeight: FontWeight.w700),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Login()),
                        );
                      },
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}



// TextEditingController nameController = TextEditingController();
// TextEditingController passwordController = TextEditingController();
