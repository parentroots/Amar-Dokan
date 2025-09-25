import 'package:flutter/material.dart';

class CartFragment extends StatefulWidget {
  const CartFragment({super.key});

  @override
  State<CartFragment> createState() => _CartFragmentState();
}

class _CartFragmentState extends State<CartFragment> {

  int _counter=0;


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
                                        _increaseFoodItem();
                                      },

                                      child: CircleAvatar(
                                        child: Icon(Icons.add),),
                                    ),
                                  ),

                                 SizedBox(width: 5,),
                                 Text(_counter.toString(),style: TextStyle(
                                   color: Colors.white,
                                   fontSize: 20
                                 ),),

                                 SizedBox(width: 5,),

                                 SizedBox(
                                   height: 30,
                                     child: GestureDetector(
                                         onTap: (){
                                           _decreaseFoodItem();
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
          
          SizedBox(
              height: 100,
              width: double.maxFinite,
              child: Padding(
                padding: const EdgeInsets.all(30),
                child: ElevatedButton(onPressed: (){}, child: Text("Checkout",style: TextStyle(
                  color: Colors.white,
                  fontSize: 20
                ),)),
              ))
        ],
      ),
    );
  }



  void _increaseFoodItem() {
    _counter = _counter + 1;
    if (_counter == 100) {
      _counter = 0;
    }
    setState(() {});
  }

  void _decreaseFoodItem() {
    _counter = _counter - 1;

    if (_counter < 1) {
      _counter = 0;
    }
    setState(() {});
  }



}
