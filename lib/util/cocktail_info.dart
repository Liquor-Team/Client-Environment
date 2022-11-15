import 'package:flutter/material.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'package:graduation_project/screens/main_screens.dart';
import 'package:graduation_project/main.dart';
import 'package:graduation_project/util/constants.dart';
import 'package:material_floating_search_bar/material_floating_search_bar.dart';
import 'package:graduation_project/util/cocktail_data.dart';
import 'package:graduation_project/screens/cocktail_list/cocktail_list.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import '../util/cocktail_data.dart';


class CocktailInfo extends StatefulWidget {
  const CocktailInfo({Key? key, required this.cocktail}) : super(key: key);

  final Cocktail cocktail;


  @override
  State<CocktailInfo> createState() => _CocktailInfoState(cocktail);
}

class _CocktailInfoState extends State<CocktailInfo> {

  List<Cocktail> cocktail_info = List.from(cocktail_List);
  List<Column> recipe_Data = List.from(cocktail_Recipe);

  Cocktail cocktaildata;
  _CocktailInfoState(this.cocktaildata);

  @override
  Widget build(BuildContext context) {

    final displaySize = MediaQuery.of(context).size;
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
                    '${cocktail_info[cocktaildata.id].name}',
                    style: TextStyle(
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
                    '${widget.cocktail.image}',
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(10),
                  padding: EdgeInsets.all(10),
                  height: displaySize.height * 0.2,
                  width: displaySize.width * 0.9,
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
                    child: recipe_Data[cocktaildata.id],
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(10),
                  padding: EdgeInsets.all(15),
                  height: displaySize.height * 0.2,
                  width: displaySize.width * 0.9,
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
                        offset: const Offset(0, 3),
                      ),
                    ],
                  ),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: cocktail_summary_data[cocktaildata.id],
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


