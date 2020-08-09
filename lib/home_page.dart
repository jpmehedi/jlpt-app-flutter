import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jlpt5/lesson_one_screen.dart';

class HomePage extends StatefulWidget {
  static String id = "HomePage";
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("JLPT N5"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              LessonButtonBuilder(
                buttonText: 'Lesson One',
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => LessonOneScreen()));
                },
              ),
              LessonButtonBuilder(
                buttonText: 'Lesson Two',
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => LessonOneScreen()));
                },
              ),
              LessonButtonBuilder(
                buttonText: 'Lesson Three',
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => LessonOneScreen()));
                },
              ),
              LessonButtonBuilder(
                buttonText: 'Lesson Four',
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => LessonOneScreen()));
                },
              ),
              LessonButtonBuilder(
                buttonText: 'Lesson Five',
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => LessonOneScreen()));
                },
              ),
              LessonButtonBuilder(
                buttonText: 'Lesson Six',
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => LessonOneScreen()));
                },
              ),
              LessonButtonBuilder(
                buttonText: 'Lesson Seven',
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => LessonOneScreen()));
                },
              ),
              LessonButtonBuilder(
                buttonText: 'Lesson Ten',
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => LessonOneScreen()));
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class LessonButtonBuilder extends StatelessWidget {
  LessonButtonBuilder({this.buttonText, this.onPressed});
  final String buttonText;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Colors.blue,
      child: FlatButton(
        onPressed: onPressed,
        child: Text(
          buttonText,
          style: TextStyle(
            color: Colors.white,
            fontSize: 24,
          ),
        ),
      ),
    );
  }
}
