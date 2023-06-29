import 'package:fe/widget/slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HiddenAppBar extends StatefulWidget {
  const HiddenAppBar({Key? key}) : super(key: key);

  @override
  State<HiddenAppBar> createState() => _HiddenAppBarState();
}

class _HiddenAppBarState extends State<HiddenAppBar> {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics:
          const BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
      slivers: <Widget>[
        SliverAppBar(
          stretch: true,
          onStretchTrigger: () {
            // Function callback for stretch
            return Future<void>.value();
          },
          toolbarHeight: 500,
          expandedHeight: 300.0,
          backgroundColor: Colors.transparent,
          flexibleSpace: FlexibleSpaceBar(
            stretchModes: const <StretchMode>[
              StretchMode.zoomBackground,
              // StretchMode.blurBackground,
              StretchMode.fadeTitle,
            ],
            centerTitle: true,
            background: Stack(
              fit: StackFit.expand,
              children: <Widget>[
                Image.network(
                  'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg',
                  fit: BoxFit.cover,
                )
                // SliderWedget()
                ,
                // const DecoratedBox(
                //   decoration: BoxDecoration(
                //     gradient: LinearGradient(
                //       begin: Alignment(0.0, 0.5),
                //       end: Alignment.center,
                //       colors: <Color>[
                //         Color(0x60000000),
                //         Color(0x00000000),
                //       ],
                //     ),
                //   ),
                // ),
              ],
            ),
          ),
        ),
        SliverList(
          delegate: SliverChildListDelegate(
            const <Widget>[
              ListTile(
                leading: Icon(Icons.wb_sunny),
                title: Text('Sunday'),
                subtitle: Text('sunny, h: 80, l: 65'),
              ),
              ListTile(
                leading: Icon(Icons.wb_sunny),
                title: Text('Monday'),
                subtitle: Text('sunny, h: 80, l: 65'),
              ),
              // ListTiles++
              ListTile(
                leading: Icon(Icons.wb_sunny),
                title: Text('Monday'),
                subtitle: Text('sunny, h: 80, l: 65'),
              ),
              ListTile(
                leading: Icon(Icons.wb_sunny),
                title: Text('Monday'),
                subtitle: Text('sunny, h: 80, l: 65'),
              ),
              ListTile(
                leading: Icon(Icons.wb_sunny),
                title: Text('Monday'),
                subtitle: Text('sunny, h: 80, l: 65'),
              ),
              ListTile(
                leading: Icon(Icons.wb_sunny),
                title: Text('Monday'),
                subtitle: Text('sunny, h: 80, l: 65'),
              ),
              ListTile(
                leading: Icon(Icons.wb_sunny),
                title: Text('Monday'),
                subtitle: Text('sunny, h: 80, l: 65'),
              ),
              ListTile(
                leading: Icon(Icons.wb_sunny),
                title: Text('Monday'),
                subtitle: Text('sunny, h: 80, l: 65'),
              ),
              ListTile(
                leading: Icon(Icons.wb_sunny),
                title: Text('Monday'),
                subtitle: Text('sunny, h: 80, l: 65'),
              ),
              ListTile(
                leading: Icon(Icons.wb_sunny),
                title: Text('Monday'),
                subtitle: Text('sunny, h: 80, l: 65'),
              ),
              ListTile(
                leading: Icon(Icons.wb_sunny),
                title: Text('Monday'),
                subtitle: Text('sunny, h: 80, l: 65'),
              ),
              ListTile(
                leading: Icon(Icons.wb_sunny),
                title: Text('Monday'),
                subtitle: Text('sunny, h: 80, l: 65'),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
