import 'package:flutter/material.dart';

class CustomProfileAppBar extends StatelessWidget {
  const CustomProfileAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: Colors.white,
      pinned: true,
      brightness: Brightness.light,
      centerTitle: false,
      elevation: 0,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(3.0),
            child: Icon(
              Icons.https_outlined,
              size: 18,
            ),
          ),
          Text(
            "heyfins_",
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.black),
          )
        ],
      ),
      actions: [
        IconButton(
          onPressed: () => {},
          icon: Icon(Icons.add_box_outlined, color: Colors.black,),
        ),
        IconButton(
          onPressed: () => {},
          icon: Icon(Icons.dehaze_outlined, color: Colors.black,),
        ),
      ],
    );
  }
}
