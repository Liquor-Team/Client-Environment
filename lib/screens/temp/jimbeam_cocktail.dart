import 'package:flutter/material.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'package:graduation_project/screens/main_screens.dart';
import 'package:graduation_project/main.dart';
import 'package:graduation_project/util/constants.dart';
import 'package:material_floating_search_bar/material_floating_search_bar.dart';
import 'package:graduation_project/util/cocktail_data.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'package:graduation_project/screens/temp/jimbeamm_cocktail_info.dart';

class JimBeamCocktail extends StatefulWidget {
  const JimBeamCocktail({Key? key}) : super(key: key);

  @override
  State<JimBeamCocktail> createState() => _JimBeamCocktailState();
}

class _JimBeamCocktailState extends State<JimBeamCocktail> {
  List<Cocktail> display_list = List.from(jimbeam_cocktail_List);

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
            'Cocktails by Jim Beam',
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
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              colors: <Color>[
                Color(0xffbfe9ff),
                Color(0xffF1889B),
              ],
              tileMode: TileMode.mirror,
            ),
          ),
          child: Padding(
            padding: EdgeInsets.all(16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  height: 20,
                ),
                Center(
                  child: Image.asset(
                    'lib/assets/jim_beam.png',
                    width: 200,
                    height: 200,
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                Expanded(
                    child: ListView.builder(
                        itemCount: display_list.length,
                        itemBuilder: (context, index) => ListTile(
                              contentPadding: EdgeInsets.all(8.0),
                              title: Text(
                                display_list[index].name!,
                                style: TextStyle(
                                  fontFamily: 'kor',
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                  fontSize: 25,
                                ),
                              ),
                              subtitle: Text(
                                '${display_list[index].summary!}',
                                style: TextStyle(
                                    fontFamily: 'kor',
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                              leading:
                                  Image.asset('${display_list[index].image!}',
                                  width: 60,
                                  height: 60,),
                              trailing: InkWell(
                                onTap: (){
                                  Navigator.push(context,
                                      MaterialPageRoute(builder: (context) => JimBeamCocktailData(cocktail: display_list[index],)));
                                },
                                child: GradientText(
                                  '더보기',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'kor',
                                    fontSize: 20,
                                  ),
                                  colors: [
                                    Color(0xffC6426E),
                                    Color(0xff642B73),
                                  ],
                                ),
                              )
                            )))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
