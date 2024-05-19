import 'dart:io';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_application_1/Welcome1.dart';
import 'package:flutter_application_1/home.dart';
import 'package:flutter_application_1/login.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'main.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:carousel_slider/carousel_slider.dart';

class SIgnup extends StatefulWidget {
  const SIgnup({super.key});

  @override
  State<SIgnup> createState() => _SIgnupState();
}

class _SIgnupState extends State<SIgnup> {
  bool _obscureText = true;
  late TextEditingController _passwordController;
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

  bool _isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Scaffold(
          resizeToAvoidBottomInset: false,
          body: Container(
              width: double.infinity,
              height: double.infinity,
              decoration: const BoxDecoration(
                image: DecorationImage(
                    opacity: 180,
                    image: AssetImage('assets/images/bg2.jpg'),
                    fit: BoxFit.fitWidth),
              ))),
      Scaffold(
          backgroundColor: Colors.transparent,
          body: SafeArea(
              child: SingleChildScrollView(
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                const Padding(
                  padding: EdgeInsets.only(left: 36, top: 89),
                  child: Text('Sign up',
                      style: TextStyle(
                          fontSize: 32,
                          color: Color(0xffAA80F1),
                          fontWeight: FontWeight.w700,
                          fontFamily: 'Montserrat',
                          letterSpacing: -0.3)),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 36, top: 5),
                  child: Text(
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
                      style: TextStyle(
                          color: Color(0xff646464),
                          fontSize: 16,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w300)),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 36, top: 15, bottom: 5),
                  child: Text('Name',
                      style: TextStyle(
                          color: Color(0xff646464),
                          fontFamily: 'Montserrat',
                          fontSize: 20,
                          fontWeight: FontWeight.w500)),
                ),
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
                            hintText: 'Your Name', border: InputBorder.none),
                        showCursor: false)),
                const Padding(
                  padding: EdgeInsets.only(top: 15, left: 36, bottom: 5),
                  child: Text('Email',
                      style: TextStyle(
                          color: Color(0xff646464),
                          fontFamily: 'Montserrat',
                          fontSize: 20,
                          fontWeight: FontWeight.w500)),
                ),
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
                  padding: EdgeInsets.only(left: 36, top: 15, bottom: 5),
                  child: Text('Password',
                      style: TextStyle(
                          color: Color(0xff646464),
                          fontFamily: 'Montserrat',
                          fontSize: 20,
                          fontWeight: FontWeight.w500)),
                ),
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
                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 36, right: 36),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Checkbox(
                              value: _isChecked,
                              onChanged: (value) {
                                setState(() {
                                  _isChecked = value!;
                                });
                              }),
                          Expanded(
                            child: Container(
                                margin: const EdgeInsets.only(right: 0, top: 0),
                                child: RichText(
                                    softWrap: true,
                                    text: TextSpan(children: <TextSpan>[
                                      const TextSpan(
                                          text: 'I aggre to the ',
                                          style: TextStyle(
                                              color: Color(0xff646464),
                                              fontFamily: 'Montserrat',
                                              fontSize: 15,
                                              fontWeight: FontWeight.w500)),
                                      TextSpan(
                                          text: 'Terms of Service ',
                                          style: const TextStyle(
                                            color: Color(0xffAA80F1),
                                            fontFamily: 'Montserrat',
                                            fontSize: 15,
                                            fontWeight: FontWeight.w500,
                                          ),
                                          recognizer: TapGestureRecognizer()
                                            ..onTap = () {
                                              Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                      builder: (context) =>
                                                          const Login()));
                                            }),
                                      const TextSpan(
                                          text: 'and ',
                                          style: TextStyle(
                                              color: Color(0xff646464),
                                              fontFamily: 'Montserrat',
                                              fontSize: 15,
                                              fontWeight: FontWeight.w500)),
                                      TextSpan(
                                          text: 'Privacy Policy',
                                          style: const TextStyle(
                                              color: Color(0xffAA80F1),
                                              fontFamily: 'Montserrat',
                                              fontSize: 15,
                                              fontWeight: FontWeight.w500),
                                          recognizer: TapGestureRecognizer()
                                            ..onTap = () {
                                              Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                      builder: (context) =>
                                                          const Login()));
                                            })
                                    ]))),
                          ),
                        ]),
                  ),
                ),
                Center(
                    child: InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const Home()));
                  },
                  child: Container(
                      padding: const EdgeInsets.only(
                        top: 10,
                        bottom: 10,
                        left: 72,
                        right: 72,
                      ),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: const Color(0xffAA80F1)),
                      margin:
                          const EdgeInsets.only(left: 36, right: 36, top: 20),
                      child: const Text('Create Account',
                          style: TextStyle(
                              color: Color.fromARGB(255, 255, 255, 255),
                              fontFamily: 'Montserrat',
                              fontSize: 18,
                              fontWeight: FontWeight.w500))),
                )),
                Center(
                    child: Container(
                  margin: const EdgeInsets.only(top: 20, left: 36, right: 36),
                  child: Center(
                      child: Text.rich(
                    TextSpan(
                      text: "Already have an account? ",
                      style: const TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 15,
                          fontWeight: FontWeight.w500),
                      children: [
                        WidgetSpan(
                          alignment: PlaceholderAlignment.middle,
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const Login()));
                            },
                            child: const Text('Login',
                                style: TextStyle(
                                    color: Color(0xffAA80F1),
                                    fontSize: 15,
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.w500)),
                          ),
                        )
                      ],
                    ),
                  )),
                ))
              ]))))
    ]);
  }
}
