import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:graduation_project/main.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'camera/camera_screen.dart';
import 'package:graduation_project/screens/cocktail_list/cocktail_list.dart';
import 'cocktail_list/cocktail_list.dart';
import 'near_liquor_shop/near_liquor_shop.dart';
import 'package:graduation_project/screens/information_result/temp_information.dart';
// 테스트용
import 'information_result/liquor_information.dart';

class MainScreen extends StatelessWidget {
  MainScreen({Key? key, required this.firstCamera, required this.pre_backpress})
      : super(key: key);

  final firstCamera;
  DateTime pre_backpress = DateTime.now();

  @override
  void initState() {
    bool imageState = true;
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        final timegap = DateTime.now().difference(pre_backpress);
        final cantExit = timegap >= Duration(seconds: 2);
        pre_backpress = DateTime.now();
        if (cantExit) {
          final snack = SnackBar(
            content: GradientText(
              'Press Back Button Again to Exit',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontFamily: 'kor',
                fontSize: 20,
              ),
              colors: [
                Color(0xff642B73),
                Color(0xffC6426E),
              ],
            ),
            duration: Duration(seconds: 2),
            backgroundColor: Color.fromRGBO(200, 216, 238, 0.9),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(30))),
            behavior: SnackBarBehavior.floating,
            width: 250,
          );
          ScaffoldMessenger.of(context).showSnackBar(snack);
          return false;
        } else {
          return true;
        }
      },
      child: Scaffold(
        appBar: AppBar(
          elevation: 7,
          centerTitle: true,
          title: GradientText(
            'Liquor++',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 25,
            ),
            colors: [
              Color(0xffC6426E),
              Color(0xff642B73),
            ],
          ),
          flexibleSpace: Container(
            decoration: const BoxDecoration(
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
          decoration: const BoxDecoration(
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
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                child: Column(
                  children: <Widget>[
                    Center(
                      child: Image.asset(
                        "lib/assets/holidays.png",
                        width: 200,
                        height: 200,
                      ),
                    ),
                    Padding(padding: EdgeInsets.all(20)),
                    GradientText(
                      'Find What Liquor It Is.',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                      colors: [
                        Color(0xffC6426E),
                        Color(0xff642B73),
                      ],
                    ),
                    Padding(padding: EdgeInsets.all(10)),
                    GradientText(
                      'Find Your Favorite Cocktails.',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                      colors: [
                        Color(0xffC6426E),
                        Color(0xff642B73),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(padding: EdgeInsets.all(20)),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Spacer(),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => CameraScreen(camera: firstCamera)
                        ),
                      );
                    },
                    child: Center(
                      child: Center(
                        child: Container(
                          width: 150,
                          height: 200,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            gradient: const LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                              colors: <Color>[
                                Color(0xffDEADC1),
                                //Color(0xffF1DF96),
                                Color(0xffC5DEF3),
                              ],
                              tileMode: TileMode.mirror,
                            ),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.25),
                                spreadRadius: 2,
                                blurRadius: 3,
                                offset: const Offset(0, 3),
                              ),
                            ],
                          ),
                          margin: EdgeInsets.all(10),
                          padding: EdgeInsets.all(10),
                          child: Center(
                              child: Image.asset(
                            "lib/assets/scan.png",
                            width: 75,
                            height: 75,
                          )),
                        ),
                      ),
                    ),
                  ),
                  Padding(padding: EdgeInsets.all(20)),
                  InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => DrinkList()));
                    },
                    child: Container(
                      width: 150,
                      height: 200,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        //color: Colors.white.withOpacity(0.15),
                        gradient: const LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: <Color>[
                            Color(0xffDEADC1),
                            //Color(0xffE3E9AE),
                            Color(0xffC5DEF3),
                          ],
                          tileMode: TileMode.mirror,
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.25),
                            spreadRadius: 2,
                            blurRadius: 3,
                            offset: const Offset(0, 3),
                          ),
                        ],
                      ),
                      margin: EdgeInsets.all(10),
                      padding: EdgeInsets.all(10),
                      child: Center(
                          child: Image.asset(
                        "lib/assets/cocktail_finder.png",
                        width: 85,
                        height: 85,
                      )),
                    ),
                  ),
                  Spacer(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
