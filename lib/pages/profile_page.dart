import 'dart:io';

import 'package:clone_ig/widgets/custom_profile_app_bar.dart';
import 'package:clone_ig/widgets/persistent_header.dart';
import 'package:clone_ig/widgets/profile_header.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: NestedScrollView(
        headerSliverBuilder: (context, index) {
          return [
            CustomProfileAppBar(),
            SliverToBoxAdapter(
              child: Container(
                color: Colors.white,
                child: ProfileHeader(),
              ),
            ),
            SliverPersistentHeader(
                pinned: true,
                delegate: PersistentHeader(
                    child: TabBar(
                      tabs: [
                        Tab(
                          icon: Icon(
                            Icons.grid_on,
                          ),
                        ),
                        Tab(
                          icon: Icon(
                            Icons.assignment_ind_outlined,
                          ),
                        )
                      ],
                    ),
                    mxExtent: 50,
                    mnExtent: 50))
          ];
        },
        body: TabBarView(children: [
          CustomScrollView(
            slivers: [
              SliverGrid(
                  delegate: SliverChildBuilderDelegate(
                    (context, index) {
                      return Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: NetworkImage(
                                'https://picsum.photos/id/${index + 1068}/500/500'),
                          ),
                        ),
                      );
                    },
                  ),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3))
            ],
          )
        ]),
      ),
    );
  }
}
