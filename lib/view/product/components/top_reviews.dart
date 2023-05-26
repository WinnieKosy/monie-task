import 'package:flutter/material.dart';
import 'package:ui/contant/app_colors.dart';
import 'package:ui/model/product_model.dart';
import 'package:ui/view/product/components/review_widget.dart';

class TopReviews extends StatelessWidget {
  final Product product;
  const TopReviews({
    Key? key,
    required this.product,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children:[
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Top Reviews',
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    '2 out of 2.3k reviews',
                    style: TextStyle(
                      fontSize: 12.0,
                      color: Colors.grey[500],
                    ),
                  ),
                ],
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 8.0),
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(4.0),
                  border: Border.all(width: 0.2)
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      'Popular',
                      style: TextStyle(
                        fontSize: 12.0,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    SizedBox(width:30 ,),
                    Icon(Icons.keyboard_arrow_down_sharp,color: Colors.grey,),
                  ],
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 16,
        ),
        ListView.separated(
          physics: const NeverScrollableScrollPhysics(),
          itemCount: product.reviews.length,
          shrinkWrap: true,
          itemBuilder: (BuildContext context, int index) {
            return ReviewWidget(
              review: product.reviews[index],
            );
          },
          separatorBuilder: (BuildContext context, int index) => Divider(),
        ),
        const SizedBox(
          height: 16,
        ),
        const Divider(
          color: AppColors.categoryColor,
          thickness: 1,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                const Card(
                    elevation: 2,
                    shape: StadiumBorder(),
                    child: Padding(
                      padding: EdgeInsets.all(4.0),
                      child: Icon(
                        Icons.keyboard_arrow_left_rounded,
                        color: AppColors.black,
                      ),
                    )),
                const SizedBox(
                  width: 8,
                ),
                ...List.generate(
                    3,
                        (index) => Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "${index + 1}",
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: AppColors.grey,
                        ),
                      ),
                    )).toList(),
                const SizedBox(width: 8),
                const Text("....",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: AppColors.grey,
                    )),
                const SizedBox(width: 8),
                const Card(
                    elevation: 2,
                    shape: StadiumBorder(),
                    child: Padding(
                      padding: EdgeInsets.all(4.0),
                      child: Icon(
                        Icons.keyboard_arrow_right_rounded,
                        color: AppColors.black,
                      ),
                    )),
              ],
            ),
            TextButton(
              onPressed: () {},
              style: TextButton.styleFrom(
                padding: const EdgeInsets.symmetric(
                  vertical: 8.0,
                  horizontal: 16.0,
                ),
                foregroundColor: AppColors.primary,
                textStyle: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
              child: const Text("See more"),
            )
          ],
        )
      ],
    );
  }
}
