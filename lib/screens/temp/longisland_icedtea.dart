import 'package:flutter/material.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'package:graduation_project/screens/main_screens.dart';
import 'package:graduation_project/main.dart';
import 'package:graduation_project/util/constants.dart';
import 'package:material_floating_search_bar/material_floating_search_bar.dart';
import 'package:graduation_project/util/cocktail_data.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LongTea extends StatefulWidget {
  const LongTea({Key? key}) : super(key: key);

  @override
  State<LongTea> createState() => _LongTeaState();
}

class _LongTeaState extends State<LongTea> {
  final Cocktail longtea = Cocktail(
      120,
      "Long Island Iced Tea",
      "아이스티 같은 달달한 칵테일",
      "맛있음",
      "lib/assets/real_cocktails/longtea.png");

  @override
  Widget build(BuildContext context) {
    final displaySize = MediaQuery.of(context).size;
    //final displayWidth = MediaQuery.of(context).size.width;
    //final displayHeight = MediaQuery.of(context).size.height;

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
            'Long Island Iced Tea',
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontFamily: 'text',
              fontSize: 20,
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
          child: Padding(
            padding: EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Container(
                  height: displaySize.height * 0.1,
                  child: GradientText(
                    longtea.name!,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontFamily: 'kor',
                      fontSize: 50,
                    ),
                    colors: [
                      Color(0xffC6426E),
                      Color(0xff642B73),
                    ],
                  ),
                ),
                Container(
                  height: displaySize.height * 0.3,
                  child: Image.asset(
                    'lib/assets/real_cocktails/old_fashioned.png',
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(10),
                  padding: EdgeInsets.all(10),
                  height: displaySize.height * 0.2,
                  width: displaySize.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    //color: Colors.white.withOpacity(0.15),
                    gradient: const LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: <Color>[
                        Color(0xffDEADC1),
                        Color(0xffC5DEF3),
                      ],
                      tileMode: TileMode.mirror,
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.2),
                        spreadRadius: 2,
                        blurRadius: 3,
                        offset: const Offset(0, 3),
                      ),
                    ],
                  ),
                  child: Expanded(
                    child: SingleChildScrollView(
                      scrollDirection: Axis.vertical,
                      child: Column(
                        children: <Widget>[
                          Text(
                            '${longtea.name!} recipe',
                            style: TextStyle(
                                fontFamily: 'kor',
                                fontSize: 30,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            '진 - 15ml',
                            style: TextStyle(
                                fontFamily: 'kor',
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            '보드카 - 15ml',
                            style: TextStyle(
                                fontFamily: 'kor',
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            '화이트 럼 - 15ml',
                            style: TextStyle(
                                fontFamily: 'kor',
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            '데키라 - 15ml',
                            style: TextStyle(
                                fontFamily: 'kor',
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            '코앵트로 - 15ml',
                            style: TextStyle(
                                fontFamily: 'kor',
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            '레몬 주스 - 30ml',
                            style: TextStyle(
                                fontFamily: 'kor',
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            '시럽 - 20ml',
                            style: TextStyle(
                                fontFamily: 'kor',
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            '콜라 - Full Up',
                            style: TextStyle(
                                fontFamily: 'kor',
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(10),
                  padding: EdgeInsets.all(15),
                  height: displaySize.height * 0.2,
                  width: displaySize.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    //color: Colors.white.withOpacity(0.15),
                    gradient: const LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: <Color>[
                        Color(0xffDEADC1),
                        Color(0xffC5DEF3),
                      ],
                      tileMode: TileMode.mirror,
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.2),
                        spreadRadius: 2,
                        blurRadius: 3,
                        offset: const Offset(0, 3),
                      ),
                    ],
                  ),
                  child: Expanded(
                    child: SingleChildScrollView(
                      scrollDirection: Axis.vertical,
                      child: Text(
                        longteatext,
                        style: TextStyle(
                            height: 1.5,
                            fontFamily: 'kor',
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}