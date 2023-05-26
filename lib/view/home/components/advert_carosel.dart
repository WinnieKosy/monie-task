import 'dart:async';

import 'package:flutter/material.dart';
import 'package:ui/view/home/components/advert_widget.dart';

import '../../../model/advert.dart';

class AdvertCarousel extends StatefulWidget {
  const AdvertCarousel({Key? key}) : super(key: key);

  @override
  _AdvertCarouselState createState() => _AdvertCarouselState();
}

class _AdvertCarouselState extends State<AdvertCarousel> {
  final PageController _pageController = PageController();
  int _currentIndex = 0;

  @override
  void initState() {
    super.initState();
    Timer.periodic(const Duration(seconds: 10), (_) {
      setState(() {
        _currentIndex =
            (_currentIndex + 1) % AdvertModel.getSampleAdvert().length;
      });
      _pageController.animateToPage(_currentIndex,
          duration: const Duration(milliseconds: 300), curve: Curves.easeInOut);
    });
  }

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      controller: _pageController,
      itemCount: AdvertModel.getSampleAdvert().length,
      onPageChanged: (int index) {
        setState(() {
          _currentIndex = index;
        });
      },
      itemBuilder: (BuildContext context, int index) => AdvertWidget(
        model: AdvertModel.getSampleAdvert()[index],
        index: index,
        currentIndex: _currentIndex,
        count: AdvertModel.getSampleAdvert().length,
      ),
    );
  }
}
