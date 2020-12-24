import 'package:flutter/material.dart';
import 'package:soby/pages/home.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Loading extends StatefulWidget {
  Map data = {};
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  void setvar() async {
    await Future.delayed(Duration(milliseconds: 300), () {});
    Navigator.pushReplacementNamed(context, '/home'
        , arguments: {
      'no' : widget.data['noOfCigs'],
      'cost' : widget.data['cigCost'],
    }
    );
  }

  @override
  void initState() {
    super.initState();
    setvar();
  }
  @override
  Widget build(BuildContext context) {
    widget.data = ModalRoute.of(context).settings.arguments;

    return Scaffold(
        backgroundColor: Colors.white,
        body: Center(
            child: SpinKitFadingCube(
              color: Colors.orangeAccent,
              size: 50.0,
            )
        ),
    );
  }
}
