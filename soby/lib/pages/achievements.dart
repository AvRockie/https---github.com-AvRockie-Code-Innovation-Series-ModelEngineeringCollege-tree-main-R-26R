import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

double n = 15;
double n2 = 0, n3 = 0, n4 = 0, n1 = 0;

void okda(double n) {
  if (n < 7) {
    n1 = (n / 7);
  } else if (n < 14 && n > 7) {
    n2 = ((n % 7)) / 7;
    n1 = 1;
  } else if (n > 14 && n < 21) {
    n3 = ((n % 7)) / 7;
    n1 = 1;
    n2 = 1;
  } else if (n > 21 && n < 28) {
    n4 = ((n % 7)) / 7;
    n1 = 1;
    n2 = 1;
    n3 = 1;
  }
}

void stars(double n1, double n2, double n3, double n4) {
  if (n1 == 1) {
    Column(children: <Widget>[
      Image.network(
        "https://freesvg.org/img/hp_gold_star.png",
        height: 150.0,
        width: 200.0,
        fit: BoxFit.cover,
        color: Color.fromRGBO(255, 255, 255, 0.25),
        colorBlendMode: BlendMode.modulate,
      )
    ]);
  }
  if (n1 == 1 && n2 == 2) {
    Column(children: <Widget>[
      Image.network(
        "https://freesvg.org/img/hp_gold_star.png",
        height: 150.0,
        width: 200.0,
        fit: BoxFit.cover,
        color: Color.fromRGBO(255, 255, 255, 0.25),
        colorBlendMode: BlendMode.modulate,
      )
    ]);
  }
  if (n1 == 1 && n2 == 2 && n3 == 3) {
    Column(children: <Widget>[
      Image.network(
        "https://freesvg.org/img/hp_gold_star.png",
        height: 150.0,
        width: 200.0,
        fit: BoxFit.cover,
        color: Color.fromRGBO(255, 255, 255, 0.25),
        colorBlendMode: BlendMode.modulate,
      )
    ]);

    if (n1 == 1 && n2 == 1 && n3 == 1 && n4 == 1) {
      Column(children: <Widget>[
        Image.network(
          "https://freesvg.org/img/hp_gold_star.png",
          height: 150.0,
          width: 200.0,
          fit: BoxFit.cover,
          color: Color.fromRGBO(255, 255, 255, 0.25),
          colorBlendMode: BlendMode.modulate,
        )
      ]);
    }
  }
}

class Achieved extends StatefulWidget {
  @override
  _AchievedState createState() => _AchievedState();
}

class _AchievedState extends State<Achieved> {
  @override
  Widget build(BuildContext context) {
    okda(n);
    stars(n1, n2, n3, n4);
    return Scaffold(
      backgroundColor: Colors.orangeAccent[300],
      appBar: AppBar(
        backgroundColor: Colors.orangeAccent,
        title: Padding(
            padding: const EdgeInsets.fromLTRB(0.0, 0, 0, 0.0),
            child: Center(
              child: Text(
                'Achievements',
                style: TextStyle(
                    color: Colors.black54,
                    fontSize: 30,
                    fontWeight: FontWeight.w500),
              ),
            )),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 10,
          ),
          Text(
            "Week 1",
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w400,
                color: Colors.grey[800]),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: new LinearPercentIndicator(
              width: 300.0,
              lineHeight: 14.0,
              percent: n1, //n/7 where n = day
              backgroundColor: Colors.grey,
              progressColor: Colors.blue,
            ),
          ),
          SizedBox(height: 50),
          Text(
            "Week 2",
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w400,
                color: Colors.grey[800]),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: new LinearPercentIndicator(
              width: 300.0,
              lineHeight: 14.0,
              percent: n2, //n/30*100 where n = day
              backgroundColor: Colors.grey,
              progressColor: Colors.blue,
            ),
          ),
          SizedBox(height: 50),
          Text(
            "Week 3",
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w400,
                color: Colors.grey[800]),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: new LinearPercentIndicator(
              width: 300.0,
              lineHeight: 14.0,
              percent: n3, //n/30*100 where n = day
              backgroundColor: Colors.grey,
              progressColor: Colors.blue,
            ),
          ),
          SizedBox(height: 50),
          Text(
            "Week 4",
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w400,
                color: Colors.grey[800]),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: new LinearPercentIndicator(
              width: 300.0,
              lineHeight: 14.0,
              percent: n4, //n/30*100 where n = day
              backgroundColor: Colors.grey,
              progressColor: Colors.blue,
            ),
          ),
        ],
      ),
    );
  }
}
