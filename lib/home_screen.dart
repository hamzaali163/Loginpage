// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:loginform/sign_up_page.dart';
import 'package:loginform/forgot_pass.dart';
import 'package:loginform/main_page.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String email = '';

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(height: 50),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image(
                      image: AssetImage('images/logo.png'),
                      height: 50,
                      width: 50,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Maintenance',
                          style: TextStyle(
                            fontFamily: 'Rubik medium',
                            fontSize: 24,
                            color: Color(0xff203142),
                          ),
                        ),
                        Text(
                          'Box',
                          style: TextStyle(
                            fontFamily: 'Rubik medium',
                            fontSize: 24,
                            color: Color(0xffF9703B),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 40,
                ),
                const Center(
                  child: Text(
                    'Log In',
                    style: TextStyle(
                      fontSize: 24,
                      fontFamily: 'Rubik medium',
                      color: Color(0xff203142),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                const Center(
                  child: Text(
                    'Enter your email and phone number\n to log in',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 16,
                      fontFamily: 'Rubik Regular',
                      fontWeight: FontWeight.bold,
                      color: Color(0xff4C5980),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      hintText: 'Enter Email',
                      fillColor: const Color(0xffF8F9FA),
                      filled: true,
                      prefixIcon: const Icon(
                        Icons.email,
                        color: Color(0xffF9703B),
                      ),
                      //suffixIcon: const Icon(Icons.visibility_off_outlined),
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Color(0xff323F4B),
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Color(0xff323F4B),
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 20,
                    right: 20,
                    top: 15,
                    //bottom: 45,
                  ),
                  child: TextFormField(
                    keyboardType: TextInputType.visiblePassword,
                    decoration: InputDecoration(
                      hintText: 'Enter Password',
                      fillColor: const Color(0xffF8F9FA),
                      filled: true,
                      prefixIcon: const Icon(
                        Icons.lock,
                        color: Color(0xffF9703B),
                      ),
                      suffixIcon: const Icon(Icons.visibility_off_outlined),
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Color(0xff323F4B),
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Color(0xff323F4B),
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 2, right: 20),
                      child: TextButton(
                        onPressed: () {},
                        child: TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => ForgotPass(),
                              ),
                            );
                          },
                          child: const Text(
                            "Forgot Password?",
                            style: TextStyle(
                                decoration: TextDecoration.underline,
                                fontSize: 16),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 100,
                ),

                //insert the component here:
                InkWell(
                  onTap: () async {
                    SharedPreferences sp =
                        await SharedPreferences.getInstance();
                    sp.setBool('islogin', true);
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const MainPage(),
                      ),
                    );
                  },
                  child: Container(
                    width: 300,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(13),
                      color: const Color(0xffF9703B),
                    ),
                    child: const Center(
                      child: Text(
                        'Log In',
                        style: TextStyle(
                          fontFamily: 'Rubik Regular',
                          fontSize: 18,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 5),
                Row(
                  // crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      textAlign: TextAlign.center,
                      'Dont have an account?',
                      style: TextStyle(
                        fontFamily: 'Rubik Regular',
                        fontSize: 16,
                        color: Color(0xff4C5980),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => SignUp(),
                          ),
                        );
                      },
                      child: const Text(
                        textAlign: TextAlign.center,
                        'Sign Up',
                        style: TextStyle(
                          fontFamily: 'Rubik Medium',
                          fontSize: 17,
                          color: Color(0xffF9703B),
                        ),
                      ),
                    ),
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
