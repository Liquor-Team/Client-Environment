import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:graduation_project/util/config.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'package:graduation_project/screens/main_screens.dart';
import 'package:graduation_project/main.dart';
import 'package:graduation_project/util/constants.dart';
import 'package:material_floating_search_bar/material_floating_search_bar.dart';
import 'package:graduation_project/util/cocktail_data.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'package:graduation_project/screens/temp/jimbeamm_cocktail_info.dart';
import 'package:http/http.dart' as http;
import '../../models/cocktail_list_by_liquor.dart';
import '../../models/cocktail_list_model.dart';

class JimBeamCocktail extends StatefulWidget {

  String liquorName;
  String liquorImgUrl;
  JimBeamCocktail({Key? key, required this.liquorName, required this.liquorImgUrl}) : super(key: key);

  @override
  State<JimBeamCocktail> createState() => _JimBeamCocktailState();
}

class _JimBeamCocktailState extends State<JimBeamCocktail> {

  /// TODO : 결국 List<Cocktail> 형태로 갖고 있기만 하면 됨.
  List<Cocktail> display_list = List.from(jimbeam_cocktail_List);
  late Future<CocktailListByLiquorModel> cocktailList;

  Future<CocktailListByLiquorModel> requestCocktailListByLiquor() async {
    var url = Uri.parse(springServerUrl + "/making" + "/" + widget.liquorName);     /// 보낼 URL 만들고
    final response = await http.get(url);
    if(response.statusCode == 200) {
      return CocktailListByLiquorModel.fromJson(json.decode(utf8.decode(response.bodyBytes)));
    } else {
      throw Exception('[requestCocktailListByLiquor() ERROR] : status code != 200');
    }
  }

  @override
  void initState() {
    cocktailList = requestCocktailListByLiquor();
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
            'Cocktails by ' + widget.liquorName,            /// TODO : 이전에 Liquor 영어 이름
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
        body: FutureBuilder<CocktailListByLiquorModel>(
          future: cocktailList,
          builder: (context, snapshot) {
            if(snapshot.hasData) {
              List<ProductList> cocktails = snapshot.data!.productList!;
              return Container(
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
                        child: Image.network(
                          widget.liquorImgUrl,          /// TODO : 이전에 Liquor 사진
                          width: 200,
                          height: 200,
                        ),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      Expanded(
                          child: ListView.builder(
                              itemCount: cocktails.length,
                              itemBuilder: (context, index) => ListTile(
                                  contentPadding: EdgeInsets.all(8.0),
                                  title: Text(
                                    ///display_list[index].name!,                              /// TODO : 만들 수 있는 칵테일 이름
                                    cocktails[index].engName.toString(),
                                    style: TextStyle(
                                      fontFamily: 'kor',
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                      fontSize: 25,
                                    ),
                                  ),
                                  subtitle: Text(
                                    ///'${display_list[index].summary!}',                      /// TODO : 칵테일의 간단 설명
                                    cocktails[index].summary.toString(),
                                    style: TextStyle(
                                        fontFamily: 'kor',
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  ),
                                  leading:
                                  Image.network(cocktails[index].imgUrl.toString(),          /// TODO : 칵테일의 사진
                                    width: 60,
                                    height: 60,),
                                  trailing: InkWell(
                                    onTap: (){
                                      Navigator.push(context,
                                          MaterialPageRoute(builder: (context) =>
                                              JimBeamCocktailData(
                                                name: cocktails[index].engName.toString(),
                                                imgUrl: cocktails[index].imgUrl.toString(),
                                                recipe: cocktails[index].recipe.toString(),
                                                description: cocktails[index].description.toString(),
                                              )
                                          )
                                      );
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
              );
            } else if (snapshot.hasError) {
              return Text("error");
            }
            return CircularProgressIndicator();
          },
        ),
      ),
    );
  }
}
