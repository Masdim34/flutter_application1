import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_application_1/Signup.dart';
import 'package:flutter_application_1/Welcome1.dart';
import 'package:flutter_application_1/home.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'main.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:carousel_slider/carousel_slider.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool _obscureText = true;
  late TextEditingController _passwordController;
  String text = 'Welcome back';
  @override
  void initState() {
    super.initState();
    _passwordController = TextEditingController();
  }

  @override
  void dispose() {
    _passwordController.dispose();
    super.dispose();
  }

  void _togglePasswordVisibility() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
          resizeToAvoidBottomInset: false,
          body: Container(
            width: double.infinity,
            height: double.infinity,
            decoration: const BoxDecoration(
                image: DecorationImage(
              opacity: 180,
              image: AssetImage('assets/images/bg2.jpg'),
              fit: BoxFit.fitWidth,
            )),
          ),
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: SafeArea(
              child: SingleChildScrollView(
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                Padding(
                    padding:
                        const EdgeInsetsDirectional.only(start: 36, top: 89),
                    child: Text(text,
                        style: const TextStyle(
                            letterSpacing: -0.3,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.bold,
                            color: Color(0xffAA80F1),
                            fontSize: 32))),
                const Padding(
                    padding:
                        EdgeInsetsDirectional.only(start: 36, top: 5, end: 0),
                    child: Text(
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
                        style: TextStyle(
                            letterSpacing: -0.3,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w300,
                            color: Color(0xff646464),
                            fontSize: 16))),
                const Padding(
                    padding: EdgeInsetsDirectional.only(start: 36, top: 20),
                    child: Text('Email',
                        style: TextStyle(
                            letterSpacing: -0.3,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w500,
                            color: Color(0xff646464),
                            fontSize: 20))),
                Container(
                    margin: const EdgeInsets.only(
                        bottom: 15, left: 36, right: 36, top: 15),
                    decoration: BoxDecoration(
                        color: const Color(0xffF0E6FF),
                        borderRadius: BorderRadius.circular(10)),
                    padding: const EdgeInsets.only(
                        top: 5, bottom: 5, left: 36, right: 36),
                    child: const TextField(
                        decoration: InputDecoration(
                            hintText: 'Email adress', border: InputBorder.none),
                        showCursor: false)),
                const Padding(
                    padding: EdgeInsetsDirectional.only(start: 36),
                    child: Text('Password',
                        style: TextStyle(
                            letterSpacing: -0.3,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w500,
                            color: Color(0xff646464),
                            fontSize: 20))),
                Container(
                    margin: const EdgeInsets.only(
                        bottom: 15, left: 36, right: 36, top: 15),
                    decoration: BoxDecoration(
                        color: const Color(0xffF0E6FF),
                        borderRadius: BorderRadius.circular(10)),
                    padding: const EdgeInsets.only(
                        top: 5, bottom: 5, left: 36, right: 36),
                    child: TextField(
                        controller: _passwordController,
                        obscureText: _obscureText,
                        decoration: InputDecoration(
                          suffixIconConstraints: const BoxConstraints(
                              maxHeight: 25,
                              maxWidth: 25,
                              minHeight: 18,
                              minWidth: 18),
                          suffixIcon: InkWell(
                              onTap: _togglePasswordVisibility,
                              child: SvgPicture.asset(
                                'assets/icons/bi_eye-fill.svg',
                                colorFilter: const ColorFilter.mode(
                                    Color.fromARGB(255, 0, 0, 0),
                                    BlendMode.srcIn),
                              )),
                          hintText: 'Password',
                          border: InputBorder.none,
                        ),
                        showCursor: false)),
                Row(mainAxisAlignment: MainAxisAlignment.end, children: const [
                  Padding(
                    padding: EdgeInsets.only(right: 36),
                    child: Text('Forgot password?',
                        style: TextStyle(
                            letterSpacing: -0.3,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w500,
                            color: Color(0xffAA80F1),
                            fontSize: 18)),
                  )
                ]),
                InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Home()));
                    },
                    child: Container(
                      margin:
                          const EdgeInsets.only(top: 50, left: 36, right: 36),
                      padding: const EdgeInsets.only(top: 15, bottom: 15),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: const Color(0xffAA80F1)),
                      child: const Center(
                          child: Text('Login',
                              style: TextStyle(
                                  letterSpacing: -0.3,
                                  fontFamily: 'Montserrat',
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white,
                                  fontSize: 18))),
                    )),
                Container(
                    margin: const EdgeInsets.only(top: 10, left: 36, right: 36),
                    padding: const EdgeInsets.only(top: 15, bottom: 15),
                    child: const Center(
                        child: Text(
                      'Or',
                      style: TextStyle(
                          fontSize: 18,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w500,
                          color: Color(0xff646464)),
                    ))),
                InkWell(
                  onTap: () {
                    setState(() {});
                  },
                  child: Container(
                    margin: const EdgeInsets.only(top: 5, left: 36, right: 36),
                    padding: const EdgeInsets.only(top: 15, bottom: 15),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: const Color(0xffAA80F1)),
                        color: Colors.white),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SvgPicture.asset('assets/icons/Google.svg'),
                          const Text('Login with Google',
                              style: TextStyle(
                                  letterSpacing: -0.3,
                                  fontFamily: 'Montserrat',
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xffAA80F1),
                                  fontSize: 18))
                        ]),
                  ),
                ),
                Container(
                    margin: const EdgeInsets.only(top: 5, left: 36, right: 36),
                    padding: const EdgeInsets.only(top: 15, bottom: 15),
                    child: Center(
                        child: Text.rich(TextSpan(
                            text: "Don't have account? ",
                            style: const TextStyle(
                                fontFamily: 'Montserrat',
                                fontSize: 18,
                                fontWeight: FontWeight.w500),
                            children: [
                          WidgetSpan(
                              alignment: PlaceholderAlignment.middle,
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const SIgnup()));
                                },
                                child: const Text('Sign up',
                                    style: TextStyle(
                                        color: Color(0xffAA80F1),
                                        fontSize: 18,
                                        fontFamily: 'Montserrat',
                                        fontWeight: FontWeight.w500)),
                              ))
                        ]))))
              ]))),
        ),
      ],
    );
  }
}
