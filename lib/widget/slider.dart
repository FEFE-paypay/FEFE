import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class SliderWedget extends StatefulWidget {
  const SliderWedget({Key? key}) : super(key: key);

  @override
  State<SliderWedget> createState() => _SliderWedgetState();
}

class _SliderWedgetState extends State<SliderWedget> {
  @override
  Widget build(BuildContext context) {
    return CarouselSlider(

      options: CarouselOptions(height: 200.0,autoPlay: true,autoPlayInterval: Duration(seconds: 3)),
      items: [1, 2, 3, 4, 5].map((i) {
        return Builder(
          builder: (BuildContext context) {
            return Container(
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.symmetric(horizontal: 5.0),
                decoration: BoxDecoration(color: Colors.yellowAccent),
                child: Text(
                  '광고 $i',
                  style: TextStyle(fontSize: 16.0),
                ));
          },
        );
      }).toList(),
    );
  }
}
