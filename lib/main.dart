import 'package:flutter/material.dart';
import 'feed_item.dart';

void main() {
  runApp(const UICloneApp());
}

class UICloneApp extends StatelessWidget {
  const UICloneApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
        backgroundColor: Colors.grey,
        appBar: AppBar(
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          title: const Text('UI Clone'),
        ),
        body: Column(
          children: [
            //reels
            Container(
              color: const Color(0xFF33FFFC),
              height: 250,
              // if overlap in screen, add this child for scrollable
              child: SingleChildScrollView(
                //bouncing back when scrolling to end
                physics: const BouncingScrollPhysics(),
                // if direction is for horizontal
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    // for container looping
                    for (int i = 0;
                        i < 5;
                        i++) /*use this operator for looping all the widget*/ ...[
                      const SizedBox(width: 16),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Colors.yellow,
                        ),
                        height: 200,
                        width: 125,
                      ),
                    ]
                  ],
                ),
              ),
            ),
            //Section 2 Post
            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                children: const [
                  FeedItem(
                    title: 'Caption 1',
                    description:
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua-Part1',
                  ),
                  SizedBox(height: 10),
                  FeedItem(
                    title: 'Caption 2',
                    description:
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua-Part2',
                    icon: Icons.person,
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
