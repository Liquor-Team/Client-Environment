import 'package:flutter/material.dart';
import 'package:camera/camera.dart';

import 'theme.dart';
import 'package:graduation_project/screens/main_screens.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

Future<void> main() async {

  WidgetsFlutterBinding.ensureInitialized();    /// runApp()전에 카메라 관련 초기화 작업
  //final cameras = await availableCameras();     /// 디바이스에서 사용 가능한 카메라 리스트를 가져온다.
  //final firstCamera = cameras.first;            /// 위에 카메라 리스트에서 구체적으로 1개를 가져온다.
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  runApp(GraduationApp(
      //firstCamera: firstCamera
  ));
}

class GraduationApp extends StatelessWidget {
  const GraduationApp({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'liquor_team',
      debugShowCheckedModeBanner: false,
      home: Home1(),
      theme: theme(),

    );
  }
}

class Home1 extends StatefulWidget {
  const Home1({Key? key}) : super(key: key);

  @override
  State<Home1> createState() => _Home1State();
}

class _Home1State extends State<Home1> {
  @override
  void initState(){
    super.initState();

    Future.delayed(Duration(seconds: 4)).then((value) => {
      FlutterNativeSplash.remove()
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Liquor++'),
        ),
        body: SafeArea(
          child: Container(
            color: Colors.lightBlueAccent,
          ),
        ),
      ),
    );
  }
}

/*
* home: Scaffold(
        appBar: AppBar(
          title: Text('Liquor++'),
        ),
        body: SafeArea(
          child: Container(
            color: Colors.lightBlueAccent,
          ),
        ),
      ),
    );
  }
}*/