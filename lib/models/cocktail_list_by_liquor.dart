class CocktailListByLiquorModel {
  String? category;
  List<ProductList>? productList;

  CocktailListByLiquorModel({this.category, this.productList});

  CocktailListByLiquorModel.fromJson(Map<String, dynamic> json) {
    category = json['category'];
    if (json['productList'] != null) {
      productList = <ProductList>[];
      json['productList'].forEach((v) {
        productList!.add(new ProductList.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['category'] = this.category;
    if (this.productList != null) {
      data['productList'] = this.productList!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class ProductList {
  String? korName;
  String? engName;
  String? imgUrl;
  String? summary;
  String? recipe;
  String? description;

  ProductList({this.korName, this.engName, this.imgUrl, this.summary, this.recipe, this.description});

  ProductList.fromJson(Map<String, dynamic> json) {
    korName = json['korName'];
    engName = json['engName'];
    imgUrl = json['imgUrl'];
    summary = json['summary'];
    recipe = json['recipe'];
    description = json['description'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['korName'] = this.korName;
    data['engName'] = this.engName;
    data['imgUrl'] = this.imgUrl;
    data['summary'] = this.summary;
    data['recipe'] = this.recipe;
    data['description'] = this.description;
    return data;
  }
}