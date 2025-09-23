import 'package:amar_dokan/login_screen.dart';
import 'package:flutter/material.dart';

class WellComeScreen extends StatelessWidget {
  const WellComeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("WellCome Screen", style: TextStyle(color: Colors.white)),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 10),
        child: Column(
          children: [
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CircleAvatar(
                    backgroundImage: NetworkImage("https://imgs.search.brave.com/" "3HAde16jBQmN3b3n0j6sQFWMRiGf3jPvaX74HclqHGI/" "rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9tZWRp/YS5nZXR0eWltYWdl/" "cy5jb20vaWQvMTQw/Mzk3MzQxOS9waG90/by90YWJsZS10b3At/" "b2YtZm9vZC1zcHJl/YWQtb24tdGFibGUu/anBnP3M9NjEyeDYx/" "MiZ3PTAmaz0yMCZj/PTJjUk9VTXVyWlV0/dXZxRi1icDhsVmla/" "MHdEWEJOa1pCY0lq/UWoyUVFsZWM9"),
                    radius: 150,
                  ),

                  Padding(
                    padding: const EdgeInsets.only(top: 40),
                    child: Text(
                      "Well Come To Amar Dokan",
                      style: TextStyle(color: Colors.black, fontSize: 28,
                        fontWeight: FontWeight.bold

                      ),
                    ),
                  ),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(top: 50),
              child: Align(
                alignment: Alignment.centerRight,
                child: Text(
                  textAlign: TextAlign.center,
                  "Hungry moments don’t wait-and neither should you! Order with AMAR DOKAN and let us deliver joy, flavor, and freshness right to your doorstep",
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 20, left: 20, top: 80),
              child: SizedBox(
                height: 50,
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {

                    Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginScreen()));
                  },
                  child: Text(
                    "GET START",
                    style: TextStyle(color: Colors.white, fontSize: 24),
                  ),
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
