import 'package:amar_dokan/login_screen.dart';
import 'package:amar_dokan/password_forget_screen.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Sign Up Screen",
          style: TextStyle(color: Colors.white, fontSize: 22),
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Lottie.asset(
                'assets/animation/loginAnimation.json',
                width: 200,
                height: 200,
                fit: BoxFit.cover,
              ),

              Padding(
                padding: EdgeInsets.only(right: 25, left: 25, top: 20),
                child: Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      Text("SIGN UP", style: TextStyle(fontSize: 22)),
                      SizedBox(height: 20),

                      TextFormField(
                        keyboardType: TextInputType.text,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Enter your first name';
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                          label: Text("Enter your first Name"),
                        ),
                      ),

                      SizedBox(height: 20),

                      TextFormField(
                        keyboardType: TextInputType.text,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Enter your Last name';
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                          label: Text("Enter your last Name"),
                        ),
                      ),

                      SizedBox(height: 20),

                      TextFormField(
                        keyboardType: TextInputType.text,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Enter your Email';
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                          label: Text("Enter your Email"),
                        ),
                      ),

                      SizedBox(height: 20),

                      TextFormField(
                        keyboardType: TextInputType.number,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Enter your phone';
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                          label: Text("Enter your phone"),
                        ),
                      ),

                      SizedBox(height: 20),

                      TextFormField(
                        keyboardType: TextInputType.text,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Enter your password';
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                          label: Text("Enter your password"),
                        ),
                      ),

                      SizedBox(height: 20),

                      TextFormField(
                        keyboardType: TextInputType.text,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Enter your confirm password';
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                          label: Text("Re enter your password"),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30, right: 30, top: 30),
                child: SizedBox(
                  width: double.infinity,
                  height: 40,
                  child: ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text("Sign up successful")),
                        );
                      }
                    },
                    child: Text(
                      "SignUp",
                      style: TextStyle(color: Colors.white, fontSize: 22),
                    ),
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(bottom: 30, top: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        "If you have an account?",
                        style: TextStyle(fontSize: 18),
                      ),
                    ),

                    Align(
                      alignment: Alignment.centerRight,
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => LoginScreen(),
                            ),
                          );
                        },
                        child: Text(
                          "Log-In",
                          style: TextStyle(
                            fontSize: 24,
                            color: Colors.red,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
