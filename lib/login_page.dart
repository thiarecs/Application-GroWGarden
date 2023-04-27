import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:grow_garden/auth_controller.dart';
import 'package:grow_garden/forgot_pw_page.dart';
import 'package:grow_garden/signup_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key, required String title, String? email})
      : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 221, 244, 239),
        body: SingleChildScrollView(
            child: Column(
          children: [
            Container(
              width: w,
              height: h * 0.3,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/images/newwlogo.png"),
                      fit: BoxFit.cover)),
            ),
            const SizedBox(height: 10.0),
            Container(
              //This creates the text above the place indicated to put the email/password
              margin: const EdgeInsets.only(left: 20, right: 20),
              width: w,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text("Hello!",
                      style:
                          TextStyle(fontSize: 70, fontWeight: FontWeight.bold)),
                  const Text("Sign into your account",
                      style: TextStyle(
                        fontSize: 20,
                        color: Color.fromARGB(255, 69, 68, 68),
                      )),
                  const SizedBox(
                    height: 50,
                  ),
                  //this is the place indiciated for the user to put their email
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30),
                        boxShadow: [
                          BoxShadow(
                              blurRadius: 10,
                              spreadRadius: 7,
                              offset: const Offset(1, 1),
                              color: Colors.grey.withOpacity(0.2))
                        ]),
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
                                borderSide: const BorderSide(
                                    color: Color.fromARGB(255, 221, 244, 239),
                                    width: 1.0)),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30),
                                borderSide: const BorderSide(
                                    color: Color.fromARGB(255, 221, 244, 239),
                                    width: 1.0)),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30)))),
                  ),
                  //this is the place indiciated for the user to put their password
                  const SizedBox(height: 20),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30),
                        boxShadow: [
                          BoxShadow(
                              blurRadius: 10,
                              spreadRadius: 7,
                              offset: const Offset(1, 1),
                              color: Colors.grey.withOpacity(0.2))
                        ]),
                    child: TextField(
                        controller: passwordController,
                        obscureText: true,
                        decoration: InputDecoration(
                            hintText: "Password",
                            prefixIcon: const Icon(
                              Icons.key,
                              color: Color.fromARGB(255, 109, 159, 134),
                            ),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30),
                                borderSide: const BorderSide(
                                    color: Color.fromARGB(255, 221, 244, 239),
                                    width: 1.0)),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30),
                                borderSide: const BorderSide(
                                    color: Color.fromARGB(255, 221, 244, 239),
                                    width: 1.0)),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30)))),
                  ),
                  const SizedBox(height: 10),
                ],
              ),
            ),
            //places the forgot password buttona nd directs to the forgot password page
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return const ForgotPasswordPage();
                          },
                        ),
                      );
                    },
                    child: const Text(
                      'Forgot Password?',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  )
                ],
              ),
            ),
            //this creates the button to sign in that directs the user to the homepage
            const SizedBox(height: 20),
            GestureDetector(
              onTap: () {
                AuthController.instance.login(emailController.text.trim(),
                    passwordController.text.trim());
              },
              child: Container(
                width: w * 0.5,
                height: h * 0.08,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    image: const DecorationImage(
                        image: AssetImage("assets/images/newcolor.png"),
                        fit: BoxFit.cover)),
                child: const Center(
                  child: Text(
                    "Sign in",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            //this creates button if the user forgot their password and will direct them
            //to the forgot password page
            const SizedBox(height: 20),
            RichText(
                text: TextSpan(
                    text: "Don't have an account? ",
                    style: const TextStyle(
                        color: Color.fromARGB(255, 69, 68, 68), fontSize: 16),
                    children: [
                  TextSpan(
                      text: "Sign Up",
                      style: const TextStyle(
                          color: Colors.blue,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                      // ignore: prefer_const_constructors
                      recognizer: TapGestureRecognizer()
                        ..onTap = () => Get.to(() => const SignUpPage(
                              title: '',
                            )))
                ])),
          ],
        )));
  }
}
