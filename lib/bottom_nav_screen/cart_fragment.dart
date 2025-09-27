import 'package:amar_dokan/bottom_nav_screen/order_confirm_page.dart';
import 'package:flutter/material.dart';

class CartFragment extends StatefulWidget {
  const CartFragment({super.key});

  @override
  State<CartFragment> createState() => _CartFragmentState();
}

class _CartFragmentState extends State<CartFragment> {



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(leading: Icon(Icons.arrow_back, color: Colors.white)),

      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Cart",
              style: TextStyle(
                color: Colors.black,
                fontSize: 22,
                fontStyle: FontStyle.italic,
              ),
            ),
          ),

          Expanded(
            child: ListView.separated(
              shrinkWrap: true,
              itemCount: 5,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: Container(
                    height: 80,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey.shade300,
                    ),
                    child: Row(
                        children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.network(
                            height: 50,
                              width: 50,
                              "https://imgs.search.brave.com/B-o0SptzMCqlFBC1CdWXAHHJcxaYxsFDwpbfqY8vY24/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly90My5m/dGNkbi5uZXQvanBn/LzEzLzgxLzI3Lzgy/LzM2MF9GXzEzODEy/NzgyOTdfZGZyRWJG/Slk0OFJsS09yYUJq/R2h3RXdXV1lyVkhO/VzQuanBn"),
                        ),
                      ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text("Pizza"),
                                Text("\$15"),

                              ],
                            ),
                          ),
                         Padding(
                           padding: const EdgeInsets.only(left: 40),
                           child: Container(
                           height: 50,
                             width: 150,
                             decoration: BoxDecoration(
                               color: Colors.blue,
                               borderRadius: BorderRadius.circular(10)
                             ),
                             child: Row(
                               mainAxisAlignment: MainAxisAlignment.center,
                               crossAxisAlignment: CrossAxisAlignment.center,
                               children: [
                                  SizedBox(
                                    height: 30,
                                    child: GestureDetector(

                                      onTap: (){
                                      },

                                      child: CircleAvatar(
                                        child: Icon(Icons.add),),
                                    ),
                                  ),

                                 SizedBox(width: 5,),
                                 Text("0",style: TextStyle(
                                   color: Colors.white,
                                   fontSize: 20
                                 ),),

                                 SizedBox(width: 5,),

                                 SizedBox(
                                   height: 30,
                                     child: GestureDetector(
                                         onTap: (){
                                         },
                                         child: CircleAvatar(child: Icon(Icons.delete),)))
                               ],

                             ),
                           ),
                         )
                          
                    ]),
                  ),
                );
              },
              separatorBuilder: (context, index) {
                return Divider(height: 6, color: Colors.white);
              },
            ),
          ),


          Padding(
            padding: const EdgeInsets.only(top: 30),
            child: Container(
              height: 120,
              width: 300,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Colors.blue
              ),
              child: Column(
                children: [


                  Padding(
                    padding: const EdgeInsets.only(left: 10,right: 10,top: 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Subtotal",style: TextStyle(
                          fontSize: 22,
                          color: Colors.white
                        ),),
                        Text("\$50",style: TextStyle(
                          fontSize: 22,
                          color: Colors.white
                        ),)
                      ],
                    ),
                  ),
                  Divider(
                    height: 2,
                    color: Colors.black,
                  ),




                  Padding(
                    padding: const EdgeInsets.only(left: 10,right: 10,top: 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Deliver charge",style: TextStyle(
                            fontSize: 22,
                            color: Colors.white
                        ),),
                        Text("\$10",style: TextStyle(
                            fontSize: 22,
                            color: Colors.white
                        ),)
                      ],
                    ),
                  ),
                  Divider(
                    height: 2,
                    color: Colors.black,
                  ),






                  Padding(
                    padding: const EdgeInsets.only(left: 10,right: 10,top: 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Total",style: TextStyle(
                            fontSize: 22,
                            color: Colors.white
                        ),),
                        Text("\$60",style: TextStyle(
                            fontSize: 22,
                            color: Colors.white
                        ),)
                      ],
                    ),
                  ),
                  Divider(
                    height: 2,
                    color: Colors.black,
                  ),



                ],

              ),
            ),
          ),
          
          SizedBox(
              height: 100,
              width: double.maxFinite,
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: ElevatedButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>OrderConfirmPage()));

                }, child: Text("Checkout",style: TextStyle(
                  color: Colors.white,
                  fontSize: 20
                ),)),
              ))
        ],
      ),
    );
  }





}
