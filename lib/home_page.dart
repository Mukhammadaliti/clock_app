import 'package:clock_app/clock_view.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    var me = DateTime.now();
    var formattedTime = DateFormat('HH:mm').format(me);
    var formattedDate = DateFormat('EEE, d MMM').format(me);
    var timezoneString = me.timeZoneOffset.toString().split(".").first;
    var offsetSign = "";
    if (!timezoneString.startsWith('-')) offsetSign = "+";
    print(timezoneString);
    return Scaffold(
      backgroundColor: Color(0xff2d2f41),
      body: Row(
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              buildMenuButton(
                "Clock",
                "assets/images/clock_icon.png",
              ),
              buildMenuButton(
                "Alarm",
                "assets/images/alarm_icon.png",
              ),
              buildMenuButton(
                "Timer",
                "assets/images/timer_icon.png",
              ),
              buildMenuButton(
                "Stopwatch",
                "assets/images/stopwatch_icon.png",
              ),
            ],
          ),
          VerticalDivider(
            color: Colors.white54,
            width: 1,
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: 32,
                vertical: 64,
              ),
              // alignment: Alignment.center,
              // color: Color(0xff2d2f41),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Flexible(
                    flex: 1,
                    fit: FlexFit.tight,
                    child: Text(
                      "Clock",
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'avenir',
                        fontSize: 24,
                      ),
                    ),
                  ),
                  Flexible(
                    flex: 2,
                    child: Column(
                      children: [
                        Text(
                          formattedTime,
                          style: TextStyle(
                            fontFamily: 'avenir',
                            color: Colors.white,
                            fontSize: 64,
                          ),
                        ),
                        Text(
                          formattedDate,
                          style: TextStyle(
                            fontFamily: 'avenir',
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Flexible(
                    flex: 4,
                    fit: FlexFit.tight,
                    child: Align(
                        alignment: Alignment.center,
                        child: ClockView(
                          size: 250,
                        )),
                  ),
                  Flexible(
                    flex: 2,
                    fit: FlexFit.tight,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Timezone",
                          style: TextStyle(
                            fontFamily: 'avenir',
                            color: Colors.white,
                            fontSize: 24,
                          ),
                        ),
                        SizedBox(
                          height: 16,
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
                              "UTC " + offsetSign + timezoneString,
                              style: TextStyle(
                                fontFamily: 'avenir',
                                color: Colors.white,
                                fontSize: 24,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Padding buildMenuButton(String title, String image) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: InkWell(
        onTap: () {},
        child: Column(
          children: [
            Image.asset(
              image,
              // width: 50,
              scale: 1.5,
            ),
            SizedBox(
              height: 16,
            ),
            Text(
              title,
              style: TextStyle(
                  color: Colors.white, fontSize: 14, fontFamily: 'avenir'),
            )
          ],
        ),
      ),
    );
  }
}
