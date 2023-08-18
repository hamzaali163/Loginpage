import 'package:flutter/material.dart';
import 'package:loginform/components.dart';

class SignUp extends StatelessWidget {
  SignUp({Key? key}) : super(key: key);

  // This widget is the root of your application.

  final namecontroller = TextEditingController();
  final emailcontroller = TextEditingController();
  final phonecontroller = TextEditingController();
  final passwordcontroller = TextEditingController();
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
                    'Sign Up',
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
                MyButton(
                  cntrl: namecontroller,
                  texthint: 'Name',
                  iconssname: const Icon(
                    Icons.person,
                    color: Color(0xffF9703B),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                MyButton(
                  cntrl: phonecontroller,
                  texthint: 'Phone',
                  iconssname: const Icon(
                    Icons.phone,
                    color: Color(0xffF9703B),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                MyButton(
                  texthint: 'Email',
                  iconssname: const Icon(
                    Icons.email_outlined,
                    color: Color(0xffF9703B),
                  ),
                  cntrl: emailcontroller,
                ),
                const SizedBox(
                  height: 20,
                ),
                MyButton(
                  cntrl: passwordcontroller,
                  texthint: 'Password',
                  iconssname: const Icon(
                    Icons.lock,
                    color: Color(0xffF9703B),
                  ),
                ),

                const SizedBox(
                  height: 30,
                ),

                //insert the component here:
                const ButtonOne(
                  buttontitle: 'Sign Up',
                ),
                const SizedBox(height: 15),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
