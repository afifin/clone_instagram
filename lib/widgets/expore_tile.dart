import 'package:clone_ig/models/post.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ExploreTile extends StatelessWidget {
  const ExploreTile({super.key, required this.post});
  final Post post;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [Image(image: NetworkImage(post.ImageUrl))],
      ),
    );
  }
}
