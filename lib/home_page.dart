import 'package:clock_app/clock_view.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var me = DateTime.now();
  // var formattedTime = DateFormat('').format(me);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff2d2f41),
      body: Container(
        padding: EdgeInsets.all(32),
        // alignment: Alignment.center,
        // color: Color(0xff2d2f41),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              "Clock",
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
              ),
            ),
            SizedBox(
              height: 32,
            ),
            Text(
              "Clock",
              style: TextStyle(
                color: Colors.white,
                fontSize: 64,
              ),
            ),
            Text(
              "Clock",
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
            ),
            ClockView(),
            Text(
              "Timezone",
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
              ),
            ),
            Row(
              children: <Widget>[
                Icon(
                  Icons.language,
                  color: Colors.white,
                ),
                SizedBox(
                  width: 20,
                ),
                Text(
                  "UTC",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
