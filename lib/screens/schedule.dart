import 'package:flutter/material.dart';
import '../components/bottom_bar.dart';

class ScheduleScreen extends StatefulWidget {
  static const String id = 'schedule_screen';

  @override
  _ScheduleScreenState createState() => _ScheduleScreenState();
}

class _ScheduleScreenState extends State<ScheduleScreen> {
  final titles = [
    'bike',
    'boat',
    'bus',
    'car',
    'railway',
    'run',
    'subway',
    'transit',
    'walk'
  ];

  final icons = [
    Icons.directions_bike,
    Icons.directions_boat,
    Icons.directions_bus,
    Icons.directions_car,
    Icons.directions_railway,
    Icons.directions_run,
    Icons.directions_subway,
    Icons.directions_transit,
    Icons.directions_walk
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Schedule'),
      ),
      body: Container(
        padding: EdgeInsets.all(10.0),
        height: 300.0,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: titles.length,
          itemBuilder: (context, index) {
            return Card(
              child: Container(
                width: 360.0,
                child: ListTile(
                  leading: Icon(icons[index]),
                  title: Text(titles[index]),
                ),
              ),
            );
          },
        ),
      ),
      bottomNavigationBar: BottomBar(onTap: null, currentIndex: 1),
    );
  }
}

// ListView.builder(
//         padding: EdgeInsets.symmetric(vertical: 16.0),
//         itemBuilder: (BuildContext context, int index) {
//           if (index % 2 == 0) {
//             return _buildCarousel(context, index ~/ 2);
//           } else {
//             return Divider();
//           }
//         },
//       )

// ListView.builder(
//           scrollDirection: Axis.horizontal,
//           itemCount: productData.length,
//           itemBuilder: (BuildContext context, int i) =>
//               Card(
//                 child: Container(
//                   width: 160.0,
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                     children: <Widget>[
//                       Text('Discipline curl'),
//                       Text('https://sgdfgdgd/jdkjdhj.png/jashdghd'),
//                       Text('20'),
//                       Text('akhsgdahghsgdh')
//                     ],
//                   ),
//                 ),
//               ),
//         )

// ListView.builder(
//         itemCount: titles.length,
//         itemBuilder: (context, index) {
//           return Card(
//             child: ListTile(
//               leading: Icon(icons[index]),
//               title: Text(titles[index]),
//             ),
//           );
//         },
//       ),

Widget _buildCarousel(BuildContext context, int carouselIndex) {
  return Column(
    mainAxisSize: MainAxisSize.min,
    children: <Widget>[
      Text('Carousel $carouselIndex'),
      SizedBox(
        // you may want to use an aspect ratio here for tablet support
        height: 200.0,
        child: PageView.builder(
          // store this controller in a State to save the carousel scroll position
          controller: PageController(viewportFraction: 0.8),
          itemBuilder: (BuildContext context, int itemIndex) {
            return _buildCarouselItem(context, carouselIndex, itemIndex);
          },
        ),
      )
    ],
  );
}

Widget _buildCarouselItem(
    BuildContext context, int carouselIndex, int itemIndex) {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: 4.0),
    child: Container(
      decoration: BoxDecoration(
        color: Colors.grey,
        borderRadius: BorderRadius.all(Radius.circular(4.0)),
      ),
    ),
  );
}
