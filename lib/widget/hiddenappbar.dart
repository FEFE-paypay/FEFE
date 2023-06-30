import 'package:fe/widget/slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HiddenAppBar extends StatefulWidget {
  const HiddenAppBar({Key? key}) : super(key: key);

  @override
  State<HiddenAppBar> createState() => _HiddenAppBarState();
}

class _HiddenAppBarState extends State<HiddenAppBar> {

  List<String> images = [
    "lib/image/advertisement1.png",
    "lib/image/advertisement2.png",
  ];

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          floating: false,
          snap: false,
          pinned: true,
          // expandedHeight: 172.0,
          expandedHeight: 172.0,
          toolbarHeight: 50.0,
          // actionsIconTheme: IconThemeData(opacity: 0.0),
          flexibleSpace: Stack(
            fit: StackFit.expand,
            children: [
              // Image.asset(
              //   images[0],
              //   fit: BoxFit.cover,
              // ),
              PageView.builder(
                  itemCount: 2,
                  pageSnapping: true,
                  itemBuilder: (context,pagePosition){
                    return Container(
                        child: Image.asset(images[pagePosition]));
                  }),
              // Container(
              //   decoration: BoxDecoration(
              //     gradient: LinearGradient(
              //       colors: [Colors.transparent, Colors.black.withOpacity(0.5)],
              //       begin: Alignment.topCenter,
              //       end: Alignment.bottomCenter,
              //     ),
              //   ),
              // ),
            ],
          ),
          // FlexibleSpaceBar(
          //   centerTitle: true,
          //   background:
          //   PageView.builder(
          //       itemCount: 2,
          //       pageSnapping: true,
          //       itemBuilder: (context,pagePosition){
          //         return Container(
          //             child:Image.asset(
          //               images[pagePosition],
          //             ));
          //       }),
          // ),
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate(
            (BuildContext context, int index) {
              return Container(
                color: index.isOdd ? Colors.white : Colors.grey,
                height: 100.0,
                child: Center(
                  child: Text('$index', textScaleFactor: 5),
                ),
              );
            },
            childCount: 10,
          ),
        ),
      ],
    );
  }
}
