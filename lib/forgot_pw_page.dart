import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ForgotPasswordPage extends StatefulWidget {
  const ForgotPasswordPage({Key? key}) : super(key: key);

  @override
  State<ForgotPasswordPage> createState() => _ForgotPasswordPageState();
}

class _ForgotPasswordPageState extends State<ForgotPasswordPage> {
  final emailController = TextEditingController();

  Future passwordReset() async {
    try {
      await FirebaseAuth.instance
          .sendPasswordResetEmail(email: emailController.text.trim());
      // ignore: use_build_context_synchronously
      showDialog(
          context: context,
          builder: (context) {
            return const AlertDialog(
              content: Text('Password reset link sent! Check your email.'),
            );
          });
    } on FirebaseAuthException catch (e) {
      showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              content: Text(e.message.toString()),
            );
          });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 221, 244, 239),
      appBar: AppBar(
          centerTitle: true,
          backgroundColor: const Color.fromARGB(255, 255, 255, 255),
          title: const Text(
            'GroW Garden',
            style: TextStyle(
                fontFamily: 'Alkatra',
                fontWeight: FontWeight.bold,
                color: Colors.black,
                fontSize: 32),
          ),
          leading: IconButton(
            icon: Image.asset('assets/images/logo5.png'),
            onPressed: () {},
          )),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 25.0),
            child: Text(
                'Enter your email and we will send you a link to reset your password',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 20)),
          ),
          const SizedBox(height: 40),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: TextField(
                controller: emailController,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                    hintText: "Email Address",
                    prefixIcon: const Icon(
                      Icons.email,
                      color: Color.fromARGB(255, 109, 159, 134),
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide:
                            const BorderSide(color: Colors.white, width: 1.0)),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide:
                            const BorderSide(color: Colors.black, width: 1.0)),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30)))),
          ),
          const SizedBox(height: 40),
          MaterialButton(
            onPressed: passwordReset,
            color: const Color.fromARGB(255, 115, 167, 117),
            child: const Text('Reset Password'),
          ),
          const SizedBox(height: 50),
          RichText(
              text: TextSpan(
                  text: "Remember your password?  ",
                  style: const TextStyle(
                      color: Color.fromARGB(255, 69, 68, 68), fontSize: 16),
                  children: [
                TextSpan(
                  recognizer: TapGestureRecognizer()..onTap = () => Get.back(),
                  text: "Sign In",
                  style: const TextStyle(
                      color: Colors.blue,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                )
              ])),
        ],
      ),
    );
  }
}
