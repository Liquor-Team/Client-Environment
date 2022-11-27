import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:graduation_project/screens/temp/jimbeam_cocktail.dart';
import 'package:flutter/material.dart';
import 'package:graduation_project/util/constants.dart';
import '../../util/config.dart';
import '../../models/liquor_details.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class TempInformation extends StatefulWidget {

  String liquorName;

  TempInformation({Key? key, required this.liquorName}) : super(key: key);

  @override
  State<TempInformation> createState() => _TempInformationState();
}

class _TempInformationState extends State<TempInformation> {
  //late Cocktail tempCocktail = Cocktail(1, "Jim Beam", "미국의 대표적인 위스키", "맛있음", "lib/assets/cocktail.png");
  late Future<LiquorDetailsModel> liquorDetails;

  /// Spring Server로 정보 요청하는 메소드.
  Future<LiquorDetailsModel> requestLiquorDetails() async {
    var url = Uri.parse("$springServerUrl/${widget.liquorName}");     /// 보낼 URL 만들고
    final response = await http.get(url);                             /// DBServer로 요청 전송
    if (response.statusCode == 200) {
      return LiquorDetailsModel.fromJson(json.decode(utf8.decode(response.bodyBytes))); /// json 파싱해서 모델 반환
    } else {
      throw Exception('[requestLiquorDetails() ERROR] : status code != 200');
    }
  }

  @override
  void initState() {
    liquorDetails = requestLiquorDetails();       /// 스프링 서버로 정보 요청.
  }

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
            'Liquor Found!',
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
        body: FutureBuilder<LiquorDetailsModel>(
          future: liquorDetails,
          builder: (context, snapshot) {
            if(snapshot.hasData) {
              return Container(
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
                            ///tempCocktail.name!,     /// 여기 들어가는거 짐빔 이름
                            snapshot.data!.englishName.toString(),          /// TODO : 교체됐음에 유의 필
                            style: const TextStyle(
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
                            snapshot.data!.imgUrl.toString()        /// TODO : 교체됐음에 유의 필
                            ///tempCocktail.image!,          /// 여기 들어가는거 사진
                          ),
                        ),
                        SizedBox(
                          height: displaySize.height * 0.05,
                        ),
                        Container(
                          margin: EdgeInsets.all(10),
                          padding: EdgeInsets.all(10),
                          height: displaySize.height * 0.25,
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
                              jimbeam,                        /// 여기 들어가는건 뭐?
                              style: TextStyle(
                                  height: 1.5,
                                  fontFamily: 'kor',
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        Container(
                          height: displaySize.height * 0.07,
                          width: displaySize.width,
                          padding: EdgeInsets.all(10),
                          margin: EdgeInsets.fromLTRB(10, 25, 10, 0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
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
                                color: Colors.black.withOpacity(0.5),
                                spreadRadius: 1,
                                blurRadius: 3,
                                offset: Offset(0, 1),
                              ),
                            ],
                          ),
                          child: InkWell(
                            onTap: () {
                              ///터치 시 이 술로 만들 수 있는
                              ///칵테일 종류 리스트 페이지
                              ///영상용 짐빔 칵테일로 이동
                              Navigator.push(context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          JimBeamCocktail(
                                              liquorName: snapshot.data!.englishName.toString(),
                                              liquorImgUrl: snapshot.data!.imgUrl.toString()
                                          )
                                  )
                              );
                            },
                            child: Container(
                              alignment: Alignment.center,
                              child: GradientText(
                                /// '#${tempCocktail.name} Cocktails',                      /// 여기 들어가는것도 확인 필요.
                                "#${snapshot.data!.englishName} Cocktails",   /// TODO : 교체됐음에 유의 필
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'kor',
                                  fontSize: 30,
                                ),
                                colors: [
                                  Color(0xffC6426E),
                                  Color(0xff642B73),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
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