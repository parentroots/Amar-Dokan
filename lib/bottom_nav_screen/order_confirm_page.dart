import 'package:amar_dokan/bottom_nav_screen/home_fragment.dart';
import 'package:flutter/material.dart';

class OrderConfirmPage extends StatefulWidget {
  const OrderConfirmPage({super.key});

  @override
  State<OrderConfirmPage> createState() => _OrderConfirmPageState();
}

class _OrderConfirmPageState extends State<OrderConfirmPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(   
      appBar: AppBar(
        title: Text("Confirm Order"),

      ),
      body: SingleChildScrollView(
        child: Column(
          children: [

            Padding(
              padding: const EdgeInsets.only(left: 10,top: 10),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text("Checkout",style: TextStyle(
                  fontSize: 20
                ),),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text("Order Summery : ",style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 22
                ),),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Align(
                      alignment: Alignment.topLeft,
                      child: Text("Bread : 1")),
                  Align(
                      alignment: Alignment.topLeft,
                      child: Text("Pizza : 1")),
                  Align(
                      alignment: Alignment.topLeft,
                      child: Text("Total Price : \$70")),
                  Align(
                      alignment: Alignment.topCenter,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 20,left: 5),
                        child: Text("Please Confirm your details to complete purchase",style: TextStyle(
                          fontSize: 22,color: Colors.black,
                          fontWeight: FontWeight.bold
                        ),),
                      )),



                ],
              ),
            ),


            Text("Delivery Address",style: TextStyle(color: Colors.black,fontSize: 22),),
            Form(child: Padding(
              padding: const EdgeInsets.all(15),
              child: Column(
                children: [

                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.location_on),
                        hint: Text("please enter your full location"),

                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide(
                            color: Colors.blue
                          )
                        ),
                      ),

                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Text("Payment method",style: TextStyle(color: Colors.black,fontSize: 22),),
                  ),




                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: TextFormField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.location_on),
                        hint: Text("Bank transfer"),


                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide: BorderSide(
                                color: Colors.blue
                            )
                        ),
                      ),

                    ),
                  ),





                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: TextFormField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.wallet),
                        hint: Text("E-Wallet"),


                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide: BorderSide(
                                color: Colors.blue
                            )
                        ),
                      ),

                    ),
                  ),





                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: TextFormField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.attach_money),
                        hint: Text("Cash On Delivery"),


                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide: BorderSide(
                                color: Colors.blue
                            )
                        ),
                      ),

                    ),
                  ),


                ],

              ),
            )),
            
            
            SizedBox(
              height: 80 ,
              width: 200,
              child: Padding(
                padding: const EdgeInsets.only(top: 20),
                child: ElevatedButton(
                    onPressed: (){

                      _orderConfirmDialog();
                    }, child: Text("Confirm",
                style: TextStyle(
                  color: Colors.white
                ),)),
              ),
            )


            
          ],
        ),
      ),
      
    );
  }


  void _orderConfirmDialog(){

    showDialog(context: (context), builder:(context){
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
                "Order Confirm!",
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
                    "Thank you ! your purchase successful",
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
                          builder: (context) => HomeFragment(),
                        ),
                      );
                    },
                    child: Text(
                      "GO TO HOME",
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),

      );
    });



  }


}
