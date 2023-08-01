import 'package:fe/widget/slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HiddenAppBar extends StatefulWidget {
  const HiddenAppBar({Key? key}) : super(key: key);

  @override
  State<HiddenAppBar> createState() => _HiddenAppBarState();
}

class _HiddenAppBarState extends State<HiddenAppBar> {

  List<String> images = [
    "lib/image/advertisement1.png",
    "lib/image/advertisement2.png",
    "lib/image/advertisement3.png",
  ];

  @override
  Widget build(BuildContext context) {
    return NestedScrollView(
      headerSliverBuilder: (context, innerBoxIsScrolled) {
        return [
          SliverAppBar(
            floating: false,
            snap: false,
            pinned: true,
            expandedHeight: 172.0,
            toolbarHeight: 50.0,
            actionsIconTheme: IconThemeData(opacity: 0.0),
            flexibleSpace:  Stack(
              fit: StackFit.expand,
              children: [
                PageView.builder(
                    itemCount: 3,
                    pageSnapping: true,
                    itemBuilder: (context,pagePosition){
                      return Container(
                          child: Image.asset(images[pagePosition]));
                    }),
              ],
            ),
          ),
        ];
      },
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: WillPopScope(
              onWillPop: () => _onBackPressed(context),
              child: Container(),
            ),
          ),
          // 나머지 컨텐츠를 추가하세요
        ],
      ),
    )
    ;
  }
  Future<bool> _onBackPressed(BuildContext context) async {
    return showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Exit App'),
        content: const Text('앱을 종료하시겠습니까??'),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(false),
            child: const Text('No'),
          ),
          TextButton(
            onPressed: () {
              SystemNavigator.pop(); // 앱 종료
            },
            child: const Text('Yes'),
          ),
        ],
      ),
    ).then((value) => value ?? false);
  }
  // List<Widget> headerSliverBuilder(BuildContext context, bool innerBoxIsScrolled){
  //   return <Widget>[
  //     SliverOverlapAbsorber(
  //       handle: NestedScrollView.sliverOverlapAbsorberHandleFor(context),
  //       sliver: SliverPersistentHeader(
  //         pinned: true,
  //         delegate: SliverHeaderDelegateCS(
  //           minHeight: sliverMinHeight,
  //           maxHeight: sliverMaxHeight,
  //           minChild: minTopChild(),
  //           maxChild: topChild(),
  //         ),
  //       ),
  //     ),
  //   ];
  // }


}
