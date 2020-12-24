import 'package:flutter/material.dart';

class Start extends StatefulWidget {
  @override
  _StartState createState() => _StartState();
}

class _StartState extends State<Start> {
  String no1, cost1;
  void setvar(var no, var cost) {
    print(no);
    print(cost);
    Navigator.pushReplacementNamed(context, '/loading',
        arguments: {'noOfCigs': no, 'cigCost': cost});
  }

  @override
  void initState() {
    // ignore: todo
    // TODO: implement initState
    super.initState();
    //setvar(no1, cost1);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orangeAccent,
        title: Center(child: Text('Smoking Profile')),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            Center(
              child: Image.network(
                "https://image.freepik.com/free-vector/cigarette-logo_10250-4158.jpg",
                height: 200.0,
                width: 600.0,
              ),
            ),
            TextFormField(
              decoration: const InputDecoration(
                  hintText: 'No of cigarettes you smoke daily',
                  labelText: 'Cigarette Consumption'),
              onChanged: (String no) {
                no1 = no;
                print(no1);
              },
            ),
            TextFormField(
              decoration: const InputDecoration(
                  hintText: 'cigarette of the brand',
                  labelText: 'Average cost of a cigarette'),
              onChanged: (String cost) {
                cost1 = cost;
                print(cost1);
              },
            ),
            SizedBox(
              child: FlatButton(
                onPressed: () {
                  setvar(no1, cost1);
                },
                color: Colors.orangeAccent,
                child: Text(
                  'START',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
