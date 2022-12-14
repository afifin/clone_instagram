import 'package:flutter/material.dart';

class CustomExploreAppBar extends StatelessWidget {
  const CustomExploreAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: Colors.white,
      floating: true,
      centerTitle: false,
      elevation: 0,
      title: Container(
        height: 42,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.grey.shade200,
        ),
        child: TextField(
          cursorColor: Colors.grey.shade500,
          decoration: InputDecoration(
              hintText: "Search",
              hintStyle: TextStyle(fontSize: 15, fontWeight: FontWeight.w500,),
              border: InputBorder.none,
              prefixIcon: Icon(
                Icons.search,
                size: 24,
                color: Colors.grey.shade500,
              )),
              style: TextStyle(color: Colors.black, fontSize: 16.5),
        ),
      ),
    );
  }
}
