import 'dart:async';
import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'package:graduation_project/screens/main_screens.dart';
import 'package:graduation_project/main.dart';
import 'package:graduation_project/util/cocktail_info.dart';
import 'package:material_floating_search_bar/material_floating_search_bar.dart';
import 'package:graduation_project/util/cocktail_data.dart';
import 'package:graduation_project/screens/temp/longisland_icedtea.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import '../../models/all_cocktail_list.dart';
import '../../util/config.dart';

class DrinkList extends StatefulWidget {
  const DrinkList({Key? key}) : super(key: key);

  @override
  State<DrinkList> createState() => _DrinkListState();
}

class _DrinkListState extends State<DrinkList> {
  //static List<Cocktail> cocktail_ = cocktail_list;
  List<Cocktail> display_list = List.from(cocktail_List);

  late List<Cocktails> display_cocktail_list;
  late Future<AllCocktailModel> allCocktails;


  void updateList(String value) {
    //리스트 필터링
    setState(() {
      display_cocktail_list = display_cocktail_list
          .where((element) =>
          element.engName!.toLowerCase().contains(value.toLowerCase()))
          .toList();

      // display_list = cocktail_List
      //     .where((element) =>
      //         element.name!.toLowerCase().contains(value.toLowerCase()))
      //     .toList();
    });
  }

  Future<AllCocktailModel> requestAllCocktails() async {
    var url = Uri.parse(springServerUrl + "/cocktail");     /// 보낼 URL 만들고
    final response = await http.get(url);                             /// DBServer로 요청 전송
    if (response.statusCode == 200) {
      return AllCocktailModel.fromJson(json.decode(utf8.decode(response.bodyBytes))); /// json 파싱해서 모델 반환
    } else {
      throw Exception('[requestLiquorDetails() ERROR] : status code != 200');
    }
  }

  @override
  void initState() {
    allCocktails = requestAllCocktails();

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
            'Cocktail Finder',
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
        body: FutureBuilder<AllCocktailModel>(
          future: allCocktails,
          builder: (context, snapshot) {
            if(snapshot.hasData) {

              display_cocktail_list = snapshot.data!.cocktails!;
              List<Cocktails> cocktailList = snapshot.data!.cocktails!;

              return Container(
                decoration: const BoxDecoration(
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
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      GradientText(
                        'Find Your Cocktails',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontFamily: 'text',
                        ),
                        colors: [
                          Color(0xffC6426E),
                          Color(0xff642B73),
                        ],
                      ),
                      SizedBox(height: 20),
                      TextField(
                        onChanged: (value) => updateList(value),
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'kor',
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white12,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide: BorderSide.none,
                          ),
                          hintText: "ex) Blue Hawaii",
                          hintStyle: TextStyle(
                              fontFamily: 'kor',
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                          prefixIcon: Icon(Icons.search),
                          //prefixIconColor: Colors.white,
                        ),
                      ),
                      SizedBox(height: 20),
                      Expanded(
                          child: ListView.builder(
                              itemCount: cocktailList.length, ///display_list.length,
                              itemBuilder: (context, index) => ListTile(
                                  contentPadding: EdgeInsets.all(8.0),
                                  title: Text(
                                    cocktailList[index].engName!,
                                    style: TextStyle(
                                      fontFamily: 'kor',
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                      fontSize: 25,
                                    ),
                                  ),
                                  subtitle: Text(
                                    '${cocktailList[index].summary!}',
                                    style: TextStyle(
                                        fontFamily: 'kor',
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  ),
                                  leading: Image.network(
                                    '${cocktailList[index].imgUrl!}',
                                    width: 60,
                                    height: 60,
                                  ),
                                  trailing: InkWell(
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  CocktailInfo(
                                                    name: cocktailList[index].engName!,
                                                    recipe: cocktailList[index].recipe!,
                                                    imgUrl: cocktailList[index].imgUrl!,
                                                    description: cocktailList[index].description!,
                                                  )
                                          )
                                      );
                                    },
                                    child: GradientText(
                                      '더보기',
                                      style: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'kor',
                                        fontSize: 20,
                                      ),
                                      colors: [
                                        Color(0xffC6426E),
                                        Color(0xff642B73),
                                      ],
                                    ),
                                  ))))
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

