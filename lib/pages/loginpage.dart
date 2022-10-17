import 'package:annexa/pages/signupscreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../main.dart';
import '../models/OAuthUser.dart';
import '../models/responses/login_response.dart';
import '../services/api_client.dart';
import '../widgets/reuseable_text.dart';
import 'mainpage.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final ApiClient _apiClient = getIt.get<ApiClient>();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff150c3f),
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height / 2.6,
                child: Image.asset("assets/images/png/Annexlogo.png"),
              ),
              const Padding(
                padding: const EdgeInsets.all(12.0),
                child: ReuseableText(
                    text: "Login",
                    size: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.white60,
                    wordSpacing: 0),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 20, left: 16),
                child: ReuseableText(
                    text: "Email",
                    size: 16,
                    fontWeight: FontWeight.normal,
                    color: Colors.white60,
                    wordSpacing: 0),
              ),
              Container(
                margin: const EdgeInsets.only(left: 22),
                child: TextFormField(
                    controller: _emailController,
                    style: const TextStyle(color: Colors.white),
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
                padding: EdgeInsets.only(top: 20, left: 16),
                child: ReuseableText(
                    text: "Password",
                    size: 16,
                    fontWeight: FontWeight.normal,
                    color: Colors.white60,
                    wordSpacing: 0),
              ),
              Container(
                margin: const EdgeInsets.only(left: 22),
                child: TextFormField(
                    controller: _passwordController,
                    obscureText: true,
                    style: const TextStyle(color: Colors.white),
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
              Container(
                alignment: Alignment.bottomRight,
                child: const ReuseableText(
                    text: "Forget Password?",
                    size: 16,
                    fontWeight: FontWeight.normal,
                    color: Colors.white60,
                    wordSpacing: 0),
              ),
              Center(
                child: Container(
                  margin: const EdgeInsets.only(top: 15),
                  height: MediaQuery.of(context).size.height / 18,
                  width: MediaQuery.of(context).size.width / 3,
                  child: MaterialButton(
                    elevation: 0,
                    onPressed: () async {
                      LoginResponse res = await User.login(
                          _emailController.text, _passwordController.text);
                      if (res.status == 200) {
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                          content: Text(res.messages),
                          backgroundColor: Colors.green,
                        ));
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => MainPage(),
                          ),
                        );
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text(res.messages),
                            backgroundColor: Colors.red,
                          ),
                        );
                      }
                      ;
                    },
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    color: const Color(0xff29214d),
                    child: const Text('LOGIN',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold)),
                  ),
                ),
              ),
              Center(
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SignupScreen()),
                    );
                  },
                  child: const ReuseableText(
                      text: "New to Annex Trading? Join Now",
                      size: 16,
                      fontWeight: FontWeight.normal,
                      color: Colors.white,
                      wordSpacing: 0),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
