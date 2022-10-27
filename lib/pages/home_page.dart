import 'package:clone_ig/_mock_data/mock.dart';
import 'package:clone_ig/widgets/custom_home_app_bar.dart';
import 'package:clone_ig/widgets/post_card.dart';
import 'package:flutter/material.dart';

import '../widgets/add_story_card.dart';
import '../widgets/story_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        CustomHomeAppBar(),
        SliverToBoxAdapter(
          child: Column(
            children: [
              Container(
                height: 100,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: stories.length + 1,
                    itemBuilder: (context, index) {
                      return Container(
                        width: 90,
                        padding: EdgeInsets.symmetric(vertical: 5),
                        child: index == 0
                            ? AddStoryCard()
                            : StoryCard(
                                story: stories[index - 1],
                              ),
                      );
                    }),
              ),
              Divider(
                height: 1,
              )
            ],
          ),
        ),
        SliverList(delegate: SliverChildBuilderDelegate((context, index){
          return Postcard(post: posts[index],);
        }, childCount: posts.length),)
      ],
    );
  }
}
