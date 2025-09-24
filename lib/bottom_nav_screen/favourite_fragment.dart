import 'package:flutter/material.dart';

class FavouriteFragment extends StatefulWidget {
  const FavouriteFragment({super.key});

  @override
  State<FavouriteFragment> createState() => _FavouriteFragmentState();
}

class _FavouriteFragmentState extends State<FavouriteFragment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("I am Favourite Fragment"),
      ),

    );
  }
}
