import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:my_first_portfolio/model/food_model.dart';

class GetInfo {
  GetInfo._();

  static Future<FoodModel?> getInformation({required String text}) async {
    try {
      final url = Uri.parse(
          "https://edamam-recipe-search.p.rapidapi.com/search?q=$text");
      final res = await http.get(url, headers: {
        'X-RapidAPI-Key': '2c840ef8e5msh707233cec7e192fp145d49jsn4e1bee476466',
        'X-RapidAPI-Host': 'edamam-recipe-search.p.rapidapi.com'
      });

      print(res.statusCode);
      print(res.body);

      return foodModelFromJson(res.body);
    } catch (e) {
      print('error: $e');
    }
    return null;
  }
}
