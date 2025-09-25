import 'package:amar_dokan/bottom_nav_screen/cart_fragment.dart';
import 'package:flutter/material.dart';

class ProductDetailsScreen extends StatefulWidget {
  const ProductDetailsScreen({super.key});

  @override
  State<ProductDetailsScreen> createState() => _ProductDetailsScreenState();
}

class _ProductDetailsScreenState extends State<ProductDetailsScreen> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back, fill: 1, color: Colors.white),
        backgroundColor: Colors.teal,
        title: Text("Order Details", style: TextStyle(color: Colors.white)),
        actions: [
          Icon(Icons.share, color: Colors.white),
          SizedBox(width: 10),
          Icon(Icons.heart_broken_rounded, color: Colors.white),
        ],
      ),

      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                Image.network(
                  height: 200,
                  width: double.infinity,
                  fit: BoxFit.cover,
                  "https://imgs.search.brave.com/B-o0SptzMCqlFBC1CdWXAHHJcxaYxsFDwpbfqY8vY24/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly90My5m/dGNkbi5uZXQvanBn/LzEzLzgxLzI3Lzgy/LzM2MF9GXzEzODEy/NzgyOTdfZGZyRWJG/Slk0OFJsS09yYUJq/R2h3RXdXV1lyVkhO/VzQuanBn",
                ),

                Padding(
                  padding: const EdgeInsets.only(top: 5, left: 10),
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "Beef Burger",
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                      ),

                      Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "Price :",
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                      ),

                      SizedBox(height: 2),

                      Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "\$15",
                          style: TextStyle(color: Colors.black, fontSize: 20),
                        ),
                      ),

                      SizedBox(height: 5),

                      Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "Calories : ",
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                      ),

                      SizedBox(height: 2),

                      Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "250",
                          style: TextStyle(color: Colors.black, fontSize: 20),
                        ),
                      ),

                      SizedBox(height: 5),

                      Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "Description : ",
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                      ),

                      SizedBox(height: 2),

                      Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "Chicken Biryani is a flavorful South Asian dish made with fragrant basmati rice, "
                          "tender chicken, and aromatic spices like cardamom, cinnamon, and cloves. "
                          "Topped with fried onions and fresh herbs, it delivers a rich, "
                          "savory taste. Perfect for family gatherings, celebrations, or a comforting weekend meal.",
                          style: TextStyle(color: Colors.black, fontSize: 20),
                        ),
                      ),

                      SizedBox(height: 5),

                      Padding(
                        padding: const EdgeInsets.only(top: 40),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            SizedBox(
                              height: 50,
                              width: 200,
                              child: ElevatedButton(
                                onPressed: () {
                                  Navigator.push(context, MaterialPageRoute(builder: (context)=>CartFragment()));

                                },
                                child: Text(
                                  "Add To cart",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            ),
                            Container(
                              height: 50,
                              width: 140,
                              decoration: BoxDecoration(
                                color: Colors.blue,
                                borderRadius: BorderRadius.circular(6),
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Align(
                                    alignment: Alignment.center,
                                    child: CircleAvatar(
                                      child: GestureDetector(
                                        onTap: () {
                                          _increaseFoodItem();
                                        },
                                        child: Icon(Icons.add),
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.center,
                                    child: Text(
                                      counter.toString(),
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 24,
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.center,
                                    child: CircleAvatar(
                                      child: GestureDetector(
                                        onTap: () {
                                          _decreaseFoodItem();
                                        },
                                        child: Icon(Icons.delete),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void _increaseFoodItem() {
    counter = counter + 1;
    if (counter == 100) {
      counter = 0;
    }
    setState(() {});
  }

  void _decreaseFoodItem() {
    counter = counter - 1;

    if (counter < 1) {
      counter = 0;
    }
    setState(() {});
  }
}
