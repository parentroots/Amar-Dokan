import 'package:flutter/material.dart';

class HomeFragment extends StatefulWidget {
  const HomeFragment({super.key});

  @override
  State<HomeFragment> createState() => _HomeFragmentState();
}

class _HomeFragmentState extends State<HomeFragment> {


  List<String>categoryList=[
    "Burger",
    "Pizza",
    "Sandwich",
    "Drinks",
    "Chicken",
    "Fries",
    "Pasta",
    "Ice Cream",
    "Coffee",
    "Juice"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SingleChildScrollView(
        child: Column(
          children: [
        
            Padding(
              padding: const EdgeInsets.only(top: 50),
              child: Container(
                height: 50,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("Hello!👏",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 22
                      ),),
                    ),
                    CircleAvatar(child:Icon( Icons.notifications,),)
                  ],
                ),
              ),
            ),
        
            Padding(
              padding: const EdgeInsets.only(left: 15,right: 15,top: 5),
              child: Container(
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(
                    color: Colors.black54,
                    width: 2
        
                  )
                ),
                child: Row(
                  children: [
        
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Icon(Icons.search),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 5),
                      child: Text("Search Here",style: TextStyle(
                        color: Colors.black
                      ),),
                    )
                    
                  ],
                ),
              ),
            ),
        
            Padding(
              padding: const EdgeInsets.all(12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("New Offers",style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold
                  ),),
                  Text("See All")
                ],
              ),
            ),
        
            Padding(
              padding: const EdgeInsets.only(left: 12,right: 12,top: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    height: 150,
                    width: 150,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)
        
                    ),
                    
                    child: Image.network(
                      fit: BoxFit.fill,
                        "https://imgs.search.brave.com/uei_hjJs39pm924E6LPv8omn7l2I7xKn8WvoxDcyfMk/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9jZG4u/Y3JlYXRlLnZpc3Rh/LmNvbS9kb3dubG9h/ZHMvMmY4ZTNmZjMt/YTY4Yi00N2ZhLTk4/MTktNjhjNGNlNThk/ZmMwXzQ1MC5qcGVn"),
                  ),
        
        
                  Container(
                    height: 150,
                    width: 150,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)
        
                    ),
        
                    child: Image.network(
                      fit: BoxFit.fill,
                        "https://imgs.search.brave.com/2ZLM4tdNvjMrtJVkQ0-7dgZ_b07y0zxhCX4WlGhw-OA/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9pbWcu/ZnJlZXBpay5jb20v/ZnJlZS1wc2QvZGVs/aWNpb3VzLWJ1cmdl/ci1mb29kLW1lbnUt/aW5zdGFncmFtLWZh/Y2Vib29rLXN0b3J5/LXRlbXBsYXRlXzEw/NjE3Ni0xNDA2Lmpw/Zz9zZW10PWFpc19o/eWJyaWQmdz03NDAm/cT04MA"),
                  )
        
                ],
              ),
            ),
        
            Padding(
              padding: const EdgeInsets.only(top: 10,left: 10,),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text("Categories",style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold
                ),),
              ),
            ),
        
            Padding(
              padding: const EdgeInsets.only(top: 10,),
              child: SizedBox(
                height: 120,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemCount: categoryList.length,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        CircleAvatar(
                          radius: 40,
                          backgroundImage:NetworkImage("https://imgs.search.brave.com/2ZLM4tdNvjMrtJVkQ0-7dgZ_b07y0zxhCX4WlGhw-OA/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9pbWcu/ZnJlZXBpay5jb20v/ZnJlZS1wc2QvZGVs/aWNpb3VzLWJ1cmdl/ci1mb29kLW1lbnUt/aW5zdGFncmFtLWZh/Y2Vib29rLXN0b3J5/LXRlbXBsYXRlXzEw/NjE3Ni0xNDA2Lmpw/Zz9zZW10PWFpc19o/eWJyaWQmdz03NDAm/cT04MA"),
                        ),
                        Text(categoryList[index],style: TextStyle(
                          fontSize: 18,
                          color: Colors.black
                        ),)
        
                      ],
        
                    );
                  },
                  separatorBuilder: (context, index) => SizedBox(width: 10),
                ),
              ),
            ),
        
        
            
            Padding(
              padding: const EdgeInsets.all(5),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text("Popular ",style: TextStyle(
                  color: Colors.black,
                  fontSize: 22,
                  fontWeight: FontWeight.bold
                ),),
              ),
            ),


            SizedBox(
              height: 200,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemCount: categoryList.length,
                  itemBuilder: (context,index){
                  return Column(
                    children: [
                      Container(
                        height: 180,
                        width: 100,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.teal.shade400
                        ),

                        child: Column(

                          children: [
                            ClipRRect(
                             borderRadius:BorderRadius.circular(15),
                              child: Image.network(
                                height: 100,
                                  width: 90,
                                  "https://imgs.search.brave.com/B-o0SptzMCqlFBC1CdWXAHHJcxaYxsFDwpbfqY8vY24/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly90My5m/dGNkbi5uZXQvanBn/LzEzLzgxLzI3Lzgy/LzM2MF9GXzEzODEy/NzgyOTdfZGZyRWJG/Slk0OFJsS09yYUJq/R2h3RXdXV1lyVkhO/VzQuanBn"),
                            ),

                            Text("Pizza",style: TextStyle(
                                color: Colors.white,
                                fontSize: 18
                            ),),
                            Text("\$15",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18
                            ),),


                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.star,
                                  color: Colors.orange,
                                  size: 24,
                                ),
                                SizedBox(width: 5),
                                Text(
                                  "4.9",
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white
                                  ),
                                ),
                              ],
                            )






                          ],
                        ),
                      )
                    ],




                  );

                  }, separatorBuilder: (context,index){
                return SizedBox(
                  width: 4,

                );
              }),
            )
        
        
        
          ],
        ),
      ),


    );
  }
}
