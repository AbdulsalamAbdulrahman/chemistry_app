import 'package:chemistry_app/learn/chapters/chapter1.dart';
import 'package:chemistry_app/learn/chapters/chapter12.dart';
import 'package:chemistry_app/learn/chapters/chapter2.dart';
import 'package:chemistry_app/learn/chapters/chapter3.dart';
import 'package:chemistry_app/learn/chapters/chapter4.dart';
import 'package:chemistry_app/learn/chapters/chapter5.dart';
import 'package:chemistry_app/learn/chapters/chapter6.dart';
import 'package:chemistry_app/learn/chapters/chapter7.dart';
import 'package:chemistry_app/learn/topics.dart';
import 'package:chemistry_app/quiz/quiz.dart';
import 'package:chemistry_app/splash_page.dart';
import 'package:flutter/material.dart';
import 'learn/chapters/chapter10.dart';
import 'learn/chapters/chapter11.dart';
import 'learn/chapters/chapter8.dart';
import 'learn/chapters/chapter9.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: const SplashPage(),
      routes: {
        '/chapterone': (context) => const ChapterOne(),
        '/chaptertwo': (context) => const ChapterTwo(),
        '/chapterthree': (context) => const ChapterThree(),
        '/chapterfour': (context) => const ChapterFour(),
        '/chapterfive': (context) => const ChapterFive(),
        '/chaptersix': (context) => const ChapterSix(),
        '/chapterseven': (context) => const ChapterSeven(),
        '/chaptereight': (context) => const ChapterEight(),
        '/chapternine': (context) => const ChapterNine(),
        '/chapterten': (context) => const ChapterTen(),
        '/chaptereleven': (context) => const ChapterEleven(),
        '/chaptertwelve': (context) => const ChapterTwelve(),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    super.key,
  });

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(MdiIcons.atom),
        title: const Text('Learn Chemistry'),
      ),
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        const Text(
          'Welcome',
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.bold, color: Colors.purple),
        ),
        const Padding(padding: EdgeInsets.only(top: 30)),
        Center(
          child: Wrap(
              crossAxisAlignment: WrapCrossAlignment.center,
              alignment: WrapAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    SizedBox(
                        height: 300,
                        width: 300,
                        child: GestureDetector(
                          onTap: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const TopicsPage())),
                          child: Card(
                            color: Colors.purple,
                            child: Center(
                                child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: const <Widget>[
                                  Icon(
                                    MdiIcons.atom,
                                    color: Colors.white,
                                  ),
                                  Text(
                                    'Learn',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ])),
                          ),
                        )),
                    SizedBox(
                        height: 300,
                        width: 300,
                        child: GestureDetector(
                          onTap: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Quiz())),
                          child: Card(
                            color: Colors.purple,
                            child: Center(
                                child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: const <Widget>[
                                  Icon(
                                    MdiIcons.beaker,
                                    color: Colors.white,
                                  ),
                                  Text(
                                    'Take Quiz',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ])),
                          ),
                        ))
                  ],
                ),
              ]),
        ),
      ]),
    );
  }
}
