import 'package:flutter/material.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'package:graduation_project/screens/main_screens.dart';
import 'package:graduation_project/main.dart';
import 'package:graduation_project/util/cocktail_info.dart';
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
  //static List<Cocktail> cocktail_ = cocktail_list;
  List<Cocktail> display_list = List.from(cocktail_List);


  void updateList(String value) {
    //리스트 필터링
    setState(() {
      display_list = cocktail_List
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
                                        builder: (context) => CocktailInfo(cocktail: display_list[index])));
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

