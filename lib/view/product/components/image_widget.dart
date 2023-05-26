import 'package:flutter/material.dart';

import '../../../utils/size_config.dart';

class ImageWidget extends StatelessWidget {
  final List<String> image;
  const ImageWidget({
    Key? key,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ColorFiltered(
          colorFilter: ColorFilter.mode(Colors.grey.withOpacity(0.1), BlendMode.srcOver),
          child: Container(
            width: MediaQuery.of(context).size.width - 30,
            height: getProportionateScreenHeight(300),
            decoration: BoxDecoration(
              color: Colors.grey.withOpacity(0.1),
              borderRadius: const BorderRadius.all(Radius.circular(10)),
              image: DecorationImage(
                image: NetworkImage(image[0]),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        Positioned(
            top: 0,
            left: 10,
            bottom: 0,
            child: Padding(
              padding: const EdgeInsets.only(top: 10),
              child: SizedBox(
                width: 50,
                child: ListView.builder(
                  itemCount: image.length,
                  itemBuilder: (context, index) {
                    return ColorFiltered(
                      colorFilter: ColorFilter.mode(Colors.grey.withOpacity(0.1), BlendMode.srcOver),
                      child: Container(
                        height: 50,
                        margin: const EdgeInsets.only(bottom: 20),
                        decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(0.1),
                          borderRadius: const BorderRadius.all(Radius.circular(10)),
                          border: Border.all(color: Colors.grey, width: 1),
                          image: DecorationImage(
                            image: NetworkImage(image[index]),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            )
        ),
      ],
    );
  }
}
