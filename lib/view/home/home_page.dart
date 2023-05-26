import 'package:flutter/material.dart';
import 'package:ui/contant/app_colors.dart';
import 'package:ui/view/home/components/advert_carosel.dart';
import 'package:ui/view/home/components/categories.dart';
import 'package:ui/view/home/components/home_header.dart';
import 'package:ui/view/home/components/sliver_delegate.dart';

import '../../utils/size_config.dart';
import 'components/product_grid.dart';
import 'components/product_row.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return NestedScrollView(
      physics: const BouncingScrollPhysics(),
      headerSliverBuilder: (context, innerBoxIsScrolled) => [
        SliverAppBar(
          scrolledUnderElevation: 0.2,
          expandedHeight: 300,
          toolbarHeight: kToolbarHeight + 35,
          elevation: 0.0,
          pinned: true,
          forceElevated: innerBoxIsScrolled,
          backgroundColor: AppColors.white,
          stretch: true,
          title: const HomeHeader(),
          flexibleSpace: const FlexibleSpaceBar(
            stretchModes: [StretchMode.zoomBackground],
            collapseMode: CollapseMode.pin,
            background: AdvertCarousel(),
          ),
        ),
        const SliverPersistentHeader(
          delegate: SliverAppBarDelegate(
            PreferredSize(
              preferredSize: Size.fromHeight(120),
              child: CategoriesWidget(),
            ),
          ),
        ),
       const SliverAppBar(
          pinned: true,
          primary: false,
          elevation: 0,
          backgroundColor:Color(0xffF8F9Fb),
          toolbarHeight: 70,
          centerTitle: false,
          title: ProductRow(),
        ),

      ],
      // The content of the scroll view
      body: Container(
        color: AppColors.categoryColor.withOpacity(0.3),
        child:  const ProductGrid(),
      ),
    );
  }
}
