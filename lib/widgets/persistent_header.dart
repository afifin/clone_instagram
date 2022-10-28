import 'package:flutter/material.dart';

class PersistentHeader extends SliverPersistentHeaderDelegate {
  final Widget child;

  PersistentHeader({required this.child, required int mxExtent, required int mnExtent});
  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Container(
      color: Colors.white,
      height: 50,
      child: child,
    );
  }

  @override
  // TODO: implement maxExtent
  double get maxExtent => 50;

  @override
  // TODO: implement minExtent
  double get minExtent => 50;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return true;
  }
}
