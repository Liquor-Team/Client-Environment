import 'package:flutter/material.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'package:graduation_project/screens/main_screens.dart';
import 'package:graduation_project/main.dart';
import 'package:graduation_project/util/constants.dart';
import 'package:material_floating_search_bar/material_floating_search_bar.dart';
import 'package:graduation_project/util/cocktail_data.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class JimBeamCocktailData extends StatefulWidget {
  String name;
  String imgUrl;
  String recipe;
  String description;


  JimBeamCocktailData({
    Key? key,
    required this.name,
    required this.imgUrl,
    required this.recipe,
    required this.description,
  }) : super(key: key);

  //final Cocktail cocktail;

  @override
  State<JimBeamCocktailData> createState() => _JimBeamCocktailDataState();
}

class _JimBeamCocktailDataState extends State<JimBeamCocktailData> {

  // List<Cocktail> jimbeam_cocktail_info = List.from(jimbeam_cocktail_List);
  // List<Column> jimbeamm_cocktail_recipe = List.from(jimbeam_cocktail_recipe);         /// TODO : 칵테일 제조.
  //
  // Cocktail jimbeamcocktaildata;
  //_JimBeamCocktailDataState(this.jimbeamcocktaildata);

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
                    widget.name,      /// TODO :  칵테일 이름
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
                  child: Image.network(
                    widget.imgUrl,             /// TODO : 칵테일 사진
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
                    child: Text(widget.recipe),        /// TODO : 레시피.
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
                    child: Text(widget.description),
                    //jimbeam_cocktail_summary_data[jimbeamcocktaildata.id]          /// TODO : 줄거리.
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
