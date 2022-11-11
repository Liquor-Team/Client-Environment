import 'package:flutter/material.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'package:graduation_project/screens/main_screens.dart';
import 'package:graduation_project/main.dart';
import 'package:graduation_project/util/constants.dart';
import 'package:material_floating_search_bar/material_floating_search_bar.dart';
import 'package:graduation_project/util/cocktail_data.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class OldFashioned extends StatefulWidget {
  const OldFashioned({Key? key}) : super(key: key);

  @override
  State<OldFashioned> createState() => _OldFashionedState();
}

class _OldFashionedState extends State<OldFashioned> {
  final Cocktail oldFashioned = Cocktail(
      120,
      "Old Fashioned",
      "심플한 조합, 다양한 바리에이션",
      "맛있음",
      "lib/assets/real_cocktails/old_fashioned.png");

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
            'Cocktail Information',
            style: TextStyle(
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
          child: Padding(
            padding: EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Container(
                  height: displaySize.height * 0.1,
                  child: GradientText(
                    oldFashioned.name!,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontFamily: 'kor',
                      fontSize: 60,
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
                    gradient: LinearGradient(
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
                        offset: Offset(0, 3),
                      ),
                    ],
                  ),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Column(
                      children: <Widget>[
                        Text(
                          '${oldFashioned.name!} recipe',
                          style: TextStyle(
                              fontFamily: 'kor',
                              fontSize: 30,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          '버번 위스키 - 45ml',
                          style: TextStyle(
                              fontFamily: 'kor',
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          '탄산수 - 15ml',
                          style: TextStyle(
                              fontFamily: 'kor',
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          '가루 설탕 - 1tsp',
                          style: TextStyle(
                              fontFamily: 'kor',
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          '앙고스투라 비터 - 1 Dash',
                          style: TextStyle(
                              fontFamily: 'kor',
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          '*저민 오렌지(garnish)',
                          style: TextStyle(
                              fontFamily: 'kor',
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          '*마라스키노 체리(garnish)',
                          style: TextStyle(
                              fontFamily: 'kor',
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
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
                    gradient: LinearGradient(
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
                        offset: Offset(0, 3),
                      ),
                    ],
                  ),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Text(
                      oldFashionedtext,
                      style: TextStyle(
                          height: 1.5,
                          fontFamily: 'kor',
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
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
