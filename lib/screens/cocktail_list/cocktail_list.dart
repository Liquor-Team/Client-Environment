import 'package:flutter/material.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'package:graduation_project/screens/main_screens.dart';
import 'package:graduation_project/main.dart';
import 'package:graduation_project/util/constants.dart';
import 'package:material_floating_search_bar/material_floating_search_bar.dart';
import 'package:graduation_project/util/cocktail_data.dart';
import 'package:graduation_project/screens/temp/longisland_icedtea.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class DrinkList extends StatefulWidget {
  const DrinkList({Key? key}) : super(key: key);

  @override
  State<DrinkList> createState() => _DrinkListState();
}

class _DrinkListState extends State<DrinkList> {
  static List<Cocktail> cocktail_list = [
    Cocktail(1, "Blue Hawaii", "파란색의 달달한 칵테일", "맛있음",
        "lib/assets/real_cocktails/blue_hawaii.png"),
    Cocktail(2, "Dry Martini", "근본 칵테일", "맛있음",
        "lib/assets/real_cocktails/dry_martini.png"),
    Cocktail(12, "Old Fashioned", "심플한 조합, 다양한 바리에이션", "맛있음",
        "lib/assets/real_cocktails/old_fashioned.png"),
    Cocktail(3, "Jack Cock", "잭 다니엘스의 대표 칵테일", "맛있음",
        "lib/assets/real_cocktails/jack_cock.png"),
    Cocktail(4, "Whisky Sour", "위스키 베이스의 레몬향 칵테일", "맛있음",
        "lib/assets/real_cocktails/sour.png"),
    Cocktail(5, "Long Island Iced Tea", "달달한 칵테일", "맛있음",
        "lib/assets/real_cocktails/longtea.png"),
    Cocktail(6, "Khalua Milk", "커피향의 부드러운 칵테일", "맛있음",
        "lib/assets/real_cocktails/khalua_milk.png"),
    Cocktail(7, "Mint Julep", "위스키 베이스의ㅡ 민트향 칵테일", "맛있음",
        "lib/assets/real_cocktails/mint_julep.png"),
    Cocktail(8, "Screwdriver", "도수높은 칵테일", "맛있음",
        "lib/assets/real_cocktails/screwdriver.png"),
    Cocktail(9, "Bloody Mary", "토마토와 셀러리가 들어가는 특이한 칵테일", "맛있음",
        "lib/assets/real_cocktails/bloody_mary.png"),
    Cocktail(10, "Margarita", "데킬라 베이스의 멕시칸 스타일 칵테일", "맛있음",
        "lib/assets/real_cocktails/margarita.png"),
    Cocktail(11, "Gin Fizz", "진 베이스의 상쾌한 칵테일", "맛있음",
        "lib/assets/real_cocktails/jin_fizz.png"),
    Cocktail(13, "Manhattan", "칵테일의 여왕", "맛있음",
        "lib/assets/real_cocktails/manhattan.png"),
    Cocktail(14, "New York", "뉴욕의 밤", "맛있음",
        "lib/assets/real_cocktails/new_york.png"),
  ];

  List<Cocktail> display_list = List.from(cocktail_list);

  void updateList(String value) {
    //리스트 필터링
    setState(() {
      display_list = cocktail_list
          .where((element) =>
              element.name!.toLowerCase().contains(value.toLowerCase()))
          .toList();
    });
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
        body: Container(
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
                    hintText: "ex)블루 하와이",
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
                            leading: Image.asset(
                              '${display_list[index].image!}',
                              width: 60,
                              height: 60,
                            ),
                            trailing: InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => LongTea()));
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
        ),
      ),
    );
  }
}
