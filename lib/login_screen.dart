import 'package:amar_dokan/home_screen.dart';
import 'package:amar_dokan/password_forget_screen.dart';
import 'package:amar_dokan/signup_screen.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _userInputPassTEController =
       TextEditingController();
  final TextEditingController _userInputPhoneTEController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Login Screen",
          style: TextStyle(
              fontSize: 22, color: Colors.white),
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
        
              Text(
                "LOGIN",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 28,
                  color: Colors.blue,
                  fontStyle: FontStyle.italic,
                ),
              ),
        
              Form(
                key: _formKey,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 25,
                        right: 25,
                        top: 40,
                      ),
                      child: TextFormField(
                        controller: _userInputPhoneTEController,
        
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Enter Login number';
                          }
                          return null;
                        },
        
                        decoration: InputDecoration(label: Text("Enter Number")),
                      ),
                    ),
        
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 25,
                        right: 25,
                        top: 20,
                      ),
                      child: TextFormField(
                        controller: _userInputPassTEController,
        
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Enter Login password';
                          }
                          return null;
                        },
        
                        decoration: InputDecoration(
                          label: Text("Enter Password"),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 25,top: 10),
                      child: Align(
                          alignment: Alignment.centerRight,
                          child: GestureDetector(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>PasswordForgetScreen()));
                            },
                              child: Text("Forgotten password ?",style: TextStyle(
                                color: Colors.red
                              ),))),
                    )
                  ],
                ),
              ),
        
              Padding(
                padding: const EdgeInsets.only(top: 40, left: 25, right: 25),
                child: SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {

                      if(_formKey.currentState!.validate()){
                         Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeScreen()));
                      }
                    },
                    child: Text(
                      "Login",
                      style: TextStyle(color: Colors.white, fontSize: 24),
                    ),
                  ),
                ),
              ),


              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Align(
                      alignment: Alignment.centerRight,
                      child: Text("If you Don't have an account?",style: TextStyle(
                          fontSize: 18
                      ),)),


                  Align(
                      alignment: Alignment.centerRight,
                      child: GestureDetector(

                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>SignupScreen()));
                        },
                        child: Text("Sign-Up",style: TextStyle(
                            fontSize: 22,
                            color: Colors.red,
                            fontWeight: FontWeight.bold
                        ),),
                      )),


                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
