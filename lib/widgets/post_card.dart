import 'package:clone_ig/models/post.dart';
import 'package:flutter/material.dart';

class Postcard extends StatelessWidget {
  const Postcard({super.key, required this.post});
  final Post post;
  final double _iconSize = 30;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black12,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTile(
            dense: true,
            title: Text(
              post.postedBy.username,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
            ),
            subtitle: Text(
              post.location,
              style: TextStyle(
                  fontWeight: FontWeight.normal,
                  color: Colors.black,
                  fontSize: 13),
            ),
            leading: CircleAvatar(backgroundColor: Colors.grey, backgroundImage: NetworkImage(post.postedBy.profileImageUrl),),
            trailing: Icon(
              Icons.more_horiz,
              color: Colors.black,
            ),
          ),
          Image.network(
            post.ImageUrl,
            height: 300,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: const EdgeInsets.all(3.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 8),
                  child: IconButton(
                    onPressed: () => {},
                    icon: Icon(post.isLiked ? Icons.favorite : Icons.favorite_outline),
                    iconSize: _iconSize,
                    color: post.isLiked ? Colors.red : Colors.black,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 8),
                  child: IconButton(
                    onPressed: () => {},
                    icon: Icon(Icons.chat_bubble_outline),
                    iconSize: _iconSize,
                  ),
                ),
                IconButton(
                  onPressed: () => {},
                  icon: Icon(Icons.send_outlined),
                  iconSize: _iconSize,
                ),
                Spacer(),
                IconButton(
                  onPressed: () => {},
                  icon: Icon(post.isBookmarked ? Icons.bookmark : Icons.bookmark_outline),
                  iconSize: _iconSize,
                )
              ],
            ),
          ),
          SizedBox(
            height: 3,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "${post.totalLikes} Suka",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 5,
                ),
                RichText(
                    text: TextSpan(
                        text: post.postedBy.username,
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                        children: [
                      TextSpan(
                        text: " ${post.caption}",
                        style: TextStyle(fontWeight: FontWeight.normal),
                      )
                    ])),
                SizedBox(
                  height: 5,
                ),
                Text("Lihat semua ${post.totalComments} komen"),
                SizedBox(
                  height: 5,
                ),
                Text(post.postedTimeAgo, style: TextStyle(fontSize:  12 ),),
              ],
            ),
          )
        ],
      ),
    );
  }
}
