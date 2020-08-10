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
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            Image.asset('assets/nihongo.jpg'),
            Divider(
              thickness: 5,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 18, top: 20),
              child: Text(
                "Basic Level N5",
                style: TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
            ),
            ListTile(
              leading: Icon(Icons.looks_one),
              title: Text("Vocabulary"),
              trailing: Icon(Icons.navigate_next),
            ),
            ListTile(
              leading: Icon(Icons.looks_two),
              title: Text("Grammar"),
              trailing: Icon(Icons.navigate_next),
            ),
            ListTile(
              leading: Icon(Icons.looks_3),
              title: Text("Kanji"),
              trailing: Icon(Icons.navigate_next),
            ),
            ListTile(
              leading: Icon(Icons.looks_4),
              title: Text("Listening"),
              trailing: Icon(Icons.navigate_next),
            ),
            Divider(
              thickness: 5,
            ),
            ListTile(
              leading: Icon(Icons.wrap_text),
              title: Text("Practice writing"),
              trailing: Icon(Icons.navigate_next),
            ),
            ListTile(
              leading: Icon(Icons.rate_review),
              title: Text("Rate App"),
              trailing: Icon(Icons.navigate_next),
            ),
            ListTile(
              leading: Icon(Icons.share),
              title: Text("Share App"),
              trailing: Icon(Icons.navigate_next),
            ),
          ],
        ),
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
