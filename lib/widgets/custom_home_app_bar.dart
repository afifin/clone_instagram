import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomHomeAppBar extends StatelessWidget {
  const CustomHomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      
      pinned: true,
      backgroundColor: Colors.white,
      title: Text(
        "Instagram",
        maxLines: 1,
        style: GoogleFonts.satisfy(fontSize: 32, fontWeight: FontWeight.bold,color: Colors.black),
      ),
      actions: [
        IconButton(onPressed: () => {}, icon: Icon(Icons.add_box_outlined,color: Colors.black,)),
        IconButton(
            onPressed: () => {}, icon: Icon(Icons.favorite_border_outlined, color: Colors.black)),
        IconButton(onPressed: () => {}, icon: Icon(Icons.send_outlined, color: Colors.black))
      ],
    );
  }
}
