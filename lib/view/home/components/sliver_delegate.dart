import 'package:flutter/material.dart';

class SliverAppBarDelegate extends SliverPersistentHeaderDelegate {
  const SliverAppBarDelegate(this.preferredSize);

  final PreferredSizeWidget preferredSize;

  @override
  Widget build(BuildContext context, double shrinkOffset, bool overlapsContent) {
    return preferredSize;
  }

  @override
  double get maxExtent => preferredSize.preferredSize.height;

  @override
  double get minExtent => preferredSize.preferredSize.height;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) => false;
}
