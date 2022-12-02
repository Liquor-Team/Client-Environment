
import 'dart:async';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:graduation_project/screens/information_result/liquor_information.dart';
import 'package:graduation_project/util/config.dart';
import '../../models/camera_response.dart';
import '../../screens/information_result/liquor_information.dart';


class Loading extends StatefulWidget {

  FormData imageFormData;

  Loading({Key? key, required this.imageFormData }) : super(key: key);

  @override
  State<Loading> createState() => _Loading();
}

class _Loading extends State<Loading> {

  late Dio yoloDio;
  late Timer _timer;
  bool _isRunning = false;
  int _timerCount = 0;

  @override
  Future<void> initState() async {
    super.initState();
    final options = BaseOptions(
      contentType: yoloContentType,
      baseUrl: yoloServerUrl,
      connectTimeout: yoloConnectTimeout,
      receiveTimeout: yoloReceiveTimeout
    );
    yoloDio = Dio(options);         /// API 객체 생성

    /// 여기서 사진 전송 해야 함.
    /// 그리고 결과에 따라서 술정보 페이지

    final yoloResponse = await yoloDio.post(yoloServerPath, data : widget.imageFormData);
    Map<String, dynamic> responseMap = yoloResponse.data;
    final parsedYoloResponse = CameraResponse.fromJson(responseMap);


    if(parsedYoloResponse.size! > 1) {
      /// 여러 개
      Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => DrinkInformation(
              liquorName: parsedYoloResponse.liquors![0].name.toString())));

    } else if (parsedYoloResponse.size! == 1) {   /// 1개
      Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => DrinkInformation(
              liquorName: parsedYoloResponse.liquors![0].name.toString())));    /// 화면 이동.
    } else {        /// 인식 불가
      // Navigator.of(context).push(
      //     MaterialPageRoute(builder: (context) => DrinkInformation(liquorName: "Jim-Beam"))
      // );
      showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: Text("인식에 실패했습니다."),
              content: Text("다시 한번 찍어보세요"),
              actions: [
                ElevatedButton(
                  child: Text("예"),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                )
              ],
            );
          }
      );
    }

  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
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
          decoration: BoxDecoration(
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

  Future<dynamic> _showEmptyDialog(BuildContext context) async {
    return showDialog(
      context: context,
      builder: (BuildContext context) => AlertDialog(
        title: const Text("술 인식이 1개도 안 됐어요"),
        content: const Text("다시 찍어보세요"),
        actions: [
          ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('예')),
        ],
      ),
    );
  }

}
