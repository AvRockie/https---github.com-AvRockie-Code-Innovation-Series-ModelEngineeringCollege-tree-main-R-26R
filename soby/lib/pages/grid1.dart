import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void cigAvoid() {}

void lifetimeExtend() {}

class Gridone extends StatefulWidget {
  @override
  _GridoneState createState() => _GridoneState();
}

class _GridoneState extends State<Gridone> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.count(
        crossAxisCount: 2,
        children: <Widget>[
          Container(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(15.0, 15.0, 15.0, 0.0),
              child: Stack(
                children: [
                  Card(
                    elevation: 10.0,
                    child: SingleChildScrollView(
                      child: Column(
                        children: <Widget>[
                          Image.network(
                            "https://static.scientificamerican.com/sciam/cache/file/1B9377D3-BFA7-480D-8EFFCF13EA7E195D_source.jpg?w=590&h=800&48A88A85-876E-4490-A428E52BC0CE8A9A",
                            height: 150.0,
                            width: 200.0,
                            fit: BoxFit.cover,
                            color: Color.fromRGBO(255, 255, 255, 0.25),
                            colorBlendMode: BlendMode.modulate,
                          ),
                          SizedBox(
                            height: 5.0,
                          ),
                          Text(
                            'Lifetime Extended',
                            style: TextStyle(
                              fontSize: 20.0,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Center(
                    child: Text(
                      '5%',
                      style: TextStyle(
                        fontSize: 25.0,
                        color: Colors.red,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(15.0, 15.0, 15.0, 0.0),
              child: Stack(
                children: [
                  Card(
                    elevation: 10.0,
                    child: SingleChildScrollView(
                      child: Column(
                        children: <Widget>[
                          Image.network(
                            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT_B_ZJZQACoo44PRYrFpO-kLxZxzwDRjr96Q&usqp=CAU",
                            height: 150.0,
                            width: 200.0,
                            fit: BoxFit.cover,
                            color: Color.fromRGBO(255, 255, 255, 0.25),
                            colorBlendMode: BlendMode.modulate,
                          ),
                          SizedBox(
                            height: 5.0,
                          ),
                          Text(
                            'Money Saved',
                            style: TextStyle(
                              fontSize: 20.0,
                              color: Colors.black87,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Center(
                    child: SingleChildScrollView(
                      child: Text(
                        '350 RS',
                        style: TextStyle(
                          fontSize: 25.0,
                          color: Colors.red,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          Container(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(15.0, 15.0, 15.0, 0.0),
              child: Stack(
                children: [
                  Card(
                    elevation: 10.0,
                    child: SingleChildScrollView(
                      child: Column(
                        children: <Widget>[
                          Image.network(
                            "https://i0.wp.com/cdn-prod.medicalnewstoday.com/content/images/articles/319/319460/quitting-smoking-can-be-tough-but-we-have-put-together-some-steps-that-may-help-you-along-the-way.jpg?w=1155&h=1541",
                            height: 150.0,
                            width: 200.0,
                            fit: BoxFit.cover,
                            color: Color.fromRGBO(255, 255, 255, 0.25),
                            colorBlendMode: BlendMode.modulate,
                          ),
                          SizedBox(
                            height: 5.0,
                          ),
                          Text(
                            'Cigarettes Avoided',
                            style: TextStyle(
                              fontSize: 18.0,
                              color: Colors.black87,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Center(
                    child: SingleChildScrollView(
                      child: Text(
                        '35',
                        style: TextStyle(
                          fontSize: 25.0,
                          color: Colors.red,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(15.0, 15.0, 15.0, 0.0),
              child: Card(
                elevation: 10.0,
                child: SingleChildScrollView(
                  child: Column(
                    children: <Widget>[
                      InkWell(
                        onTap: () async {
                          dynamic result = await Navigator.pushNamed(
                              context, '/achievements');
                        },
                        child: Image.network(
                          "https://cdn.tutsplus.com/gamedev/uploads/legacy/058_designingAchievements/Achievements_in_Games_Preview.png",
                          height: 150.0,
                          width: 200.0,
                          fit: BoxFit.cover,
                        ),
                      ),
                      SizedBox(
                        height: 5.0,
                      ),
                      Text(
                        'Achievements',
                        style: TextStyle(
                          fontSize: 19.0,
                          color: Colors.black87,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
