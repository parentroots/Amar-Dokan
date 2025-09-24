import 'package:amar_dokan/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class OtpVerificationPage extends StatefulWidget {
  const OtpVerificationPage({super.key});

  @override
  State<OtpVerificationPage> createState() => _OtpVerificationPageState();
}

class _OtpVerificationPageState extends State<OtpVerificationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back, color: Colors.white),
        title: Text("OTP verification", style: TextStyle(color: Colors.white)),
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
                padding: const EdgeInsets.only(left: 40, right: 40, top: 50),
                child: PinCodeTextField(
                  keyboardType: TextInputType.number,
                  appContext: context,
                  length: 6,
                  obscureText: false,
                  animationType: AnimationType.fade,
                  pinTheme: PinTheme(
                    shape: PinCodeFieldShape.box,
                    borderRadius: BorderRadius.circular(5),
                    fieldHeight: 40,
                    fieldWidth: 35,
                    activeFillColor: Colors.red,
                    inactiveColor: Colors.blue,
                  ),
                  onChanged: (value) {
                    print(value);
                  },
                ),
              ),
              SizedBox(height: 10),
              Text("Resend Conde After: "),

              Padding(
                padding: const EdgeInsets.only(left: 40, right: 40, top: 80),
                child: SizedBox(
                  height: 45,
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      _showCorrectPasswordChangeDialog();
                    },
                    child: Text(
                      "Send OTP",
                      style: TextStyle(color: Colors.white, fontSize: 22),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _showCorrectPasswordChangeDialog() {
    showDialog(
      context: context,
      builder: (context) {
        return Dialog(
          child: Container(
            height: 280,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15),
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: SizedBox(
                    height: 70,
                    width: 70,
                    child: CircleAvatar(
                      backgroundImage: NetworkImage(
                        "https://www.shutterstock.com/shutterstock/photos/1033217617/display_1500/stock-vector-green-check-mark-icon-in-a-circle-check-list-button-icon-1033217617.jpg",
                      ),
                    ),
                  ),
                ),
                Text(
                  "Password Change !",
                  style: TextStyle(
                    fontSize: 22,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(top: 5),
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      "Password change Please LOGIN again",
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: SizedBox(
                    width: 200,
                    height: 60,
                    child: ElevatedButton(
                      onPressed: () {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text("Password Changed")),
                        );

                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => LoginScreen(),
                          ),
                        );
                      },
                      child: Text(
                        "GO LOGIN",
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
