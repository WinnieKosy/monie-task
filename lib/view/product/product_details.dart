import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:iconsax/iconsax.dart';
import 'package:ui/contant/app_colors.dart';
import 'package:ui/model/product_model.dart';
import 'package:ui/utils/app_icons.dart';
import 'package:ui/utils/size_config.dart';
import 'package:ui/view/home/components/icon_btn.dart';
import 'package:ui/view/product/components/about_items.dart';
import 'package:ui/view/product/components/product_image_view.dart';

class ProductDetailsScreen extends StatefulWidget {
  final Product product;
  const ProductDetailsScreen({super.key, required this.product});

  @override
  State<ProductDetailsScreen> createState() => _ProductDetailsScreenState();
}

class _ProductDetailsScreenState extends State<ProductDetailsScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  final ValueNotifier<int> _tabIndexNotifier = ValueNotifier(0);

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomSheet: Container(
          height: getProportionateScreenHeight(100),
          width: double.infinity,
          decoration: const BoxDecoration(
            color: Colors.white,
          ),
          child: Padding(
            padding: EdgeInsets.only(
                left: getProportionateScreenWidth(20),
                right: getProportionateScreenWidth(20),
                top: getProportionateScreenHeight(10)),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Padding(
                  padding:  EdgeInsets.only(
                    bottom: getProportionateScreenWidth(30),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Total Price",
                        style: TextStyle(color: AppColors.grey, fontSize: 13),
                      ),
                      Text(
                        "\$${widget.product.itemPrice.toString()}",
                        style: const TextStyle(
                            color: AppColors.primary,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
                const Spacer(),
                Padding(
                  padding: EdgeInsets.only(
                      bottom: getProportionateScreenWidth(25),
                  ),
                  child: Row(
                    children: [
                      Container(
                        height: getProportionateScreenHeight(55),
                        width: getProportionateScreenWidth(50),
                        decoration: const BoxDecoration(
                            color: AppColors.primary,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                bottomLeft: Radius.circular(10))),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            SizedBox(
                              width: 5,
                            ),
                            Icon(
                              Iconsax.shopping_cart,
                              color: AppColors.white,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              "1",
                              style: TextStyle(
                                  color: AppColors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.normal),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                          ],
                        ),
                      ),
                      Container(
                          height: getProportionateScreenHeight(55),
                          width: getProportionateScreenWidth(90),
                          decoration: const BoxDecoration(
                              color: AppColors.btnColor,
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(10),
                                  bottomRight: Radius.circular(10))),
                          child: const Center(
                            child: Text(
                              "Buy Now",
                              style: TextStyle(
                                  color: AppColors.white,
                                  fontSize: 15,
                                  fontWeight: FontWeight.normal),
                            ),
                          ))
                    ],
                  ),
                )
              ],
            ),
          ),
      ).animate()
          .fadeIn(duration: 500.ms)
          .slide(
          begin: SlideEffect.neutralValue
              .copyWith(dx: 0, dy: 0.5),
          end: SlideEffect.neutralValue),
      appBar: AppBar(
        backgroundColor: AppColors.white,
        iconTheme: const IconThemeData(
          color: AppColors.black,
        ),
        elevation: 0,
        actions: [
          IconBtn(
            icons: Icons.favorite_border,
            numOfitem: 0,
            press: () {},
          ),
          IconBtn(
            icons: Icons.share,
            color: AppColors.black,
            numOfitem: 0,
            press: () {},
          ),
          IconBtn(
            icons: Iconsax.shopping_cart,
            color: AppColors.black,
            numOfitem: 3,
            press: () {},
          ),
        ],
      ),
      body: Container(
        color: AppColors.categoryColor.withOpacity(0.3),
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Center(child: ProductImage(product: widget.product))
                              .animate()
                              .fadeIn(duration: 400.ms)
                              .slide(
                                  begin: SlideEffect.neutralValue
                                      .copyWith(dx: 0, dy: 0.5),
                                  end: SlideEffect.neutralValue),
                          const SizedBox(height: 16),
                          Animate(
                            effects: [
                              FadeEffect(delay: 400.ms),
                              SlideEffect(
                                  begin: SlideEffect.neutralValue
                                      .copyWith(dx: 0, dy: 0.5),
                                  end: SlideEffect.neutralValue)
                            ],
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    SvgPicture.asset(
                                      AppIcons.store,
                                      width: 18,
                                      height: 18,
                                      color: AppColors.grey,
                                    ),
                                    const SizedBox(width: 8),
                                    Text(
                                      widget.product.brand,
                                      style: const TextStyle(
                                        fontSize: 13,
                                        color: AppColors.grey,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 8),
                                Text(
                                  widget.product.itemName,
                                  style: const TextStyle(
                                    fontSize: 17,
                                    color: AppColors.black,
                                    fontWeight: FontWeight.w800,
                                  ),
                                ),
                                const SizedBox(height: 10),
                                RichText(
                                  text: TextSpan(
                                    children: [
                                      const TextSpan(
                                        text: "★",
                                        style: TextStyle(
                                          fontSize: 16,
                                          color: AppColors.reviewStar,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                      TextSpan(
                                        text:
                                            " ${widget.product.itemRating.toString()}",
                                        style: const TextStyle(
                                          fontSize: 15,
                                          color: AppColors.grey,
                                          fontWeight: FontWeight.normal,
                                        ),
                                      ),
                                      const TextSpan(
                                        text: " Rating",
                                        style: TextStyle(
                                          fontSize: 15,
                                          color: AppColors.grey,
                                          fontWeight: FontWeight.normal,
                                        ),
                                      ),
                                      const TextSpan(
                                        text: "    ●    ",
                                        style: TextStyle(
                                          fontSize: 15,
                                          color: AppColors.grey,
                                          fontWeight: FontWeight.normal,
                                        ),
                                      ),
                                      const TextSpan(
                                        text: "2.3k Reviews",
                                        style: TextStyle(
                                          fontSize: 15,
                                          color: AppColors.grey,
                                          fontWeight: FontWeight.normal,
                                        ),
                                      ),
                                      const TextSpan(
                                        text: "    ●    ",
                                        style: TextStyle(
                                          fontSize: 15,
                                          color: AppColors.grey,
                                          fontWeight: FontWeight.normal,
                                        ),
                                      ),
                                      const TextSpan(
                                        text: "2.9k + Sold",
                                        style: TextStyle(
                                          fontSize: 15,
                                          color: AppColors.grey,
                                          fontWeight: FontWeight.normal,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Animate(
                      effects: [
                        FadeEffect(delay: 400.ms),
                        SlideEffect(
                            begin:
                                SlideEffect.neutralValue.copyWith(dx: 0, dy: 0.5),
                            end: SlideEffect.neutralValue)
                      ],
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 16),
                            child: TabBar(
                              onTap: (value) {
                                _tabIndexNotifier.value = value;
                              },
                              labelStyle: const TextStyle(
                                fontSize: 17,
                                color: AppColors.black,
                                fontWeight: FontWeight.normal,
                              ),
                              unselectedLabelStyle: const TextStyle(
                                fontSize: 17,
                                color: AppColors.black,
                                fontWeight: FontWeight.normal,
                              ),
                              indicatorColor: AppColors.primary,
                              indicatorWeight: 2,
                              labelColor: AppColors.black,
                              unselectedLabelColor: AppColors.grey,
                              labelPadding:
                                  const EdgeInsets.symmetric(horizontal: 16),
                              controller: _tabController,
                              tabs: const [
                                Tab(text: "About Item"),
                                Tab(text: "Reviews"),
                              ],
                            ),
                          ),
                          ValueListenableBuilder(
                            valueListenable: _tabIndexNotifier,
                            builder:
                                (BuildContext context, int value, Widget? child) {
                              return IndexedStack(
                                index: value,
                                children: [
                                  AboutTab(
                                    product: widget.product,
                                  ),
                                  Container(),
                                ],
                              );
                            },
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            //SummarySheet(product: widget.product)
          ],
        ),
      ),
    );
  }
}
