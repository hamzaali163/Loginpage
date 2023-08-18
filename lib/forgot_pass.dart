import 'package:flutter/material.dart';
import 'package:loginform/components.dart';

class ForgotPass extends StatelessWidget {
  final emailcontroller = TextEditingController();

  ForgotPass({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Forgot Password',
        ),
        backgroundColor: const Color(0xffF9703B),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Center(
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'Enter your email address ',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          const Text(
            'so we can send you your new password',
            style: TextStyle(
                color: Colors.black, fontSize: 16, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 30,
          ),
          MyButton(
            texthint: 'Enter Email',
            iconssname: const Icon(Icons.email_outlined),
            cntrl: emailcontroller,
          ),
          const SizedBox(
            height: 30,
          ),
          const ButtonOne(buttontitle: 'Send Email')
        ],
      ),
    );
  }
}
