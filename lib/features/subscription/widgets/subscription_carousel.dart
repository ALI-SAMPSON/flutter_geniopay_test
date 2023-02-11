import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_geniopay_app/constants/app_color.dart';
import 'package:flutter_geniopay_app/features/subscription/widgets/plan_item.dart';
import 'package:flutter_geniopay_app/utils/size_helpers.dart';

class SubscriptionCarousel extends StatefulWidget {
  const SubscriptionCarousel({Key? key}) : super(key: key);

  @override
  State<SubscriptionCarousel> createState() => _SubscriptionCarouselState();
}

class _SubscriptionCarouselState extends State<SubscriptionCarousel> {
  // sample data for plans
  final plans = [
    'Basic Plan',
    'Standards Plan',
    'Silver Plan',
  ];

  int _currentIndex = 0;
  final CarouselController _controller = CarouselController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider(
          carouselController: _controller,
          options: CarouselOptions(
              height: displayHeight(context) * 0.67,
              autoPlay: false,
              aspectRatio: 16 / 9,
              viewportFraction: 1.0,
              enlargeCenterPage: true,
              autoPlayAnimationDuration: Duration(milliseconds: 1000),
              autoPlayCurve: Curves.fastOutSlowIn,
              scrollDirection: Axis.horizontal,
              onPageChanged: (index, reason) {
                setState(() => _currentIndex = index);
              }),
          items: plans.map((height) {
            return Builder(
              builder: (BuildContext context) {
                return PlanItem(
                  height: displayHeight(context) * 0.65,
                );
              },
            );
          }).toList(),
        ),
        SizedBox(height: displayHeight(context) * 0.004),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: plans.asMap().entries.map((entry) {
            return GestureDetector(
              onTap: () => _controller.animateToPage(entry.key),
              child: Container(
                width: _currentIndex == entry.key ? 12.0 : 8.0,
                height: _currentIndex == entry.key ? 12.0 : 8.0,
                margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: (Theme.of(context).brightness == Brightness.dark
                          ? Colors.white
                          : AppColor.colorPrimary)
                      .withOpacity(_currentIndex == entry.key ? 1.0 : 0.4),
                ),
              ),
            );
          }).toList(),
        ),
      ],
    );
  }
}
