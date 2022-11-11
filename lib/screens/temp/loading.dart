
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:graduation_project/screens/information_result/temp_information.dart';

class Loading extends StatefulWidget {
  const Loading({Key? key}) : super(key: key);

  @override
  State<Loading> createState() => _Loading();
}

class _Loading  extends State<Loading> {

  late Timer _timer;
  bool _isRunning = false;
  int _timerCount = 0;

  @override
  void initState() {
    //incrementTime();

    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.push(
        context, MaterialPageRoute(builder: (context) => TempInformation())
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end:  Alignment.bottomRight,
          colors: <Color>[
            Color(0xffff6e7f),
            Color(0xffbfe9ff),
          ],
          tileMode: TileMode.clamp
          ),
      ),
      child: Center(
        child: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end:  Alignment.bottomRight,
              colors: <Color>[
                Color(0xffff6e7f),
                Color(0xffbfe9ff),
              ],
              tileMode: TileMode.clamp,
            )
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Spacer(flex: 3),
              Image.asset("lib/assets/giphy_loading.gif", width: 200, height: 200),
              Image.asset("lib/assets/loading_bar.gif"),
              Spacer(flex: 1)
            ],
          ),
        ),
      ),
    );
  }

  void incrementTime() {
    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        _timerCount++;
      });
    });
  }


}
