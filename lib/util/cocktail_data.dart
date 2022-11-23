import 'package:flutter/material.dart';

class Cocktail{
  int id;
  String? name;
  String? summary;
  String? description;
  String? image;

  Cocktail(this.id, this.name, this.summary, this.description, this.image);

}

final List<Cocktail> cocktail_List = [
  Cocktail(0, "Blue Hawaii", "파란색의 달달한 칵테일", "맛있음",
      "lib/assets/real_cocktails/blue_hawaii.png"),
  Cocktail(1, "Dry Martini", "근본 칵테일", "맛있음",
      "lib/assets/real_cocktails/dry_martini.png"),
  Cocktail(2, "Old Fashioned", "심플한 조합, 다양한 바리에이션", "맛있음",
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
  Cocktail(12, "Manhattan", "칵테일의 여왕", "맛있음",
      "lib/assets/real_cocktails/manhattan.png"),
  Cocktail(13, "New York", "뉴욕의 밤", "맛있음",
      "lib/assets/real_cocktails/new_york.png"),
  ///새로 추가
  Cocktail(14, "Americano", "업무중엔 마실 수 없습니다", "맛있음",
      "lib/assets/real_cocktails/americano.png"),
  Cocktail(15, "Cuba Libre", "쿠바에 자유를", "맛있음",
      "lib/assets/real_cocktails/cuba_libre.png"),
  Cocktail(16, "Irish Coffee", "아일랜드에서는 커피를 이렇게", "맛있음",
      "lib/assets/real_cocktails/irish_coffee.png"),
  Cocktail(17, "Negroni", "네그로니 백작의 칵테일", "맛있음",
      "lib/assets/real_cocktails/negroni.png"),
  Cocktail(18, "Sea Breeze", "바닷바람을 칵테일로", "맛있음",
      "lib/assets/real_cocktails/sea_breeze.png"),
  Cocktail(19, "Black Russian", "간단하지만 맛있는 칵테일", "맛있음",
      "lib/assets/real_cocktails/black_russian.png"),
  Cocktail(20, "Daiquiri", "라임주스와 바카디의 조화", "맛있음",
      "lib/assets/real_cocktails/daiquiri.png"),
  Cocktail(21, "John Collins", "새콤달콤", "맛있음",
      "lib/assets/real_cocktails/john_collins.png"),
  Cocktail(22, "Penicillin", "약이 아닙니다", "맛있음",
      "lib/assets/real_cocktails/penicillin.png"),
  Cocktail(23, "Sex On The Beach", "바로 그 칵테일", "맛있음",
      "lib/assets/real_cocktails/sex_on_the_beach.png"),
  Cocktail(24, "Blue Lagoon", "푸른 산호초", "맛있음",
      "lib/assets/real_cocktails/blue_lagoon.png"),
  Cocktail(25, "Godfather", "칵테일계의 Godfather", "맛있음",
      "lib/assets/real_cocktails/godfather.png"),
  Cocktail(26, "Mai Tai", "타히티어로 최고를 뜻한다", "맛있음",
      "lib/assets/real_cocktails/mai_tai.png"),
  Cocktail(27, "Rainbow Paradise", "보기만해도 취하는 칵테일", "맛있음",
      "lib/assets/real_cocktails/rainbow_paradise.png"),
  Cocktail(28, "Bronx", "진, 베르무트 그리고 오렌지", "맛있음",
      "lib/assets/real_cocktails/bronx.png"),
  Cocktail(29, "Harvey Wallbanger", "취해서 머리를 부딪힐 수도", "맛있음",
      "lib/assets/real_cocktails/harvey_wallbanger.png"),
  Cocktail(30, "Midori Sour", "멜론맛의 달콤한 칵테일", "맛있음",
      "lib/assets/real_cocktails/midori_sour.png"),
  Cocktail(31, "Russian Spring Punch", "이름과 달리 영국 출신", "맛있음",
      "lib/assets/real_cocktails/russian_spring_punch.png"),
  Cocktail(32, "Cosmopolitan", "대표적인 레이디 킬러 칵테일", "맛있음",
      "lib/assets/real_cocktails/cosmopolitan.png"),
  Cocktail(33, "Hemmingway Special", "헤밍웨이의 칵테일", "맛있음",
      "lib/assets/real_cocktails/hemmingway_special.png"),
  Cocktail(34, "Mojito", "모히또에서 몰디브 한잔", "맛있음",
      "lib/assets/real_cocktails/mojito.png"),
  Cocktail(35, "Rusty Nail", "녹슨 못은 안들어가요", "맛있음",
      "lib/assets/real_cocktails/rusty_nail.png"),
];

final List<Column> cocktail_Recipe = [
  Column(
    children: <Widget>[
      Text(
        'Blue Hawaii recipe',
        style: TextStyle(
            fontFamily: 'kor',
            fontSize: 30,
            fontWeight: FontWeight.bold),
      ),
      Text(
        '화이트 럼 - 22ml',
        style: TextStyle(
            fontFamily: 'kor',
            fontSize: 20,
            fontWeight: FontWeight.bold),
      ),
      Text(
        '보드카 - 22ml',
        style: TextStyle(
            fontFamily: 'kor',
            fontSize: 20,
            fontWeight: FontWeight.bold),
      ),
      Text(
        '블루 큐라소 - 15ml',
        style: TextStyle(
            fontFamily: 'kor',
            fontSize: 20,
            fontWeight: FontWeight.bold),
      ),
      Text(
        '파인애플 주스 - 90ml',
        style: TextStyle(
            fontFamily: 'kor',
            fontSize: 20,
            fontWeight: FontWeight.bold),
      ),
      Text(
        '스윗 앤 사워 믹스 - 35ml',
        style: TextStyle(
            fontFamily: 'kor',
            fontSize: 20,
            fontWeight: FontWeight.bold),
      ),
    ],
  ),///블루 하와이
  Column(
    children: <Widget>[
      Text(
        'Dry Martini recipe',
        style: TextStyle(
            fontFamily: 'kor',
            fontSize: 30,
            fontWeight: FontWeight.bold),
      ),
      Text(
        '드라이 진 - 60ml',
        style: TextStyle(
            fontFamily: 'kor',
            fontSize: 20,
            fontWeight: FontWeight.bold),
      ),
      Text(
        '드라이 베르무트 - 10ml',
        style: TextStyle(
            fontFamily: 'kor',
            fontSize: 20,
            fontWeight: FontWeight.bold),
      ),
    ],
  ),///드라이 마티니
  Column(
    children: <Widget>[
      Text(
        'Old Fashioned recipe',
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
  ),///올드 패션드
  Column(
    children: <Widget>[
      Text(
        'Jack Cock recipe',
        style: TextStyle(
            fontFamily: 'kor',
            fontSize: 30,
            fontWeight: FontWeight.bold),
      ),
      Text(
        '잭 다니엘 - 45ml',
        style: TextStyle(
            fontFamily: 'kor',
            fontSize: 20,
            fontWeight: FontWeight.bold),
      ),
      Text(
        '코카콜라 - Full up',
        style: TextStyle(
            fontFamily: 'kor',
            fontSize: 20,
            fontWeight: FontWeight.bold),
      ),
    ],
  ),///잭 콕
  Column(
    children: <Widget>[
      Text(
        'Whisky Sour recipe',
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
        '레몬 주스 - 25ml',
        style: TextStyle(
            fontFamily: 'kor',
            fontSize: 20,
            fontWeight: FontWeight.bold),
      ),
      Text(
        '설탕 시럽 - 20ml',
        style: TextStyle(
            fontFamily: 'kor',
            fontSize: 20,
            fontWeight: FontWeight.bold),
      ),
      Text(
        '*달걀 흰자 - 20ml(생략 가능)',
        style: TextStyle(
            fontFamily: 'kor',
            fontSize: 20,
            fontWeight: FontWeight.bold),
      ),
    ],
  ),///위스키 사워
  Column(
    children: <Widget>[
      Text(
        'Long Island Iced Tea recipe',
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
        '데킬라 - 15ml',
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
  ),///롱아일랜드 아이스티
  Column(
    children: <Widget>[
      Text(
        'Khalua Milk recipe',
        style: TextStyle(
            fontFamily: 'kor',
            fontSize: 30,
            fontWeight: FontWeight.bold),
      ),
      Text(
        '깔루아 - 30ml',
        style: TextStyle(
            fontFamily: 'kor',
            fontSize: 20,
            fontWeight: FontWeight.bold),
      ),
      Text(
        '우유 - 90ml ~ 120ml',
        style: TextStyle(
            fontFamily: 'kor',
            fontSize: 20,
            fontWeight: FontWeight.bold),
      ),
    ],
  ),///깔루아 밀크
  Column(
    children: <Widget>[
      Text(
        'Mint Julep recipe',
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
        '민트 잎 - 4leaves',
        style: TextStyle(
            fontFamily: 'kor',
            fontSize: 20,
            fontWeight: FontWeight.bold),
      ),
      Text(
        '설탕 - 1tsp',
        style: TextStyle(
            fontFamily: 'kor',
            fontSize: 20,
            fontWeight: FontWeight.bold),
      ),
      Text(
        '물 2tsp',
        style: TextStyle(
            fontFamily: 'kor',
            fontSize: 20,
            fontWeight: FontWeight.bold),
      ),
    ],
  ),///민트 줄렙
  Column(
    children: <Widget>[
      Text(
        'Screwdriver recipe',
        style: TextStyle(
            fontFamily: 'kor',
            fontSize: 30,
            fontWeight: FontWeight.bold),
      ),
      Text(
        '보드카 - 30ml ~34ml',
        style: TextStyle(
            fontFamily: 'kor',
            fontSize: 20,
            fontWeight: FontWeight.bold),
      ),
      Text(
        '오렌지 주스 - Full up',
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
    ],
  ),///스크루드라이버
  Column(
    children: <Widget>[
      Text(
        'Bloody Mary recipe',
        style: TextStyle(
            fontFamily: 'kor',
            fontSize: 30,
            fontWeight: FontWeight.bold),
      ),
      Text(
        '보드카 - 45ml',
        style: TextStyle(
            fontFamily: 'kor',
            fontSize: 20,
            fontWeight: FontWeight.bold),
      ),
      Text(
        '레몬 주스 - 15ml',
        style: TextStyle(
            fontFamily: 'kor',
            fontSize: 20,
            fontWeight: FontWeight.bold),
      ),
      Text(
        '토마토 주스 - 90ml',
        style: TextStyle(
            fontFamily: 'kor',
            fontSize: 20,
            fontWeight: FontWeight.bold),
      ),
      Text(
        '우스터 소스 - 2 Dash',
        style: TextStyle(
            fontFamily: 'kor',
            fontSize: 20,
            fontWeight: FontWeight.bold),
      ),
      Text(
        '타바스코 소스 - 2 Dash',
        style: TextStyle(
            fontFamily: 'kor',
            fontSize: 20,
            fontWeight: FontWeight.bold),
      ),
      Text(
        '소금 - 1pinch',
        style: TextStyle(
            fontFamily: 'kor',
            fontSize: 20,
            fontWeight: FontWeight.bold),
      ),
      Text(
        '후추 - 1pinch',
        style: TextStyle(
            fontFamily: 'kor',
            fontSize: 20,
            fontWeight: FontWeight.bold),
      ),
      Text(
        '*셀러리 스틱 - 1개(garnish)',
        style: TextStyle(
            fontFamily: 'kor',
            fontSize: 20,
            fontWeight: FontWeight.bold),
      ),
      Text(
        '*레몬 필 - 1개(garnish)',
        style: TextStyle(
            fontFamily: 'kor',
            fontSize: 20,
            fontWeight: FontWeight.bold),
      ),
    ],
  ),///블러디 메리
  Column(
    children: <Widget>[
      Text(
        'Margarita recipe',
        style: TextStyle(
            fontFamily: 'kor',
            fontSize: 30,
            fontWeight: FontWeight.bold),
      ),
      Text(
        '데킬라 - 45ml',
        style: TextStyle(
            fontFamily: 'kor',
            fontSize: 20,
            fontWeight: FontWeight.bold),
      ),
      Text(
        '트리플 섹 - 20ml',
        style: TextStyle(
            fontFamily: 'kor',
            fontSize: 20,
            fontWeight: FontWeight.bold),
      ),
      Text(
        '라임 주스 - 15ml',
        style: TextStyle(
            fontFamily: 'kor',
            fontSize: 20,
            fontWeight: FontWeight.bold),
      ),
      Text(
        '*글라스의 테두리를 소금으로 리밍한다',
        style: TextStyle(
            fontFamily: 'kor',
            fontSize: 20,
            fontWeight: FontWeight.bold),
      ),
    ],
  ),///마가리타
  Column(
    children: <Widget>[
      Text(
        'Gin Fizz recipe',
        style: TextStyle(
            fontFamily: 'kor',
            fontSize: 30,
            fontWeight: FontWeight.bold),
      ),
      Text(
        '진 - 45ml',
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
        '설탕 시럽 - 10ml',
        style: TextStyle(
            fontFamily: 'kor',
            fontSize: 20,
            fontWeight: FontWeight.bold),
      ),
      Text(
        '탄산수 - 약간',
        style: TextStyle(
            fontFamily: 'kor',
            fontSize: 20,
            fontWeight: FontWeight.bold),
      ),
      Text(
        '*레몬 or 라임 슬라이스(garnish)',
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
  ),///진 피즈
  Column(
    children: <Widget>[
      Text(
        'Manhattan recipe',
        style: TextStyle(
            fontFamily: 'kor',
            fontSize: 30,
            fontWeight: FontWeight.bold),
      ),
      Text(
        '위스키 - 50ml',
        style: TextStyle(
            fontFamily: 'kor',
            fontSize: 20,
            fontWeight: FontWeight.bold),
      ),
      Text(
        '스위트 베르무트 - 20ml',
        style: TextStyle(
            fontFamily: 'kor',
            fontSize: 20,
            fontWeight: FontWeight.bold),
      ),
      Text(
        '앙고스투라 비터스 - 1 Dash',
        style: TextStyle(
            fontFamily: 'kor',
            fontSize: 20,
            fontWeight: FontWeight.bold),
      ),
    ],
  ),///맨해튼
  Column(
    children: <Widget>[
      Text(
        'New York recipe',
        style: TextStyle(
            fontFamily: 'kor',
            fontSize: 30,
            fontWeight: FontWeight.bold),
      ),
      Text(
        '위스키 - 45ml',
        style: TextStyle(
            fontFamily: 'kor',
            fontSize: 20,
            fontWeight: FontWeight.bold),
      ),
      Text(
        '라임 주스 - 15ml',
        style: TextStyle(
            fontFamily: 'kor',
            fontSize: 20,
            fontWeight: FontWeight.bold),
      ),
      Text(
        '설탕 - 1tsp',
        style: TextStyle(
            fontFamily: 'kor',
            fontSize: 20,
            fontWeight: FontWeight.bold),
      ),
      Text(
        '그레나딘 시럽 - 1/2tsp',
        style: TextStyle(
            fontFamily: 'kor',
            fontSize: 20,
            fontWeight: FontWeight.bold),
      ),
    ],
  ),///뉴욕
  Column(
    children: <Widget>[
      Text(
        'Americano recipe',
        style: TextStyle(
            fontFamily: 'kor',
            fontSize: 30,
            fontWeight: FontWeight.bold),
      ),
      Text(
        '캄파리 - 30ml',
        style: TextStyle(
            fontFamily: 'kor',
            fontSize: 20,
            fontWeight: FontWeight.bold),
      ),
      Text(
        '스위트 베르무트 - 30ml',
        style: TextStyle(
            fontFamily: 'kor',
            fontSize: 20,
            fontWeight: FontWeight.bold),
      ),
      Text(
        '탄산수 - 약간',
        style: TextStyle(
            fontFamily: 'kor',
            fontSize: 20,
            fontWeight: FontWeight.bold),
      ),

    ],
  ),///아메리카노
  Column(
    children: <Widget>[
      Text(
        'Cuba Libre recipe',
        style: TextStyle(
            fontFamily: 'kor',
            fontSize: 30,
            fontWeight: FontWeight.bold),
      ),
      Text(
        '럼 - 45ml',
        style: TextStyle(
            fontFamily: 'kor',
            fontSize: 20,
            fontWeight: FontWeight.bold),
      ),
      Text(
        '라임 주스 - 15ml',
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
  ),///쿠바 리브레
  Column(
    children: <Widget>[
      Text(
        'Irish Coffee recipe',
        style: TextStyle(
            fontFamily: 'kor',
            fontSize: 30,
            fontWeight: FontWeight.bold),
      ),
      Text(
        '아이리시 위스키 - 50ml',
        style: TextStyle(
            fontFamily: 'kor',
            fontSize: 20,
            fontWeight: FontWeight.bold),
      ),
      Text(
        '뜨거운 커피 - 120ml',
        style: TextStyle(
            fontFamily: 'kor',
            fontSize: 20,
            fontWeight: FontWeight.bold),
      ),
      Text(
        '설탕 - 1tsp',
        style: TextStyle(
            fontFamily: 'kor',
            fontSize: 20,
            fontWeight: FontWeight.bold),
      ),
      Text(
        '크림 - 50ml',
        style: TextStyle(
            fontFamily: 'kor',
            fontSize: 20,
            fontWeight: FontWeight.bold),
      ),
    ],
  ),///아이리시 커피
  Column(
    children: <Widget>[
      Text(
        'Negroni recipe',
        style: TextStyle(
            fontFamily: 'kor',
            fontSize: 30,
            fontWeight: FontWeight.bold),
      ),
      Text(
        '드라이 진 - 30ml',
        style: TextStyle(
            fontFamily: 'kor',
            fontSize: 20,
            fontWeight: FontWeight.bold),
      ),
      Text(
        '스위트 베르무트 - 30ml',
        style: TextStyle(
            fontFamily: 'kor',
            fontSize: 20,
            fontWeight: FontWeight.bold),
      ),
      Text(
        '캄파리 - 30ml',
        style: TextStyle(
            fontFamily: 'kor',
            fontSize: 20,
            fontWeight: FontWeight.bold),
      ),
    ],
  ),///네그로니
  Column(
    children: <Widget>[
      Text(
        'Sea Breeze recipe',
        style: TextStyle(
            fontFamily: 'kor',
            fontSize: 30,
            fontWeight: FontWeight.bold),
      ),
      Text(
        '보드카 - 40ml',
        style: TextStyle(
            fontFamily: 'kor',
            fontSize: 20,
            fontWeight: FontWeight.bold),
      ),
      Text(
        '크랜베리 주스 - 120ml',
        style: TextStyle(
            fontFamily: 'kor',
            fontSize: 20,
            fontWeight: FontWeight.bold),
      ),
      Text(
        '자몽 주스 - 30ml',
        style: TextStyle(
            fontFamily: 'kor',
            fontSize: 20,
            fontWeight: FontWeight.bold),
      ),
    ],
  ),///시 브리즈
  Column(
    children: <Widget>[
      Text(
        'Black Russian recipe',
        style: TextStyle(
            fontFamily: 'kor',
            fontSize: 30,
            fontWeight: FontWeight.bold),
      ),
      Text(
        '보드카 - 30ml',
        style: TextStyle(
            fontFamily: 'kor',
            fontSize: 20,
            fontWeight: FontWeight.bold),
      ),
      Text(
        '깔루아 - 15ml',
        style: TextStyle(
            fontFamily: 'kor',
            fontSize: 20,
            fontWeight: FontWeight.bold),
      ),
    ],
  ),///블랙 러시안
  Column(
    children: <Widget>[
      Text(
        'Daiquiri recipe',
        style: TextStyle(
            fontFamily: 'kor',
            fontSize: 30,
            fontWeight: FontWeight.bold),
      ),
      Text(
        '라이트 럼 - 52.5ml',
        style: TextStyle(
            fontFamily: 'kor',
            fontSize: 20,
            fontWeight: FontWeight.bold),
      ),
      Text(
        '라임 주스 - 22.5ml',
        style: TextStyle(
            fontFamily: 'kor',
            fontSize: 20,
            fontWeight: FontWeight.bold),
      ),
      Text(
        '설탕 - 1tsp',
        style: TextStyle(
            fontFamily: 'kor',
            fontSize: 20,
            fontWeight: FontWeight.bold),
      ),
    ],
  ),///다이키리
  Column(
    children: <Widget>[
      Text(
        'John Collins recipe',
        style: TextStyle(
            fontFamily: 'kor',
            fontSize: 30,
            fontWeight: FontWeight.bold),
      ),
      Text(
        '진 - 45ml',
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
        '심플 시럽 - 15ml',
        style: TextStyle(
            fontFamily: 'kor',
            fontSize: 20,
            fontWeight: FontWeight.bold),
      ),
      Text(
        '탄산수 - 60ml',
        style: TextStyle(
            fontFamily: 'kor',
            fontSize: 20,
            fontWeight: FontWeight.bold),
      ),
    ],
  ),///존 콜린스
  Column(
    children: <Widget>[
      Text(
        'Penicillin recipe',
        style: TextStyle(
            fontFamily: 'kor',
            fontSize: 30,
            fontWeight: FontWeight.bold),
      ),
      Text(
        '스카치 위스키 - 60ml',
        style: TextStyle(
            fontFamily: 'kor',
            fontSize: 20,
            fontWeight: FontWeight.bold),
      ),
      Text(
        '라가불린 16년 - 7.5ml',
        style: TextStyle(
            fontFamily: 'kor',
            fontSize: 20,
            fontWeight: FontWeight.bold),
      ),
      Text(
        '레몬 주스 - 22.5ml',
        style: TextStyle(
            fontFamily: 'kor',
            fontSize: 20,
            fontWeight: FontWeight.bold),
      ),
      Text(
        '허니 시럽 - 22.5ml',
        style: TextStyle(
            fontFamily: 'kor',
            fontSize: 20,
            fontWeight: FontWeight.bold),
      ),
      Text(
        '저민 생강 - 3 pieces',
        style: TextStyle(
            fontFamily: 'kor',
            fontSize: 20,
            fontWeight: FontWeight.bold),
      ),
    ],
  ),///페니실린
  Column(
    children: <Widget>[
      Text(
        'Sex On The Beach recipe',
        style: TextStyle(
            fontFamily: 'kor',
            fontSize: 30,
            fontWeight: FontWeight.bold),
      ),
      Text(
        '보드카 - 40ml',
        style: TextStyle(
            fontFamily: 'kor',
            fontSize: 20,
            fontWeight: FontWeight.bold),
      ),
      Text(
        '피치 슈냅스 - 20ml',
        style: TextStyle(
            fontFamily: 'kor',
            fontSize: 20,
            fontWeight: FontWeight.bold),
      ),
      Text(
        '크랜베리 주스 - 40ml',
        style: TextStyle(
            fontFamily: 'kor',
            fontSize: 20,
            fontWeight: FontWeight.bold),
      ),
      Text(
        '오렌지 주스 - 40ml',
        style: TextStyle(
            fontFamily: 'kor',
            fontSize: 20,
            fontWeight: FontWeight.bold),
      ),
    ],
  ),///섹스 온 더 비치
  Column(
    children: <Widget>[
      Text(
        'Blue Lagoon recipe',
        style: TextStyle(
            fontFamily: 'kor',
            fontSize: 30,
            fontWeight: FontWeight.bold),
      ),
      Text(
        '보드카 - 40ml',
        style: TextStyle(
            fontFamily: 'kor',
            fontSize: 20,
            fontWeight: FontWeight.bold),
      ),
      Text(
        '블루 큐라소 - 15ml',
        style: TextStyle(
            fontFamily: 'kor',
            fontSize: 20,
            fontWeight: FontWeight.bold),
      ),
      Text(
        '레몬 주스 - 20ml',
        style: TextStyle(
            fontFamily: 'kor',
            fontSize: 20,
            fontWeight: FontWeight.bold),
      ),
      Text(
        '사이다 - Full Up',
        style: TextStyle(
            fontFamily: 'kor',
            fontSize: 20,
            fontWeight: FontWeight.bold),
      ),
    ],
  ),///블루 라군
  Column(
    children: <Widget>[
      Text(
        'Godfather recipe',
        style: TextStyle(
            fontFamily: 'kor',
            fontSize: 30,
            fontWeight: FontWeight.bold),
      ),
      Text(
        '위스키 - 50ml',
        style: TextStyle(
            fontFamily: 'kor',
            fontSize: 20,
            fontWeight: FontWeight.bold),
      ),
      Text(
        '디사론노 - 25ml',
        style: TextStyle(
            fontFamily: 'kor',
            fontSize: 20,
            fontWeight: FontWeight.bold),
      ),
      Text(
        '*오렌지 트위스트 - 1 piece(garnish)',
        style: TextStyle(
            fontFamily: 'kor',
            fontSize: 20,
            fontWeight: FontWeight.bold),
      ),
    ],
  ),///갓파더
  Column(
    children: <Widget>[
      Text(
        'Mai Tai recipe',
        style: TextStyle(
            fontFamily: 'kor',
            fontSize: 30,
            fontWeight: FontWeight.bold),
      ),
      Text(
        '화이트 럼 - 37.5ml',
        style: TextStyle(
            fontFamily: 'kor',
            fontSize: 20,
            fontWeight: FontWeight.bold),
      ),
      Text(
        '트리플 섹 - 22.5ml',
        style: TextStyle(
            fontFamily: 'kor',
            fontSize: 20,
            fontWeight: FontWeight.bold),
      ),
      Text(
        '라임 주스 - 30ml',
        style: TextStyle(
            fontFamily: 'kor',
            fontSize: 20,
            fontWeight: FontWeight.bold),
      ),
      Text(
        '오렌지 주스 - 30ml',
        style: TextStyle(
            fontFamily: 'kor',
            fontSize: 20,
            fontWeight: FontWeight.bold),
      ),
      Text(
        '파인애플 주스 - 30ml',
        style: TextStyle(
            fontFamily: 'kor',
            fontSize: 20,
            fontWeight: FontWeight.bold),
      ),
      Text(
        '그레나딘 시럽 - 7.5ml',
        style: TextStyle(
            fontFamily: 'kor',
            fontSize: 20,
            fontWeight: FontWeight.bold),
      ),
    ],
  ),///마이타이
  Column(
    children: <Widget>[
      Text(
        'Rainbow Paradise recipe',
        style: TextStyle(
            fontFamily: 'kor',
            fontSize: 30,
            fontWeight: FontWeight.bold),
      ),
      Text(
        '그레나딘 시럽 - 30ml',
        style: TextStyle(
            fontFamily: 'kor',
            fontSize: 20,
            fontWeight: FontWeight.bold),
      ),
      Text(
        '파인애플 주스 - 120ml',
        style: TextStyle(
            fontFamily: 'kor',
            fontSize: 20,
            fontWeight: FontWeight.bold),
      ),
      Text(
        '말리부 - 60ml',
        style: TextStyle(
            fontFamily: 'kor',
            fontSize: 20,
            fontWeight: FontWeight.bold),
      ),
      Text(
        '물 - 30ml',
        style: TextStyle(
            fontFamily: 'kor',
            fontSize: 20,
            fontWeight: FontWeight.bold),
      ),
      Text(
        '블루 큐라소 - 15ml',
        style: TextStyle(
            fontFamily: 'kor',
            fontSize: 20,
            fontWeight: FontWeight.bold),
      ),
    ],
  ),///레인보우 파라다이스
  Column(
    children: <Widget>[
      Text(
        'Bronx recipe',
        style: TextStyle(
            fontFamily: 'kor',
            fontSize: 30,
            fontWeight: FontWeight.bold),
      ),
      Text(
        '진 - 30ml',
        style: TextStyle(
            fontFamily: 'kor',
            fontSize: 20,
            fontWeight: FontWeight.bold),
      ),
      Text(
        '스위트 베르무트 - 15ml',
        style: TextStyle(
            fontFamily: 'kor',
            fontSize: 20,
            fontWeight: FontWeight.bold),
      ),
      Text(
        '드라이 베르무트 - 10ml',
        style: TextStyle(
            fontFamily: 'kor',
            fontSize: 20,
            fontWeight: FontWeight.bold),
      ),
      Text(
        '오렌지 주스 - 15ml',
        style: TextStyle(
            fontFamily: 'kor',
            fontSize: 20,
            fontWeight: FontWeight.bold),
      ),
    ],
  ),///브롱스
  Column(
    children: <Widget>[
      Text(
        'Harvey Wallbanger recipe',
        style: TextStyle(
            fontFamily: 'kor',
            fontSize: 30,
            fontWeight: FontWeight.bold),
      ),
      Text(
        '보드카 - 45ml',
        style: TextStyle(
            fontFamily: 'kor',
            fontSize: 20,
            fontWeight: FontWeight.bold),
      ),
      Text(
        '갈리아노 - 15ml',
        style: TextStyle(
            fontFamily: 'kor',
            fontSize: 20,
            fontWeight: FontWeight.bold),
      ),
      Text(
        '오렌지 주스 - Full Up',
        style: TextStyle(
            fontFamily: 'kor',
            fontSize: 20,
            fontWeight: FontWeight.bold),
      ),
    ],
  ),///하비 월뱅어
  Column(
    children: <Widget>[
      Text(
        'Midori Sour recipe',
        style: TextStyle(
            fontFamily: 'kor',
            fontSize: 30,
            fontWeight: FontWeight.bold),
      ),
      Text(
        '미도리 - 30ml',
        style: TextStyle(
            fontFamily: 'kor',
            fontSize: 20,
            fontWeight: FontWeight.bold),
      ),
      Text(
        '스윗 앤 사워 믹스 - 30ml',
        style: TextStyle(
            fontFamily: 'kor',
            fontSize: 20,
            fontWeight: FontWeight.bold),
      ),
      Text(
        '스프라이트 - 60ml',
        style: TextStyle(
            fontFamily: 'kor',
            fontSize: 20,
            fontWeight: FontWeight.bold),
      ),
    ],
  ),///미도리 사워
  Column(
    children: <Widget>[
      Text(
        'Russian Spring Punch recipe',
        style: TextStyle(
            fontFamily: 'kor',
            fontSize: 30,
            fontWeight: FontWeight.bold),
      ),
      Text(
        '보드카 - 25ml',
        style: TextStyle(
            fontFamily: 'kor',
            fontSize: 20,
            fontWeight: FontWeight.bold),
      ),
      Text(
        '라임 주스 - 25ml',
        style: TextStyle(
            fontFamily: 'kor',
            fontSize: 20,
            fontWeight: FontWeight.bold),
      ),
      Text(
        '크렘 드 카시스 - 15ml',
        style: TextStyle(
            fontFamily: 'kor',
            fontSize: 20,
            fontWeight: FontWeight.bold),
      ),
      Text(
        '설탕 시럽 - 10ml',
        style: TextStyle(
            fontFamily: 'kor',
            fontSize: 20,
            fontWeight: FontWeight.bold),
      ),
      Text(
        '스파클링 와인 - Full Up',
        style: TextStyle(
            fontFamily: 'kor',
            fontSize: 20,
            fontWeight: FontWeight.bold),
      ),
    ],
  ),///러시안 스프링 펀치
  Column(
    children: <Widget>[
      Text(
        'Cosmopolitan recipe',
        style: TextStyle(
            fontFamily: 'kor',
            fontSize: 30,
            fontWeight: FontWeight.bold),
      ),
      Text(
        '보드카 - 30ml',
        style: TextStyle(
            fontFamily: 'kor',
            fontSize: 20,
            fontWeight: FontWeight.bold),
      ),
      Text(
        '트리플 섹 - 15ml',
        style: TextStyle(
            fontFamily: 'kor',
            fontSize: 20,
            fontWeight: FontWeight.bold),
      ),
      Text(
        '라임 주스 - 15ml',
        style: TextStyle(
            fontFamily: 'kor',
            fontSize: 20,
            fontWeight: FontWeight.bold),
      ),
      Text(
        '크랜베리 주스 - 15ml',
        style: TextStyle(
            fontFamily: 'kor',
            fontSize: 20,
            fontWeight: FontWeight.bold),
      ),
    ],
  ),///코스모폴리탄
  Column(
    children: <Widget>[
      Text(
        'Hemmingway Special recipe',
        style: TextStyle(
            fontFamily: 'kor',
            fontSize: 30,
            fontWeight: FontWeight.bold),
      ),
      Text(
        '화이트 럼 - 60ml',
        style: TextStyle(
            fontFamily: 'kor',
            fontSize: 20,
            fontWeight: FontWeight.bold),
      ),
      Text(
        '자몽 주스 - 40ml',
        style: TextStyle(
            fontFamily: 'kor',
            fontSize: 20,
            fontWeight: FontWeight.bold),
      ),
      Text(
        '라임 주스 - 15ml',
        style: TextStyle(
            fontFamily: 'kor',
            fontSize: 20,
            fontWeight: FontWeight.bold),
      ),
      Text(
        '마라스키노 - 15ml',
        style: TextStyle(
            fontFamily: 'kor',
            fontSize: 20,
            fontWeight: FontWeight.bold),
      ),
    ],
  ),///헤밍웨이 스페셜
  Column(
    children: <Widget>[
      Text(
        'Mojito recipe',
        style: TextStyle(
            fontFamily: 'kor',
            fontSize: 30,
            fontWeight: FontWeight.bold),
      ),
      Text(
        '화이트 럼 - 45ml',
        style: TextStyle(
            fontFamily: 'kor',
            fontSize: 20,
            fontWeight: FontWeight.bold),
      ),
      Text(
        '민트 - 6 leaves',
        style: TextStyle(
            fontFamily: 'kor',
            fontSize: 20,
            fontWeight: FontWeight.bold),
      ),
      Text(
        '백설탕 - 2 tsp',
        style: TextStyle(
            fontFamily: 'kor',
            fontSize: 20,
            fontWeight: FontWeight.bold),
      ),
      Text(
        '라임 주스 - 20ml',
        style: TextStyle(
            fontFamily: 'kor',
            fontSize: 20,
            fontWeight: FontWeight.bold),
      ),
      Text(
        '탄산수 - Full Up',
        style: TextStyle(
            fontFamily: 'kor',
            fontSize: 20,
            fontWeight: FontWeight.bold),
      ),
    ],
  ),///모히또
  Column(
    children: <Widget>[
      Text(
        'Rusty Nail recipe',
        style: TextStyle(
            fontFamily: 'kor',
            fontSize: 30,
            fontWeight: FontWeight.bold),
      ),
      Text(
        '스카치 위스키 - 45ml',
        style: TextStyle(
            fontFamily: 'kor',
            fontSize: 20,
            fontWeight: FontWeight.bold),
      ),
      Text(
        '드람뷔 - 25ml',
        style: TextStyle(
            fontFamily: 'kor',
            fontSize: 20,
            fontWeight: FontWeight.bold),
      ),
    ],
  ),///러스티 네일


];

final List<Text> cocktail_summary_data = [
  Text('럼 베이스. '
      '1957년 해리 예(Harry Yee)라는 바텐더가 와이키키에 있는 하와이 마을에서 일하던 무렵에 '
      '볼스 영업사원이 회사 제품인 블루 큐라소로 만든 음료를 부탁하자 직접 만들어낸 칵테일이라고 한다.'
      '맛은 아주 미묘해서 무슨 맛이냐고 물으면 그냥 블루 하와이맛이라고 할 수 밖에 없다고 한다. '
      '겨우겨우 비슷한 맛을 꼽으라면 파워에이드 마운틴블라스트, 폴라포 스포츠 맛 정도. '
      '게다가 이것들 마저도 완전히 같은 맛은 아니다. 마운틴 블라스트에 좀 더 파인애플 향이 첨가된 느낌.'
      '이와 비슷한 이름을 가진 블루 하와이안이라는 변형 칵테일도 존재한다. 코코넛 크림이 추가돼서 덜 투명하다.',
    style: TextStyle(
        height: 1.5,
        fontFamily: 'kor',
        fontSize: 20,
        fontWeight: FontWeight.bold),),///블루 하와이
  Text('진을 베이스로 하며, 칵테일의 왕으로 불린다.'
      '드라이 마티니’라 불리기도 하는데, 사람에 따라 무엇을 의미하는지 달라 정확한 확인이 필요하다.'
      '스위트 베르무트를 사용한 ‘스위트 마티니’와 구분하여 ‘드라이 마티니’라고 부르는 경우와 진과 드라이 베르무트를 3:1로 섞은 것을 마티니, '
      '현재의 IBA와 조주기능사 레시피처럼 진의 비율을 높인 것을 드라이 마티니라고 부르는 경우가 있기 때문이다. '
      'IBA 공식 레시피에서는 6:1 마티니가 드라이 마티니라고 적혀있다.'
      '마티니의 표준이라 할 수 있는 레시피는 진과 드라이 베르무트를 사용한 드라이 마티니이지만,'
      '그 외에도 여러 배리에이션 레시피가 존재한다. 심지어는 진과 베르무트 둘 다 사용하지 않는데도 마티니라는 이름을 사용하기도 한다.'
      '2020년 공식 레시피에서 드라이 마티니를 제외하고 마티니라는 이름을 사용한 칵테일은 '
      '레몬 드롭 마티니, 프렌치 마티니, 에스프레소 마티니의 3종이다',
    style: TextStyle(
        height: 1.5,
        fontFamily: 'kor',
        fontSize: 20,
        fontWeight: FontWeight.bold),),///드라이 마티니
  Text('위스키 베이스 칵테일로, 칵테일의 원형이라 할 수 있는 외형을 지녔다고 표현된다. '
      '명칭이 칵테일의 역사에서 유래한 것인데, 본래 올드 패션드는 양주, 설탕, 그리고 비터스 이 세 가지 재료를 쓴 단순한 조합의 음료였으며, 당시에는 비터드 슬링(Bittered Sling)이라 불렀다. '
      '이후 19세기 미국에서 여러 바텐더들이 버번 위스키를 통해 이전의 단순한 맛에서 다양한 맛으로 바꾸기 위해 여러 번의 시도를 진행하게 된다.'
      '그러나 이전의 심플한 조합의 칵테일은 수요는 여전했고, 때문에 이전의 레시피에 버번 위스키만 추가된 버번 위스키, 앙고스투라 비터,'
      ' 설탕 혹은 시럽을 써서 만드는 칵테일을 ”옛날 방식” 이라는 의미의 ”Old Fashioned” 라는 이름으로 부르게 되었다고 한다. '
      '이러한 사연에 따라 이 올드 패션드와는 상반되어 위의 건너온 재료가 들어가는 “개량된 위스키 칵테일(Improved Whiskey Cocktail)” 이라는 레시피도 있다. '
      '이러한 역사와 심플함으로 인해 바리에이션이 아주 다양하고, 바의 특색을 관찰할 수 있는 음료이다.',
    style: TextStyle(
        height: 1.5,
        fontFamily: 'kor',
        fontSize: 20,
        fontWeight: FontWeight.bold),),///올드 패션드
  Text('버번 위스키에 콜라를 섞어 마시는 버번 콕의 바리에이션이다.'
      '제법 강한 도수와 거친 맛에 의해 남성적인 이미지의 칵테일 중 하나로 사랑받고 있다. 국내에서 제일 많이 팔리는 칵테일 중 하나이다'
      '스모키하고 씁스름한 향과 단맛이 섞여서 호불호 없는 맛을 낸다. 단짠과 비슷한 케이스다. 달달한 끝맛으로 의외로 부드러운 칵테일이다.'
      '대부분의 하이볼 계열 칵테일이 그러하듯, 기주인 위스키를 먼저 넣고 콜라를 그 위에 부어야 한다. '
      '만약 콜라를 먼저 넣고 위스키를 나중에 넣는다면, 비중 차이로 인해 위스키만 콜라 위에 둥둥 떠나니게 된다.',
    style: TextStyle(
        height: 1.5,
        fontFamily: 'kor',
        fontSize: 20,
        fontWeight: FontWeight.bold),),///잭 콕
  Text('위스키 베이스 칵테일. 레몬 주스와 설탕이 재료로 들어간다. 맛은 무척 부드럽고 조화로운 신맛과 단맛을 느낄 수 있다. '
      '때문에 종종 식전주로 사용되기도 한다.'
      '달걀 흰자를 사용하는 레시피의 경우 호불호가 많이 갈리는 편이다.'
      '달걀 흰자를 넣으면 칵테일의 거품 층이 두껍게 일어나며, 맛도 부드러워지면서 한결 마시기 편해진다.',
    style: TextStyle(
        height: 1.5,
        fontFamily: 'kor',
        fontSize: 20,
        fontWeight: FontWeight.bold),),///위스키 사워
  Text('데킬라, 럼, 보드카 등 여러 양주를 베이스로 하는 칵테일이며, 한국의 바에서는 줄여서 롱티라고 흔히 부른다.'
      '레몬맛이 강한 아이스 티와 어느 정도 비슷하고, 콜라의 단맛이 알콜 맛을 어느 정도 감춰주어 마시기 쉽기 때문에 인기 있는 칵테일 중 하나다. '
      '그러나 실제로 도수를 계산해 보면 대략 10-20도 전후. 양이 많기 때문에 많게는 30도 정도로 나오기도 한다.'
      '미국의 금주법 시대에 밀주된 술을 팔거나 마셔놓고 소량으로 남겨둘 수 없기 때문에 남는 술을 종류불문 일단 다 넣어서 '
      '한번에 마실 생각으로 만들어진 잡탕술이 칵테일 레시피로 정립된 것이라는 썰이 있다.',
    style: TextStyle(
        height: 1.5,
        fontFamily: 'kor',
        fontSize: 20,
        fontWeight: FontWeight.bold),),///롱아일랜드 아이스티
  Text('리큐르를 베이스로 한 칵테일. 말 그대로 우유에 커피 리큐르인 깔루아를 섞은 것으로 달콤하고 부드러우며 도수는 맥주와 비슷한 정도. '
      '물론 우유를 섞는 양에 따라 도수는 달라진다.'
      '깔루아의 달콤한 커피향과 우유의 부드러운 맛이 곁들여져서 술에 익숙하지 않은 사람들이 좋아한다.'
      '깔루아 대신 베일리스를 넣으면 베일리스 밀크가 된다.'
      '커피맛을 더 강하게 느끼고 싶으면 깔루아를 더 넣던가 우유를 줄여도 되고'
      '반대로 커피맛이 싫고 알코올 들어간 커피우유같은 느낌으로 마시고 싶으면 우유를 좀 더 넣으면 된다.'
      '제조방식 또한 간단한 편으로 빌드기법 기준 얼음이 들어간 하이볼 글라스 또는 온더락 글라스를 준비하고 잔에 차례대로 붓고, '
      '잘 섞이게 저어주기만 하면 끝이다.',
    style: TextStyle(
        height: 1.5,
        fontFamily: 'kor',
        fontSize: 20,
        fontWeight: FontWeight.bold),),///깔루아 밀크
  Text('위스키 베이스 칵테일. 설탕과 민트 잎이 들어가 달콤하면서도 민트 향이 난다.'
      '역사가 어마어마하게 오래된 칵테일로, '
      '본래 민트 줄렙은 무려 16세기 즈음에 직접 만들어 마시는 소화제로 사용되고 있었으나, '
      '1700년대 후반 미국 남부에서부터 칵테일로 발전하기 시작하게 되고, '
      '이후 1938년 켄터키 더비의 공식 음료로 인정받게 되어 오늘날의 모습이 된 것이다. '
      '영화 "바람과 함께 사라지다"와 "위대한 개츠비"에 등장하기도 했다.',
    style: TextStyle(
        height: 1.5,
        fontFamily: 'kor',
        fontSize: 20,
        fontWeight: FontWeight.bold),),///민트 줄렙
  Text('보드카 베이스의 칵테일.'
      '술 맛이 전혀 느껴지지 않아 오렌지 주스 맛과 크게 다르지 않다. '
      '때문에 오렌지 주스를 마시는 듯한 기분이 들 수도 있다. 하지만 도수가 절대로 약한 술은 아니라서 '
      '부담없이 마시고는 금세 취할 위험이 있다. '
      '기원은 정확하지 않으나, '
      '러시아 광부들이 공구 스크루드라이버를 사용해 보드카와 오렌지 주스를 저어서 섞어 먹었단 것에서 유래되었다는 가설이 가장 유명하다.'
      '재료가 간단하다 보니 변형 칵테일들이 쉽게 나오는 편이다. '
      '갈리아노를 플로팅하는 하비 월뱅어, 피치 리큐르를 추가하는 퍼지 네이블, 밑 부분에 그레나딘 시럽을 깔면 보드카 선라이즈가 된다.',
    style: TextStyle(
        height: 1.5,
        fontFamily: 'kor',
        fontSize: 20,
        fontWeight: FontWeight.bold),),///스크루드라이버
  Text('보드카를 베이스로 사용하며, 레시피만 보면 칵테일이라 하기 보다는 '
      '보드카 들어가는 토마토 스프에 가깝다는 느낌을 받을 정도로 특이한 재료들이 많이 들어간다.'
      '무알코올 버전은 버진 메리(Virgin Mary)라고 불리며, 재료 중 보드카를 데킬라로 바꾸면 블러디 마리아(Bloody Maria)가 된다. '
      '정확한 기원은 아니지만, 1921년의 금주법 시절 해리의 뉴욕 바(Harrys New York Bar)에 근무했었던 페르낭 프티오(Fernand Petiot)가 '
      '미국식 통조림 토마토 주스를 맛있게 마실 수 있는 방법을 1년동안 고민한 끝에 토마토 주스 칵테일(Tomato juice cocktail) 이라는, '
      '토마토 주스 안에 여러가지 향신료들을 섞은 형태의 음료를 선보였는데, 그게 바로 블러디 메리였다고 전해진다.',
    style: TextStyle(
        height: 1.5,
        fontFamily: 'kor',
        fontSize: 20,
        fontWeight: FontWeight.bold),),///블러디 메리
  Text('데킬라 베이스 칵테일. '
      '라임을 씹고 소금을 핥은 후 데킬라를 한 모금 마시는 음용법인 멕시칸 스타일을 좀 더 세련되게 변화시켜 보자는 취지에서 개발된 칵테일로, '
      '멕시코 토속주에 불과했던 데킬라를 단번에 세계적인 스피리츠로 끌어올렸다는 의의가 있다.'
      '잔의 테두리에 라임 즙을 묻힌 뒤 소금이 붙도록 만드는, 일명 리밍이라 불리는 과정을 거쳐 준다. '
      '입자가 굵은 소금을 사용하는 것을 추천하며, 개인적인 취향에 따라 림 절반에만 리밍을 하는 하프문 스타일로 해도 무관하다. '
      '재료의 맛을 살리고 싶다면 라임 주스 대신 생 라임의 즙을 짜서 사용하는 것을 추천한다.'
      '데킬라 선라이즈와 더불어 데킬라 입문자에게 추천하는 칵테일. 다만 도수가 생각보다 높으므로 주의해야 한다.',
    style: TextStyle(
        height: 1.5,
        fontFamily: 'kor',
        fontSize: 20,
        fontWeight: FontWeight.bold),),///마가리타
  Text('피즈 스타일의 칵테일 중 하나이자 가장 유명한 칵테일. '
      '‘피즈’ 란 미국의 유명 바텐더 제리 토마스(Jerry Thomas)가 정립한 스타일로, '
      '스피리츠에 탄산과 레몬 주스, 설탕을 더해서 만든 것을 말한다. '
      '피즈 칵테일이므로 베이스가 되는 술만 바꿔줘도 다양한 변형이 생길 수 있다. '
      '탄산수를 제외한 재료를 쉐이킹한 후 얼음이 없는 잔에 탄산수와 함께 부어 서브한다.',
    style: TextStyle(
        height: 1.5,
        fontFamily: 'kor',
        fontSize: 20,
        fontWeight: FontWeight.bold),),///진 피즈
  Text('위스키 베이스로, 칵테일의 여왕이라는 별칭을 가지고 있는 칵테일이다. '
      '스위트 베르무트가 들어가 달콤한 맛을 지니고 있으며, 때문에 식전주로도 분류된다.'
      '위스키의 품질이 전체적인 완성도 자체를 좌우하기 때문에 너무 저렴한 브랜드는 사용하지 않는 게 좋다. '
      '앙고스투라 비터스 역시 굉장히 중요한 역할을 하며, '
      '마라스키노 체리 또한 마찬가지로 싸구려 칵테일 체리를 쓰느냐 룩사르도처럼 괜찮은 브랜드를 쓰느냐에 따라 맛이 상당히 달라진다. '
      '여타 칵테일과 마찬가지로 필을 써주면 산뜻함을 느낄수 있다.',
    style: TextStyle(
        height: 1.5,
        fontFamily: 'kor',
        fontSize: 20,
        fontWeight: FontWeight.bold),),///맨해튼
  Text('미국의 뉴욕주에서 이름을 따온 칵테일. 뉴욕을 상징한다고 할 수 있는 랜드마크인 자유의 여신상이 연상되게끔 제조한 것이 시초라고 알려져 있다. '
      '일반적으로 식전용으로 마시기에 최적화되어, 식전주로 제조된다. 색은 그레나딘 시럽이 재료로 들어가 약간의 붉은빛과 적갈색을 띈다. '
      '위의 재료들을 모두 세이킹한 다음, 차갑게 얼린 마티니 글라스에 따라준다. 이후 레몬 필로 가니쉬해주면 완성이다. ',
    style: TextStyle(
        height: 1.5,
        fontFamily: 'kor',
        fontSize: 20,
        fontWeight: FontWeight.bold),),///뉴욕
  Text('본래 이탈리아에서는 밀라노에서 생산된 캄파리와 토리노에서 생산된 베르무트를 1:1로 섞어 마시는 ‘밀라노-토리노(Milano-Torino)’ '
      '라는 칵테일이 있었으며, '
      '이후 미국인들이 이 밀라노-토리노의 씁쓸한 맛을 줄이고 마시기 편하게 하고자 탄산수를 섞어 만든 음료가 바로 지금의 아메리카노다.'
      '본래 밀라노-토리노는 비터 베르무트(Bitter Vermouth)에 가까운 스위트 베르무트를 사용했으나, '
      '한국에서는 구하기 어려운 재료이다. 안티카 포뮬라를 사용하는 것이 가장 오리지널에 가까운 맛과 향을 낸다고 한다.',
    style: TextStyle(
        height: 1.5,
        fontFamily: 'kor',
        fontSize: 20,
        fontWeight: FontWeight.bold),),///아메리카노
  Text('럼 베이스 칵테일로, 현재 IBA 공식 칵테일에 등록되어 있는 레시피 중 하나이다.'
      '역사와 의미를 생각한다면 바카디 럼으로 만드는 것이 좋다. '
      '최소한 하바나클럽 같은 쿠바 럼으로 만들어야 쿠바 리브레라는 이름을 사용할 수 있다.'
      '탄산음료에 의해 알콜이 희석되기 때문에 도수가 크게 낮아지며 알콜 특유의 향도 거의 사라진다. '
      '따라서 술에 약한 사람도 쉽게 마실 수 있다는 장점이 있기 때문에 바나 클럽에서는 진 토닉처럼 반드시 팔고 있다.'
      '화이트 럼에 라임 조각으로 장식하는 것이 정석이라고 한다. '
      '다만 바텐더나 바의 특성에 따라 다크 럼을 사용하기도 하고, 라임이 아닌 레몬을 넣어주기도 한다.',
    style: TextStyle(
        height: 1.5,
        fontFamily: 'kor',
        fontSize: 20,
        fontWeight: FontWeight.bold),),///쿠바 리브레
  Text('위스키 베이스의 칵테일로, 커피와 술이 모두 들어가다 보니 분류기준에 따라 커피 바리에이션과 칵테일 둘 다 포함된다.'
      '오늘날의 아이리시 커피는 1950년대 아일랜드 섀넌 공항에서 승객들의 추위를 달래기 위해 제공하던 음료에서 유래했다는 설이 유력하다.'
      '술 자체의 향이 연한 아이리시 위스키가 아니면 맛이 정말 없다. 피트 향이 강해서 호불호가 갈리는 수준의 위스키가 아니라 잭다니엘, 짐 빔, 조니 워커 등 그냥 어지간한 위스키는 다 어울리지 않는다. '
      '커피 향보다 위스키 향이 훨씬 강하다는 걸 알 수 있다.',
    style: TextStyle(
        height: 1.5,
        fontFamily: 'kor',
        fontSize: 20,
        fontWeight: FontWeight.bold),),///아이리시 커피
  Text('진 베이스로 하며, 이름은 이탈리아의 네그로니 백작에서 유래한 것이다. '
      '1961년 IBA 공식 레시피가 작성된 이래부터 현재까지 한 번도 빠짐 없이 공식 레시피에 오른 칵테일이다.'
      '캄파리 특유의 쌉쌀한 맛이 스위트 베르무트의 달짝지근한 맛과 어울리면서 진의 향과 맛과 조화를 이루는 맛이 난다.'
      '특히 미국에서는 모르는 사람이 없을 정도로 매우 인지도가 높은 칵테일이다. 웬만한 바에서는 반드시 메뉴에 포함되는 칵테일이다',
    style: TextStyle(
        height: 1.5,
        fontFamily: 'kor',
        fontSize: 20,
        fontWeight: FontWeight.bold),),///네그로니
  Text('보드카 베이스 칵테일로, 맛은 크렌베리와 자몽 주스가 재료로 들어가 새콤달콤하다. '
      '알콜 도수가 8도밖에 되지 않아 누구나 부담없이 마실 수 있는 칵테일이다.'
      '이름인 시 브리즈는 바다에서 불어오는 바람을 의미한다',
    style: TextStyle(
        height: 1.5,
        fontFamily: 'kor',
        fontSize: 20,
        fontWeight: FontWeight.bold),),///시 브리즈
  Text('보드카 베이스 칵테일. 여기에 리큐르인 깔루아를 넣는다. '
      '보드카 베이스인데다 우유, 토닉워터, 주스 등 음료는 안 들어가고 술과 리큐르만 들어가기 때문에 도수는 제법 높다.'
      '비율은 취향에 따라 조정해도 좋다. 단맛을 강하게 내려면 1:1에 가깝게 섞거나 반대로 5:1 정도로 단맛을 줄이는 레시피도 가능하다. '
      '본인이 단 맛을 싫어한다면 참고하도록 하자. 단 이 경우 도수가 굉장히 독해지니 각오하고 마셔야 한다.',
    style: TextStyle(
        height: 1.5,
        fontFamily: 'kor',
        fontSize: 20,
        fontWeight: FontWeight.bold),),///블랙 러시안
  Text('이름의 유래는 '
      '다이키리의 창시자인 제닝스 콕스(Jennings Cox)가 일하던 산티아고 데 쿠바의 광산 마을인 다이키리(Daiquirí)에서 유래된 것이다.'
      '주로 식전주로 사용된다.'
      '모히토와 함께 세계적인 작가인 어니스트 헤밍웨이가 사랑한 2가지의 칵테일 중 하나로 꼽힌다.',
    style: TextStyle(
        height: 1.5,
        fontFamily: 'kor',
        fontSize: 20,
        fontWeight: FontWeight.bold),),///다이키리
  Text('진 베이스로, 레몬 주스와 설탕 시럽, 탄산수가 들어가 새콤달콤하면서도 시원한 맛을 내는 칵테일이다.',
    style: TextStyle(
        height: 1.5,
        fontFamily: 'kor',
        fontSize: 20,
        fontWeight: FontWeight.bold),),///존 콜린스
  Text('위스키 베이스 칵테일. 달고 신 맛이 나면서도 생강 시럽이 들어가 엷은 생강 향이 은은하게 입안에 맴돈다.'
      '싱글몰트 아일라 위스키를 제외한 나머지 재료들을 얼음과 함께 8~10초간 셰이킹한 다음, 얼음을 걸러내고 차갑게 식힌 올드 패션드 글라스에 따라준다. '
      '이후 싱글몰트 아일라 위스키를 플로팅해 준 다음, 진저캔디나 레몬 필, 혹은 편강(片薑)[3]으로 가니쉬하면 완성이다.'
      '싱글 몰트 아일라 위스키를 구하기 어렵다면 조니 워커 더블 블랙처럼 비교적 피트 향이 강한 블렌디드 위스키를 사용하는 것도 방법이다.'
      '',
    style: TextStyle(
        height: 1.5,
        fontFamily: 'kor',
        fontSize: 20,
        fontWeight: FontWeight.bold),),///페니실린
  Text('보드카 베이스로, 무척이나 개성 넘치는 이름 덕분에 현재까지도 인기가 많은 칵테일이다. '
      '현재 IBA 공식 칵테일에 등록되어 있는 레시피 중 하나이다.'
      '보드카 베이스에 복숭아 혹은 파인애플 주스를 넣고, '
      '이후 동일량의 주스들을 배합하는 등 다양한 바리에이션이 존재하며, 취향에 따라 체리나 막대사탕을 곁들이는 등 다양한 형태로 즐길 수 있다.'
      '',
    style: TextStyle(
        height: 1.5,
        fontFamily: 'kor',
        fontSize: 20,
        fontWeight: FontWeight.bold),),///섹스 온 더 비치
  Text('보드카 베이스 칵테일로, 이름의 뜻은 푸른 산호초. 그래서인지 칵테일 색도 마찬가지로 푸른색이다.'
      '이름이 비슷한 블루 하와이와는 꽤 가까운 관계로, 블루 하와이에서 술만 보드카로 바꿔도 블루 라군과 흡사한 맛이 난다. '
      '파인애플 주스가 빠져있기 때문에 블루 하와이보다는 스카이다이빙과 제일 가까운 맛을 낸다.'
      '',
    style: TextStyle(
        height: 1.5,
        fontFamily: 'kor',
        fontSize: 20,
        fontWeight: FontWeight.bold),),///블루 라군
  Text('위스키 베이스로, 만드는 방법 자체가 간단해서 디스코 시대를 풍미한 칵테일이다. '
      '누가 만들어도 맛의 편차가 크지 않아서 바 만이 아니라 식당이나 클럽에서도 판매하기 쉽고 마시기 간편했기 때문에 디스코가 유행하던 시절에 많은 사람들이 찾은 칵테일이다. '
      '1970년대에 만들어진 칵테일이기 때문에 이미지만큼 오래된 칵테일은 아니다.'
      '기주를 보드카로 바꾸면 갓마더가 되며, 기주 대신 헤비 크림을 넣으면 갓차일드가 된다.'
      '',
    style: TextStyle(
        height: 1.5,
        fontFamily: 'kor',
        fontSize: 20,
        fontWeight: FontWeight.bold),),///갓파더
  Text('럼 베이스 칵테일로, 타히티어로 “최고”를 의미한다. 동시에 처음 맛본 사람은 누구나 “마이타이!”를 외칠 거라는 의미를 가지고 있기도 하다.'
      '1944년 켈리포니아의 오클랜드에 위치한 트레이더 빅스(Trader Vic’s) 레스토랑의 바텐더 빅토르 줄스 베르게론(Victor Jules Bergeron)가 '
      '처음으로 선보였다고 전해진다.',
    style: TextStyle(
        height: 1.5,
        fontFamily: 'kor',
        fontSize: 20,
        fontWeight: FontWeight.bold),),///마이타이
  Text('럼 베이스 칵테일로, 유래는 아일랜드라고 한다. 무지개 색으로 플로팅되어 무척 아름다운 색깔을 자랑하며, 덕분에 해외에서 무척 유명한 칵테일이기도 하다. 유명한 만큼 변형도 무척 많은데,'
      ' 리큐르 하나를 더 추가하거나, 슬러시 형태로 만들기도 하는 등 다양하다. 맛은 매우 달콤한 편이다.',
    style: TextStyle(
        height: 1.5,
        fontFamily: 'kor',
        fontSize: 20,
        fontWeight: FontWeight.bold),),///레인보우 파라다이스
  Text('진과 베르무트, 오렌지 주스를 섞은 칵테일. 1934년에는 마티니, 맨해튼에 이어 세계에서 3번째로 유명한 칵테일의 자리에 오른 적도 있다. '
      '이름의 유래는 뉴욕의 카운티 브롱스.'
      '진의 맛과 오렌지 주스의 맛, 베르무트의 향이 순서대로 느껴지는 칵테일이다.',
    style: TextStyle(
        height: 1.5,
        fontFamily: 'kor',
        fontSize: 20,
        fontWeight: FontWeight.bold),),///브롱스
  Text('보드카 베이스 칵테일. 스크루드라이버에 갈리아노를 추가한 버전이다.'
      '도수는 15도로 낮지 않은 편이나 오렌지 주스로 술맛이 잘 느껴지지 않아 스크루드라이버와 함께 레이디 킬러 칵테일로 불리기도 한다.'
      '기원은 캘리포니아의 파도타기 선수인 하비가 경기에서 패배한 후 술집에서 이것저것 섞어 마시다 취했는데, '
      '이때 그가 벽에 여기저기 부딪히며 걸어갔다고 한다. 이런 모습을 사람들이 보게 되고, 이후 그가 섞어 만든 칵테일의 이름으로 지어 준 것이다.',
    style: TextStyle(
        height: 1.5,
        fontFamily: 'kor',
        fontSize: 20,
        fontWeight: FontWeight.bold),),///하비 월뱅어
  Text('칵테일의 한 종류. 멜론 리큐르의 한 종류인 미도리를 사용해 만드는 유명한 칵테일이다. '
      '멜론맛인 미도리와 스윗&사워 믹스의 레몬향이 어우러져서 상큼한 색깔과 맛을 연출하는 것이 포인트.',
    style: TextStyle(
        height: 1.5,
        fontFamily: 'kor',
        fontSize: 20,
        fontWeight: FontWeight.bold),),///미도리 사워
  Text('보드카를 베이스로 하는 아름다운 칵테일'
      '영국의 바텐더 딕 브레드셀(Dick Bradsell)이 1980년에 처음으로 선보였다고 한다.'
      '처음 제조하게 된 계기는 친구인 피터 켄트가 자신의 결혼을 축하하는 의미로 칵테일 파티를 열 계획이었으나 자금이 부족했고, '
      '이에 딕 브레드셀이 비교적 값싼 재료들로 많은 양의 칵테일을 만들 방법을 고민해 창시해낸 것이라고 한다.',
    style: TextStyle(
        height: 1.5,
        fontFamily: 'kor',
        fontSize: 20,
        fontWeight: FontWeight.bold),),///러시안 스프링 펀치
  Text('보드카를 베이스로 한다. 대표적인 레이디 킬러 칵테일 중 하나로, 달콤한 맛에 비해 도수가 무려 20도를 넘어선다.'
      ' HBO에서 방영했던 TV 쇼 섹스 앤 더 시티에서 코스모폴리탄이 등장하게 되고, 이후 1990년대 코스모폴리탄은 다시 어마어마한 전성기를 누리게 되며 당시 바에 있는 대부분의 사람들이 코스모폴리탄을 마시고 있었다고 표현되곤 한다. '
      '이후 오늘날까지 꾸준한 인기를 이어 오고 있으며, 현재 코스모폴리탄은 IBA 공식 칵테일에 등록되어 있다.',
    style: TextStyle(
        height: 1.5,
        fontFamily: 'kor',
        fontSize: 20,
        fontWeight: FontWeight.bold),),///코스모폴리탄
  Text('어니스트 헤밍웨이의 요청으로 만들어진 다이키리의 배리에이션 칵테일. '
      '‘파파 도블레(Papa Doble)’라는 이명이 있으며, 2011년 IBA 공식 칵테일로 지정되었다.'
      '1930년대 헤밍웨이가 즐겨다닌 엘 플로리디타(El Floridita)에서 처음으로 선보여졌다고 알려져 있다. 우연히 엘 플로리디타에 들러 바텐더 콘스탄티노 베르트(Constantino Ribalaigua Vert)의 프로즌 다이키리를 맛본 헤밍웨이는 맛에 감탄하면서도 설탕을 줄이고 럼을 2배로 넣어달라는 주문을 했고, '
      '이에 콘스탄티노가 헤밍웨이의 다이키리를 서빙하며 “There it is, Papa.”라 말했다고 한다. 여기서 파파는 헤밍웨이의 별명이다.',
    style: TextStyle(
        height: 1.5,
        fontFamily: 'kor',
        fontSize: 20,
        fontWeight: FontWeight.bold),),///헤밍웨이 스페셜
  Text('럼 베이스 칵테일로, 명칭은 마법의 부적이라는 의미의 스페인어인 ‘Mojo’ 에서 유래한 것이다.'
      '맛은 달달함과 동시에 민트 향을 내면서 씁쓸한 뒷맛이 스쳐가니 나름 입체적인 맛이라 할 수 있다.'
      '',
    style: TextStyle(
        height: 1.5,
        fontFamily: 'kor',
        fontSize: 20,
        fontWeight: FontWeight.bold),),///모히또
  Text('위스키 베이스로, 여기에 ‘드람뷔’ 라 불리는 리큐르가 재료로 들어간다.'
      '기원은 금주법 시대로 거슬러올라, 밀주의 조잡한 맛을 가리기 위해 드람뷔를 첨가한 데서 비롯되었다고 한다. '
      '녹슨 못이라는 의미의 ‘Rusty Nail’ 명칭 자체는 1960년대에 붙여진 것으로, 칵테일의 색깔을 비유하여 붙여진 것이다.',
    style: TextStyle(
        height: 1.5,
        fontFamily: 'kor',
        fontSize: 20,
        fontWeight: FontWeight.bold),),///러스티 네일
];

final List<Cocktail> jimbeam_cocktail_List = [
  Cocktail(0, "Old Fashioned", "심플한 조합, 다양한 바리에이션", "맛있음", "lib/assets/real_cocktails/old_fashioned.png"),
  Cocktail(1, "Mint Julep", "위스키 베이스의ㅡ 민트향 칵테일", "맛있음", "lib/assets/real_cocktails/mint_julep.png"),
  Cocktail(2, "Manhattan", "칵테일의 여왕", "맛있음", "lib/assets/real_cocktails/manhattan.png"),
  Cocktail(3, "Whisky Sour", "위스키 베이스의 레몬향 칵테일", "맛있음", "lib/assets/real_cocktails/sour.png"),
  Cocktail(4, "New York", "뉴욕의 밤", "맛있음", "lib/assets/real_cocktails/new_york.png"),
  Cocktail(5, "Penicillin", "약이 아닙니다", "맛있음", "lib/assets/real_cocktails/penicillin.png"),
  Cocktail(6, "Godfather", "칵테일계의 Godfather", "맛있음", "lib/assets/real_cocktails/godfather.png"),
  Cocktail(7, "Rusty Nail", "녹슨 못은 안들어가요", "맛있음", "lib/assets/real_cocktails/rusty_nail.png"),
];

final List<Column> jimbeam_cocktail_recipe = [
  Column(
    children: <Widget>[
      Text(
        'Old Fashioned recipe',
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
  ),///올드 패션드
  Column(
    children: <Widget>[
      Text(
        'Mint Julep recipe',
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
        '민트 잎 - 4leaves',
        style: TextStyle(
            fontFamily: 'kor',
            fontSize: 20,
            fontWeight: FontWeight.bold),
      ),
      Text(
        '설탕 - 1tsp',
        style: TextStyle(
            fontFamily: 'kor',
            fontSize: 20,
            fontWeight: FontWeight.bold),
      ),
      Text(
        '물 2tsp',
        style: TextStyle(
            fontFamily: 'kor',
            fontSize: 20,
            fontWeight: FontWeight.bold),
      ),
    ],
  ),///민트 줄렙
  Column(
    children: <Widget>[
      Text(
        'Manhattan recipe',
        style: TextStyle(
            fontFamily: 'kor',
            fontSize: 30,
            fontWeight: FontWeight.bold),
      ),
      Text(
        '위스키 - 50ml',
        style: TextStyle(
            fontFamily: 'kor',
            fontSize: 20,
            fontWeight: FontWeight.bold),
      ),
      Text(
        '스위트 베르무트 - 20ml',
        style: TextStyle(
            fontFamily: 'kor',
            fontSize: 20,
            fontWeight: FontWeight.bold),
      ),
      Text(
        '앙고스투라 비터스 - 1 Dash',
        style: TextStyle(
            fontFamily: 'kor',
            fontSize: 20,
            fontWeight: FontWeight.bold),
      ),
    ],
  ),///맨해튼
  Column(
    children: <Widget>[
      Text(
        'Whisky Sour recipe',
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
        '레몬 주스 - 25ml',
        style: TextStyle(
            fontFamily: 'kor',
            fontSize: 20,
            fontWeight: FontWeight.bold),
      ),
      Text(
        '설탕 시럽 - 20ml',
        style: TextStyle(
            fontFamily: 'kor',
            fontSize: 20,
            fontWeight: FontWeight.bold),
      ),
      Text(
        '*달걀 흰자 - 20ml(생략 가능)',
        style: TextStyle(
            fontFamily: 'kor',
            fontSize: 20,
            fontWeight: FontWeight.bold),
      ),
    ],
  ),///위스키 사워
  Column(
    children: <Widget>[
      Text(
        'New York recipe',
        style: TextStyle(
            fontFamily: 'kor',
            fontSize: 30,
            fontWeight: FontWeight.bold),
      ),
      Text(
        '위스키 - 45ml',
        style: TextStyle(
            fontFamily: 'kor',
            fontSize: 20,
            fontWeight: FontWeight.bold),
      ),
      Text(
        '라임 주스 - 15ml',
        style: TextStyle(
            fontFamily: 'kor',
            fontSize: 20,
            fontWeight: FontWeight.bold),
      ),
      Text(
        '설탕 - 1tsp',
        style: TextStyle(
            fontFamily: 'kor',
            fontSize: 20,
            fontWeight: FontWeight.bold),
      ),
      Text(
        '그레나딘 시럽 - 1/2tsp',
        style: TextStyle(
            fontFamily: 'kor',
            fontSize: 20,
            fontWeight: FontWeight.bold),
      ),
    ],
  ),///뉴욕
  Column(
    children: <Widget>[
      Text(
        'Penicillin recipe',
        style: TextStyle(
            fontFamily: 'kor',
            fontSize: 30,
            fontWeight: FontWeight.bold),
      ),
      Text(
        '스카치 위스키 - 60ml',
        style: TextStyle(
            fontFamily: 'kor',
            fontSize: 20,
            fontWeight: FontWeight.bold),
      ),
      Text(
        '라가불린 16년 - 7.5ml',
        style: TextStyle(
            fontFamily: 'kor',
            fontSize: 20,
            fontWeight: FontWeight.bold),
      ),
      Text(
        '레몬 주스 - 22.5ml',
        style: TextStyle(
            fontFamily: 'kor',
            fontSize: 20,
            fontWeight: FontWeight.bold),
      ),
      Text(
        '허니 시럽 - 22.5ml',
        style: TextStyle(
            fontFamily: 'kor',
            fontSize: 20,
            fontWeight: FontWeight.bold),
      ),
      Text(
        '저민 생강 - 3 pieces',
        style: TextStyle(
            fontFamily: 'kor',
            fontSize: 20,
            fontWeight: FontWeight.bold),
      ),
    ],
  ),///페니실린
  Column(
    children: <Widget>[
      Text(
        'Godfather recipe',
        style: TextStyle(
            fontFamily: 'kor',
            fontSize: 30,
            fontWeight: FontWeight.bold),
      ),
      Text(
        '위스키 - 50ml',
        style: TextStyle(
            fontFamily: 'kor',
            fontSize: 20,
            fontWeight: FontWeight.bold),
      ),
      Text(
        '디사론노 - 25ml',
        style: TextStyle(
            fontFamily: 'kor',
            fontSize: 20,
            fontWeight: FontWeight.bold),
      ),
      Text(
        '*오렌지 트위스트 - 1 piece(garnish)',
        style: TextStyle(
            fontFamily: 'kor',
            fontSize: 20,
            fontWeight: FontWeight.bold),
      ),
    ],
  ),///갓파더
  Column(
    children: <Widget>[
      Text(
        'Rusty Nail recipe',
        style: TextStyle(
            fontFamily: 'kor',
            fontSize: 30,
            fontWeight: FontWeight.bold),
      ),
      Text(
        '스카치 위스키 - 45ml',
        style: TextStyle(
            fontFamily: 'kor',
            fontSize: 20,
            fontWeight: FontWeight.bold),
      ),
      Text(
        '드람뷔 - 25ml',
        style: TextStyle(
            fontFamily: 'kor',
            fontSize: 20,
            fontWeight: FontWeight.bold),
      ),
    ],
  ),///러스티 네일
];

final List<Text> jimbeam_cocktail_summary_data = [
  Text('위스키 베이스 칵테일로, 칵테일의 원형이라 할 수 있는 외형을 지녔다고 표현된다. '
      '명칭이 칵테일의 역사에서 유래한 것인데, 본래 올드 패션드는 양주, 설탕, 그리고 비터스 이 세 가지 재료를 쓴 단순한 조합의 음료였으며, 당시에는 비터드 슬링(Bittered Sling)이라 불렀다. '
      '이후 19세기 미국에서 여러 바텐더들이 버번 위스키를 통해 이전의 단순한 맛에서 다양한 맛으로 바꾸기 위해 여러 번의 시도를 진행하게 된다.'
      '그러나 이전의 심플한 조합의 칵테일은 수요는 여전했고, 때문에 이전의 레시피에 버번 위스키만 추가된 버번 위스키, 앙고스투라 비터,'
      ' 설탕 혹은 시럽을 써서 만드는 칵테일을 ”옛날 방식” 이라는 의미의 ”Old Fashioned” 라는 이름으로 부르게 되었다고 한다. '
      '이러한 사연에 따라 이 올드 패션드와는 상반되어 위의 건너온 재료가 들어가는 “개량된 위스키 칵테일(Improved Whiskey Cocktail)” 이라는 레시피도 있다. '
      '이러한 역사와 심플함으로 인해 바리에이션이 아주 다양하고, 바의 특색을 관찰할 수 있는 음료이다.',
    style: TextStyle(
        height: 1.5,
        fontFamily: 'kor',
        fontSize: 20,
        fontWeight: FontWeight.bold),),///올드 패션드
  Text('위스키 베이스 칵테일. 설탕과 민트 잎이 들어가 달콤하면서도 민트 향이 난다.'
      '역사가 어마어마하게 오래된 칵테일로, '
      '본래 민트 줄렙은 무려 16세기 즈음에 직접 만들어 마시는 소화제로 사용되고 있었으나, '
      '1700년대 후반 미국 남부에서부터 칵테일로 발전하기 시작하게 되고, '
      '이후 1938년 켄터키 더비의 공식 음료로 인정받게 되어 오늘날의 모습이 된 것이다. '
      '영화 "바람과 함께 사라지다"와 "위대한 개츠비"에 등장하기도 했다.',
    style: TextStyle(
        height: 1.5,
        fontFamily: 'kor',
        fontSize: 20,
        fontWeight: FontWeight.bold),),///민트 줄렙
  Text('위스키 베이스로, 칵테일의 여왕이라는 별칭을 가지고 있는 칵테일이다. '
      '스위트 베르무트가 들어가 달콤한 맛을 지니고 있으며, 때문에 식전주로도 분류된다.'
      '위스키의 품질이 전체적인 완성도 자체를 좌우하기 때문에 너무 저렴한 브랜드는 사용하지 않는 게 좋다. '
      '앙고스투라 비터스 역시 굉장히 중요한 역할을 하며, '
      '마라스키노 체리 또한 마찬가지로 싸구려 칵테일 체리를 쓰느냐 룩사르도처럼 괜찮은 브랜드를 쓰느냐에 따라 맛이 상당히 달라진다. '
      '여타 칵테일과 마찬가지로 필을 써주면 산뜻함을 느낄수 있다.',
    style: TextStyle(
        height: 1.5,
        fontFamily: 'kor',
        fontSize: 20,
        fontWeight: FontWeight.bold),),///맨해튼
  Text('위스키 베이스 칵테일. 레몬 주스와 설탕이 재료로 들어간다. 맛은 무척 부드럽고 조화로운 신맛과 단맛을 느낄 수 있다. '
      '때문에 종종 식전주로 사용되기도 한다.'
      '달걀 흰자를 사용하는 레시피의 경우 호불호가 많이 갈리는 편이다.'
      '달걀 흰자를 넣으면 칵테일의 거품 층이 두껍게 일어나며, 맛도 부드러워지면서 한결 마시기 편해진다.',
    style: TextStyle(
        height: 1.5,
        fontFamily: 'kor',
        fontSize: 20,
        fontWeight: FontWeight.bold),),///위스키 사워
  Text('미국의 뉴욕주에서 이름을 따온 칵테일. 뉴욕을 상징한다고 할 수 있는 랜드마크인 자유의 여신상이 연상되게끔 제조한 것이 시초라고 알려져 있다. '
      '일반적으로 식전용으로 마시기에 최적화되어, 식전주로 제조된다. 색은 그레나딘 시럽이 재료로 들어가 약간의 붉은빛과 적갈색을 띈다. '
      '위의 재료들을 모두 세이킹한 다음, 차갑게 얼린 마티니 글라스에 따라준다. 이후 레몬 필로 가니쉬해주면 완성이다. ',
    style: TextStyle(
        height: 1.5,
        fontFamily: 'kor',
        fontSize: 20,
        fontWeight: FontWeight.bold),),///뉴욕
  Text('위스키 베이스 칵테일. 달고 신 맛이 나면서도 생강 시럽이 들어가 엷은 생강 향이 은은하게 입안에 맴돈다.'
      '싱글몰트 아일라 위스키를 제외한 나머지 재료들을 얼음과 함께 8~10초간 셰이킹한 다음, 얼음을 걸러내고 차갑게 식힌 올드 패션드 글라스에 따라준다. '
      '이후 싱글몰트 아일라 위스키를 플로팅해 준 다음, 진저캔디나 레몬 필, 혹은 편강(片薑)[3]으로 가니쉬하면 완성이다.'
      '싱글 몰트 아일라 위스키를 구하기 어렵다면 조니 워커 더블 블랙처럼 비교적 피트 향이 강한 블렌디드 위스키를 사용하는 것도 방법이다.'
      '',
    style: TextStyle(
        height: 1.5,
        fontFamily: 'kor',
        fontSize: 20,
        fontWeight: FontWeight.bold),),///페니실린
  Text('위스키 베이스로, 만드는 방법 자체가 간단해서 디스코 시대를 풍미한 칵테일이다. '
      '누가 만들어도 맛의 편차가 크지 않아서 바 만이 아니라 식당이나 클럽에서도 판매하기 쉽고 마시기 간편했기 때문에 디스코가 유행하던 시절에 많은 사람들이 찾은 칵테일이다. '
      '1970년대에 만들어진 칵테일이기 때문에 이미지만큼 오래된 칵테일은 아니다.'
      '기주를 보드카로 바꾸면 갓마더가 되며, 기주 대신 헤비 크림을 넣으면 갓차일드가 된다.'
      '',
    style: TextStyle(
        height: 1.5,
        fontFamily: 'kor',
        fontSize: 20,
        fontWeight: FontWeight.bold),),///갓파더
  Text('위스키 베이스로, 여기에 ‘드람뷔’ 라 불리는 리큐르가 재료로 들어간다.'
      '기원은 금주법 시대로 거슬러올라, 밀주의 조잡한 맛을 가리기 위해 드람뷔를 첨가한 데서 비롯되었다고 한다. '
      '녹슨 못이라는 의미의 ‘Rusty Nail’ 명칭 자체는 1960년대에 붙여진 것으로, 칵테일의 색깔을 비유하여 붙여진 것이다.',
    style: TextStyle(
        height: 1.5,
        fontFamily: 'kor',
        fontSize: 20,
        fontWeight: FontWeight.bold),),///러스티 네일
];

