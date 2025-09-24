import 'package:amar_dokan/otp_verification_page.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class PasswordForgetScreen extends StatefulWidget {
  const PasswordForgetScreen({super.key});

  @override
  State<PasswordForgetScreen> createState() => _PasswordForgetScreenState();
}

class _PasswordForgetScreenState extends State<PasswordForgetScreen> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Password Forgot", style: TextStyle(color: Colors.white)),
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
                padding: const EdgeInsets.only(left: 25, right: 15, top: 20),
                child: Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 5, bottom: 15),
                        child: Text(
                          "If you reset Password need email verification,click reset password and check your email and submit 6 digit code",
                        ),
                      ),

                      TextFormField(
                        validator: (value) {
                          if (value == null && value!.isEmpty) {
                            return "Enter your Email";
                          } else {
                            return null;
                          }
                        },
                        decoration: InputDecoration(
                          label: Text("Enter Your Email"),
                        ),
                      ),

                      SizedBox(height: 14),
                      TextFormField(
                        validator: (value) {
                          if (value == null && value!.isEmpty) {
                            return "Enter your New Password";
                          } else {
                            return null;
                          }
                        },
                        decoration: InputDecoration(
                          label: Text("Enter Your New Password"),
                        ),
                      ),

                      SizedBox(height: 8),
                      TextFormField(
                        validator: (value) {
                          if (value == null && value!.isEmpty) {
                            return "Re-Enter your New Password";
                          } else {
                            return null;
                          }
                        },
                        decoration: InputDecoration(
                          label: Text("Re-enter Your New Password"),
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.only(top: 40),
                        child: SizedBox(
                          height: 40,
                          width: double.infinity,
                          child: ElevatedButton(
                            onPressed: () {
                              if (_formKey.currentState!.validate()) {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    content: Text("Account found Please Wait"),
                                  ),
                                );
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => OtpVerificationPage(),
                                  ),
                                );
                              }
                            },
                            child: Text(
                              "Reset password",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 22,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
