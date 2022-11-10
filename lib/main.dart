import 'package:flutter/material.dart';
import 'package:camera/camera.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'theme.dart';
import 'package:graduation_project/screens/main_screens.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

Future<void> main() async {

  WidgetsFlutterBinding.ensureInitialized(); /// runApp()전에 카메라 관련 초기화 작업
  final cameras = await availableCameras(); /// 디바이스에서 사용 가능한 카메라 리스트를 가져온다.
  final firstCamera = cameras.first; /// 위에 카메라 리스트에서 구체적으로 1개를 가져온다.
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  Future.delayed(Duration(seconds: 3)).then((value) => FlutterNativeSplash.remove());

  runApp(GraduationApp(
      firstCamera: firstCamera
      ));
}

class GraduationApp extends StatelessWidget {
  final firstCamera;
  DateTime pre_backpress = DateTime.now();
  GraduationApp({
    Key? key,
    this.firstCamera,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'liquor_team',
      debugShowCheckedModeBanner: false,
      home: MainScreen(
          firstCamera: this.firstCamera,
        pre_backpress: this.pre_backpress,
          ),
      theme: ThemeData(fontFamily: 'text'),
    );
  }
}
