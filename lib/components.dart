// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:loginform/home_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MyButton extends StatelessWidget {
  final String texthint;
  final Icon iconssname;
  final TextEditingController cntrl;
//required this.iconssname, required Color color
  const MyButton({
    super.key,
    required this.texthint,
    required this.iconssname,
    required this.cntrl,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: TextFormField(
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
          hintText: texthint,
          fillColor: const Color(0xffF8F9FA),
          filled: true,
          prefixIcon: iconssname,
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
    );
  }
}

class ButtonOne extends StatefulWidget {
  final String buttontitle;

  const ButtonOne({
    super.key,
    required this.buttontitle,
  });

  @override
  State<ButtonOne> createState() => _ButtonOneState();
}

class _ButtonOneState extends State<ButtonOne> {
  final namecontroller = TextEditingController();

  final emailcontroller = TextEditingController();

  final phonecontroller = TextEditingController();

  final passwordcontroller = TextEditingController();
  String email = "";

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () async {
        SharedPreferences sp = await SharedPreferences.getInstance();
        sp.setString('name', namecontroller.text.toString());
        sp.setString('email', emailcontroller.text.toString());
        sp.setString('phone', phonecontroller.text.toString());
        sp.setString('password', passwordcontroller.text.toString());
        //   sp.setBool('islogin', true);

        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const HomeScreen(),
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
        child: Center(
          child: Text(
            widget.buttontitle,
            style: const TextStyle(
              fontFamily: 'Rubik Medium',
              fontSize: 17,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
