import 'package:clone_ig/_mock_data/mock.dart';
import 'package:clone_ig/models/post.dart';
import 'package:clone_ig/widgets/category_bar.dart';
import 'package:clone_ig/widgets/custom_explore_app_bar.dart';
import 'package:clone_ig/widgets/expore_tile.dart';
import 'package:clone_ig/widgets/persistent_header.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class ExplorePage extends StatelessWidget {
  const ExplorePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SafeArea(
        child: CustomScrollView(
          slivers: [
            CustomExploreAppBar(),
            SliverPersistentHeader(
              pinned: true,
              delegate: PersistentHeader(
                child: Categorybar(
                  categories: ["Original", "Wildlife", "programming", "laugh"],
                ),
                mnExtent: 50,
                mxExtent: 50,
              ),
            ),
            SliverStaggeredGrid.countBuilder(
                mainAxisSpacing: 1,
                crossAxisSpacing: 1,
                crossAxisCount: 3,
                staggeredTileBuilder: (int index) {
                  int modedindex = index % 20;
                  int eXCellCount = modedindex == 11 ? 2 : 1;

                  double mXCellCount = 1;
                  if (modedindex == 2 || modedindex == 2) {
                    mXCellCount = 2;
                  }
                  return StaggeredTile.count(eXCellCount, mXCellCount);
                },
                itemBuilder: (BuildContext context, int index) {
                  return ExploreTile(
                    post: Post(
                        '$index',
                        currentUser,
                        'https://picsum.photos/id/${index + 1047}/400/${index % 20 == 2 ? 805 : 400}',
                        'title',
                        'location',
                        'caption',
                        'postedTimeAgo',
                        'totalLikes',
                        'totalComments',
                        true,
                        true),
                  );
                },
                itemCount: 20)
          ],
        ),
      ),
    );
  }
}
