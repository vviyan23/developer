


import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_signin_button/button_list.dart';
import 'package:flutter_signin_button/button_view.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'dart:async';

import '../home/home_screen.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {

  Future<User?> _googleSignUp() async {
    try {
      final GoogleSignIn _googleSignIn = GoogleSignIn(
        scopes: ['email'],
      );
      final FirebaseAuth _auth = FirebaseAuth.instance;

      final GoogleSignInAccount? googleUser = await _googleSignIn.signIn();
      final GoogleSignInAuthentication googleAuth =
      await googleUser!.authentication;

      final AuthCredential credential = GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );

      final User? user = (await _auth.signInWithCredential(credential)).user;
     // print("signed in " + user.displayName);


      return user;
    } catch (e) {
      //print(e.message);
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: new Color(0xffd9d5d7),
      body: Container(
       /* decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage('assets/img/food.jpg'),
          ),
        ),*/
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          Container(
            height: 400,
            width: double.infinity,
           // color: Colors.blueAccent,

            child: Column(
             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [

              Text('Sign in to continue'),
              Text(' Talabat ' , style: TextStyle(fontSize: 50 , color: Color(0xff2e2026), shadows: [
                BoxShadow(
                  blurRadius: 5,
                  color: Color(0xffb3abaf),
                  offset: Offset(3, 3),
                ),

              ]),),
                buildWavyAnimation(),
              SignInButton(Buttons.Apple,text: 'Sign in with apple', onPressed: (){}),
              SignInButton(Buttons.Google,text: 'Sign in with google', onPressed: () async {
                await _googleSignUp().then(
                      (value) => Navigator.of(context).pushReplacement(
                    MaterialPageRoute(
                      builder: (context) => HomeScreen(),
                    ),
                  ),
                );
              },),
              Text('by Sign in you are agreeing to our' , style: TextStyle(color: Colors.grey[800]),),
                Text('Terms and Privacy Policy' , style: TextStyle(color: Colors.grey[800]),),
            ],),

          ),
        ],),
      ),

    );
  }
  Widget buildWavyAnimation() => Center(
    child: AnimatedTextKit(animatedTexts: [
      WavyAnimatedText('Food Delivery' , textStyle: TextStyle(color: Color(0xffCF933E), fontSize: 30, fontWeight: FontWeight.bold)),

    ],
    repeatForever: true,
    ),

  );
}
