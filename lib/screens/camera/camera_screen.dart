import 'dart:async';

import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'package:camera/camera.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'package:sn_progress_dialog/sn_progress_dialog.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import '../../models/camera_response.dart';
import '../information_result/deprecated_information.dart';
import '../../util/config.dart';
import 'package:graduation_project/screens/temp/loading.dart';

import '../../models/camera_liquor.dart';

class CameraScreen extends StatefulWidget {
  final CameraDescription camera;

  const CameraScreen({Key? key, required this.camera}) : super(key: key);

  /// 생성자
  @override
  CameraScreenState createState() => CameraScreenState();
}

class CameraScreenState extends State<CameraScreen> {
  late CameraController _controller;
  late Future<void> _initializeControllerFuture;
  late Dio yoloDio;

  @override
  void initState() {
    super.initState();
    _controller = CameraController(widget.camera, ResolutionPreset.medium);
    _initializeControllerFuture = _controller.initialize();
    final options = BaseOptions(
      /// Dio 라이브러리 사용하기 위한 초기화
      contentType: yoloContentType,
      baseUrl: yoloServerUrl,
      connectTimeout: yoloConnectTimeout,
      receiveTimeout: yoloReceiveTimeout,
    );
    yoloDio = Dio(options);

    /// Dio 객체 생성.
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back_ios,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          elevation: 7,
          centerTitle: true,
          title: GradientText(
            'Liquor Finder',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontFamily: 'text',
              fontSize: 20,),
            colors: [
              Color(0xffC6426E),
              Color(0xff642B73),
            ],
          ),
          flexibleSpace: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
                colors: <Color>[
                  Color(0xffff6e7f),
                  Color(0xffC5DEF3),
                ],
                tileMode: TileMode.mirror,
              ),
            ),
          ),
        ),
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: <Color>[
                Color(0xffF1889B),
                Color(0xffbfe9ff),
              ],
              tileMode: TileMode.mirror,
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Spacer(),
              Container(
                alignment: Alignment.center,
                child: _showCameraPreview(),
              ),
              Spacer(),
              Container(
                height: 75,
                width: 75,
                child: FittedBox(
                  child: FloatingActionButton(
                    elevation: 5,
                    child: Container(
                      width: 70,
                      height: 70,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: <Color>[
                            Color(0xffE3A5B8),
                            Color(0xffbfe9ff),
                          ],
                          tileMode: TileMode.mirror,
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.5),
                            spreadRadius: 1,
                            blurRadius: 3,
                            offset: Offset(0, 1),
                          ),
                        ],
                      ),
                      child: Icon(
                        Icons.search,
                        color: Colors.white60
                      ),
                    ),
                    onPressed: () async {
                      try {
                        await _initializeControllerFuture;
                        final image = await _controller.takePicture();
                        var imageFormData = await _createImageToHttpForm(key: "file", image: image);
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) => Loading(imageFormData: imageFormData)));
                      } catch (e) {
                        print(e);
                      }
                    },
                  ),
                ),
              ),
              Spacer(),
            ],
          ),
        ),
      ),
    );
  }

  /// #########  [함수 추출부] ############

  /// [카메라 프리뷰 보여주는 함수]
  /// 카메라 preview가 나타나기 전 까지 contoller가 초기화 되도록 반드시 기다려야한다.
  /// controller 초기화가 끝날 때까지 FutureBuilder(로딩 스피너를 보여주기 위한 목적의)를 이용해라.
  FutureBuilder<void> _showCameraPreview() {
    return FutureBuilder<void>(
      future: _initializeControllerFuture,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          final mediaSize = MediaQuery.of(context).size;
          final scale =
              1 / (_controller.value.aspectRatio * mediaSize.aspectRatio);
          return Container(
              width: 300,
              height: 450,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.5),
                    spreadRadius: 3,
                    blurRadius: 7,
                    offset: Offset(0, 2),
                  ),
                ],
                borderRadius: BorderRadius.circular(25),
              ),
              child: Stack(
                alignment: Alignment.center,
                children: <Widget>[
                  ClipRRect(
                      borderRadius: BorderRadius.circular(25),
                      child: SizedBox(
                        width: 300,
                        height: 485,
                        child: CameraPreview(_controller),
                      )),
                  Image.asset(
                    "lib/assets/focus_negative.png",
                    width: 100,
                    height: 100,
                  ),
                ],
              ));
        } else {
          return const Center(child: CircularProgressIndicator());
        }
      },
    );
  }

  /// HTTP 요청 메세지 만드는 함수
  Future<FormData> _createImageToHttpForm(
          {required String key, required XFile image}) async =>
      FormData.fromMap({key: await MultipartFile.fromFile(image.path)});

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

  /// 선택 팝업 보여주는 함수
  Future<dynamic> _showChoiceDialog(BuildContext context,
      {required List<CameraLiquor> liquors}) async {
    return showDialog(
      context: context,
      builder: (BuildContext context) => AlertDialog(
        elevation: 10.0,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
        title: const Text("여러 개가 나왔어요 !"),
        content: getLiquorMenuElement(liquors: liquors),
      ),
    );
  }

  /// 팝업 리스트 내 함수 추출
  Widget getLiquorMenuElement({required List<CameraLiquor> liquors}) {
    return Container(
        height: double.infinity,
        width: double.infinity,
        margin: const EdgeInsets.fromLTRB(2, 20, 2, 20),

        /// 끝에 마진 줌
        child: Scaffold(
            body: Container(
                child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,

          /// 리스트의 요소들 간 간격을 동등하게 배치함.
          children: <Widget>[
            Expanded(

                /// 부모의 남는 부분을 전부 채울 때
                child: ListView.separated(
              shrinkWrap: true,
              itemCount: liquors.length,
              itemBuilder: (BuildContext context, int index) {
                /// 이제 요소 출력하는 부분
                return ListTile(
                  leading: CircleAvatar(
                      backgroundImage: NetworkImage(
                          "$imageServerUrl/${liquors[index].name}.jpg")),
                  title: Text(liquors[index].name.toString()),
                  onTap: () async => Navigator.of(context).push(
                      MaterialPageRoute(
                          builder: (context) => DeprecatedInformation(
                              liquorName: liquors[index].name.toString()))),
                );
              },
              separatorBuilder: (context, index) {
                /// 구분선 표현하는 부분
                return Divider();
              },
            )),
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const <Widget>[
                  Icon(Icons.cancel),
                ])
          ],
        ))));
  }
}

/// 카메라 프리뷰 사이즈 조정 관련 클래스
class _MediaSizeClipper extends CustomClipper<Rect> {
  final Size mediaSize;

  const _MediaSizeClipper(this.mediaSize);

  @override
  Rect getClip(Size size) =>
      Rect.fromLTWH(0, 0, mediaSize.width, mediaSize.height);

  @override
  bool shouldReclip(CustomClipper<Rect> oldClipper) => true;
}

