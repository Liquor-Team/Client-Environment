class AllCocktailModel {
  List<Cocktails>? cocktails;

  AllCocktailModel({this.cocktails});

  AllCocktailModel.fromJson(Map<String, dynamic> json) {
    if (json['cocktails'] != null) {
      cocktails = <Cocktails>[];
      json['cocktails'].forEach((v) {
        cocktails!.add(new Cocktails.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.cocktails != null) {
      data['cocktails'] = this.cocktails!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Cocktails {
  String? korName;
  String? engName;
  String? imgUrl;
  String? summary;
  String? recipe;
  String? description;

  Cocktails(
      {this.korName,
        this.engName,
        this.imgUrl,
        this.summary,
        this.recipe,
        this.description});

  Cocktails.fromJson(Map<String, dynamic> json) {
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