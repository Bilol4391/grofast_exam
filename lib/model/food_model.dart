// To parse this JSON data, do
//
//     final foodModel = foodModelFromJson(jsonString);

import 'dart:convert';

FoodModel? foodModelFromJson(String str) => FoodModel.fromJson(json.decode(str));

String foodModelToJson(FoodModel? data) => json.encode(data!.toJson());

class FoodModel {
    FoodModel({
        this.q,
        this.from,
        this.to,
        this.more,
        this.count,
        this.hits,
    });

    String? q;
    num? from;
    num? to;
    bool? more;
    num? count;
    List<Hit?>? hits;

    factory FoodModel.fromJson(Map<String, dynamic> json) => FoodModel(
        q: json["q"],
        from: json["from"],
        to: json["to"],
        more: json["more"],
        count: json["count"],
        hits: json["hits"] == null ? [] : List<Hit?>.from(json["hits"]!.map((x) => Hit.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "q": q,
        "from": from,
        "to": to,
        "more": more,
        "count": count,
        "hits": hits == null ? [] : List<dynamic>.from(hits!.map((x) => x!.toJson())),
    };
}

class Hit {
    Hit({
        this.recipe,
    });

    Recipe? recipe;

    factory Hit.fromJson(Map<String, dynamic> json) => Hit(
        recipe: Recipe.fromJson(json["recipe"]),
    );

    Map<String, dynamic> toJson() => {
        "recipe": recipe!.toJson(),
    };
}

class Recipe {
    Recipe({
        this.uri,
        this.label,
        this.image,
        this.source,
        this.url,
        this.shareAs,
        this.recipeYield,
        this.dietLabels,
        this.healthLabels,
        this.cautions,
        this.ingredientLines,
        this.ingredients,
        this.calories,
        this.totalWeight,
        this.totalTime,
        this.cuisineType,
        this.totalNutrients,
        this.totalDaily,
        this.digest,
    });

    String? uri;
    String? label;
    String? image;
    String? source;
    String? url;
    String? shareAs;
    num? recipeYield;
    List<String?>? dietLabels;
    List<String?>? healthLabels;
    List<String?>? cautions;
    List<String?>? ingredientLines;
    List<Ingredient?>? ingredients;
    num? calories;
    num? totalWeight;
    num? totalTime;
    List<String?>? cuisineType;
    Map<String, Total?>? totalNutrients;
    Map<String, Total?>? totalDaily;
    List<Digest?>? digest;

    factory Recipe.fromJson(Map<String, dynamic> json) => Recipe(
        uri: json["uri"],
        label: json["label"],
        image: json["image"],
        source: json["source"],
        url: json["url"],
        shareAs: json["shareAs"],
        recipeYield: json["yield"],
        dietLabels: json["dietLabels"] == null ? [] : List<String?>.from(json["dietLabels"]!.map((x) => x)),
        healthLabels: json["healthLabels"] == null ? [] : List<String?>.from(json["healthLabels"]!.map((x) => x)),
        cautions: json["cautions"] == null ? [] : List<String?>.from(json["cautions"]!.map((x) => x)),
        ingredientLines: json["ingredientLines"] == null ? [] : List<String?>.from(json["ingredientLines"]!.map((x) => x)),
        ingredients: json["ingredients"] == null ? [] : List<Ingredient?>.from(json["ingredients"]!.map((x) => Ingredient.fromJson(x))),
        calories: json["calories"].toDouble(),
        totalWeight: json["totalWeight"].toDouble(),
        totalTime: json["totalTime"],
        cuisineType: json["cuisineType"] == null ? [] : List<String?>.from(json["cuisineType"]!.map((x) => x)),
        totalNutrients: Map.from(json["totalNutrients"]!).map((k, v) => MapEntry<String, Total?>(k, Total.fromJson(v))),
        totalDaily: Map.from(json["totalDaily"]!).map((k, v) => MapEntry<String, Total?>(k, Total.fromJson(v))),
        digest: json["digest"] == null ? [] : List<Digest?>.from(json["digest"]!.map((x) => Digest.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "uri": uri,
        "label": label,
        "image": image,
        "source": source,
        "url": url,
        "shareAs": shareAs,
        "yield": recipeYield,
        "dietLabels": dietLabels == null ? [] : List<dynamic>.from(dietLabels!.map((x) => x)),
        "healthLabels": healthLabels == null ? [] : List<dynamic>.from(healthLabels!.map((x) => x)),
        "cautions": cautions == null ? [] : List<dynamic>.from(cautions!.map((x) => x)),
        "ingredientLines": ingredientLines == null ? [] : List<dynamic>.from(ingredientLines!.map((x) => x)),
        "ingredients": ingredients == null ? [] : List<dynamic>.from(ingredients!.map((x) => x!.toJson())),
        "calories": calories,
        "totalWeight": totalWeight,
        "totalTime": totalTime,
        "cuisineType": cuisineType == null ? [] : List<dynamic>.from(cuisineType!.map((x) => x)),
        "totalNutrients": Map.from(totalNutrients!).map((k, v) => MapEntry<String, dynamic>(k, v!.toJson())),
        "totalDaily": Map.from(totalDaily!).map((k, v) => MapEntry<String, dynamic>(k, v!.toJson())),
        "digest": digest == null ? [] : List<dynamic>.from(digest!.map((x) => x!.toJson())),
    };
}

class Digest {
    Digest({
        this.label,
        this.tag,
        this.schemaOrgTag,
        this.total,
        this.hasRdi,
        this.daily,
        this.sub,
    });

    String? label;
    String? tag;
    String? schemaOrgTag;
    num? total;
    bool? hasRdi;
    num? daily;
    List<Digest?>? sub;

    factory Digest.fromJson(Map<String, dynamic> json) => Digest(
        label: json["label"],
        tag: json["tag"],
        schemaOrgTag: json["schemaOrgTag"],
        total: json["total"].toDouble(),
        hasRdi: json["hasRDI"],
        daily: json["daily"].toDouble(),
      
        sub: json["sub"] == null ? [] : json["sub"] == null ? [] : List<Digest?>.from(json["sub"]!.map((x) => Digest.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "label": label,
        "tag": tag,
        "schemaOrgTag": schemaOrgTag,
        "total": total,
        "hasRDI": hasRdi,
        "daily": daily,
     
        "sub": sub == null ? [] : sub == null ? [] : List<dynamic>.from(sub!.map((x) => x!.toJson())),
    };
}

class Ingredient {
    Ingredient({
        this.text,
        this.weight,
        this.foodCategory,
        this.foodId,
        this.image,
    });

    String? text;
    num? weight;
    String? foodCategory;
    String? foodId;
    String? image;

    factory Ingredient.fromJson(Map<String, dynamic> json) => Ingredient(
        text: json["text"],
        weight: json["weight"].toDouble(),
        foodCategory: json["foodCategory"],
        foodId: json["foodId"],
        image: json["image"],
    );

    Map<String, dynamic> toJson() => {
        "text": text,
        "weight": weight,
        "foodCategory": foodCategory,
        "foodId": foodId,
        "image": image,
    };
}



class Total {
    Total({
        this.label,
        this.quantity,
        
    });

    String? label;
    num? quantity;
    

    factory Total.fromJson(Map<String, dynamic> json) => Total(
        label: json["label"],
        quantity: json["quantity"].toDouble(),
     
    );

    Map<String, dynamic> toJson() => {
        "label": label,
        "quantity": quantity,
       
    };
}

