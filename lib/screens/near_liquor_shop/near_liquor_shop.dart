import 'package:flutter/material.dart';

/// [Deprecated 클래스]
/// 기획 변경으로 인한 기능 미사용
class NearLiquorShop extends StatelessWidget {
  final String liquorName;

  const NearLiquorShop({
    required this.liquorName,
    Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(liquorName),
      ),
      body: Text(liquorName),
    );
  }
}
