import 'dart:html';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:onboarding_screen/component/my_button.dart';
import 'package:onboarding_screen/component/my_textfield.dart';

class SignUpScreen extends StatelessWidget {
  SignUpScreen({super.key});

  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final repasswordController = TextEditingController();
  final imageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        child: Column(
          children: [
            const Spacer(),
            Text(
              'Welcome to PARADISE',
              style: GoogleFonts.lato(
                textStyle: Theme.of(context).textTheme.displayLarge,
                fontSize: 24,
                fontWeight: FontWeight.w700,
                fontStyle: FontStyle.normal,
              ),
            ),
            Text(
              '\n to get to PARADISE,pls provide your information to crate account\n',
              style: GoogleFonts.lato(
                textStyle: Theme.of(context).textTheme.displaySmall,
                fontSize: 24,
                fontWeight: FontWeight.w700,
                fontStyle: FontStyle.normal,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            MyTextField(
                Controller: nameController,
                hintText: 'Enter your name or I will SHOOT',
                obscureText: false,
                labelText: 'Name'),
              const SizedBox(
              height: 20,
            ),  
            MyTextField(
                Controller: emailController,
                hintText: 'Enter your email Do not ask',
                obscureText: false,
                labelText: 'Email' ), 
            const SizedBox(
              height: 20,
            ),
            MyTextField(
                Controller: passwordController,
                hintText: 'Enter your password',
                obscureText: true,
                labelText: 'Password' ),
            const SizedBox(
              height: 20,
            ),
            MyTextField(
                Controller: repasswordController,
                hintText: 'Enter your re-password Dont ask just fill in',
                obscureText: true,
                labelText: 'Re-Password' ),
                const SizedBox(
              height: 20,),
                 MyButton(onTap: (){}, hinText:'Sign Up'),
                 const SizedBox(
              height: 20,
            ),

            Padding(padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Row(children: [
              Expanded(child: Divider(thickness: 0.5,color: Colors.grey.shade400,),),
              Padding(padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Text('Or Continue with',
              style: TextStyle(color: Colors.grey.shade800),),),
              Expanded(child: Divider(thickness: 0.5,color: Colors.grey.shade400,),),
            ],),
            ),

            const Spacer(),

          ],
        ),
      ),
    );
  }
}
