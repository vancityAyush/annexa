import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../main.dart';
import '../services/api_client.dart';
import '../widgets/reuseable_text.dart';
import 'loginpage.dart';

class SignupScreen extends StatefulWidget {
  @override
  _SignupScreenState createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final ApiClient _apiClient = getIt.get<ApiClient>();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  TextEditingController _nameController = TextEditingController();
  TextEditingController _phoneController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xff150c3f),
        body: ListView(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: const EdgeInsets.only(left: 15, top: 20),
                  child: const ReuseableText(
                      text: 'Create Account',
                      size: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      wordSpacing: 0),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 20, left: 10),
                  child: ReuseableText(
                      text: "Full Name*",
                      size: 16,
                      fontWeight: FontWeight.normal,
                      color: Colors.white60,
                      wordSpacing: 0),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 16),
                  child: TextFormField(
                      style: const TextStyle(color: Colors.white),
                      controller: _nameController,
                      decoration: const InputDecoration(
                        hintText: 'Please Enter Full Name',
                        hintStyle: TextStyle(
                            color: Colors.white60,
                            fontWeight: FontWeight.normal,
                            fontSize: 16),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.white60),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.white60),
                        ),
                        border: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.white60),
                        ),
                      )),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 20, left: 10),
                  child: ReuseableText(
                      text: "Mobile Number*",
                      size: 16,
                      fontWeight: FontWeight.normal,
                      color: Colors.white60,
                      wordSpacing: 0),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 16, top: 10),
                  child: TextFormField(
                      style: const TextStyle(color: Colors.white),
                      controller: _phoneController,
                      decoration: const InputDecoration(
                        hintText: 'Please Enter Mobile/Phone',
                        hintStyle: TextStyle(
                            color: Colors.white60,
                            fontWeight: FontWeight.normal,
                            fontSize: 16),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.white60),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.white60),
                        ),
                        border: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.white60),
                        ),
                      )),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 20, left: 10),
                  child: ReuseableText(
                      text: "Email*",
                      size: 16,
                      fontWeight: FontWeight.normal,
                      color: Colors.white60,
                      wordSpacing: 0),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 15, bottom: 10),
                  child: TextFormField(
                      style: const TextStyle(color: Colors.white),
                      controller: _emailController,
                      decoration: const InputDecoration(
                        hintText: 'Please Enter Email',
                        hintStyle: TextStyle(
                            color: Colors.white60,
                            fontWeight: FontWeight.normal,
                            fontSize: 16),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.white60),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.white60),
                        ),
                        border: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.white60),
                        ),
                      )),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 20, left: 10),
                  child: ReuseableText(
                      text: "Password*",
                      size: 16,
                      fontWeight: FontWeight.normal,
                      color: Colors.white60,
                      wordSpacing: 0),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 15, bottom: 10),
                  child: TextFormField(
                      style: const TextStyle(color: Colors.white),
                      controller: _passwordController,
                      decoration: const InputDecoration(
                        hintText: 'Please Enter Password',
                        hintStyle: TextStyle(
                            color: Colors.white60,
                            fontWeight: FontWeight.normal,
                            fontSize: 16),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.white60),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.white60),
                        ),
                        border: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.white60),
                        ),
                      )),
                ),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: ReuseableText(
                      text:
                          "*By joining,I agree to the terms of use,privacy policy,IPR and agree to receive email  releted to our services",
                      size: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      wordSpacing: 0),
                ),
                Center(
                  child: Container(
                    margin: const EdgeInsets.only(top: 20),
                    height: MediaQuery.of(context).size.height / 17,
                    width: MediaQuery.of(context).size.width / 2,
                    child: MaterialButton(
                      elevation: 0,
                      onPressed: () {
                        _apiClient
                            .register(
                                _nameController.text,
                                _emailController.text,
                                _passwordController.text,
                                _phoneController.text)
                            .then((value) {
                          if (value.status == 200) {
                            //nav to login
                            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                              content: Text(
                                value.messages,
                                style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold),
                              ),
                              backgroundColor: Colors.green,
                            ));
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => LoginPage(),
                              ),
                            );
                          } else {
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text(value.messages),
                              ),
                            );
                          }
                        });
                      },
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      color: const Color(0xff29214d),
                      child: const Text('JOIN NOW',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.bold)),
                    ),
                  ),
                ),
              ],
            )
          ],
        ));
  }
}
