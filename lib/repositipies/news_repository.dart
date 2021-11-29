import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:news_app_wit_bloc/models/article_model.dart';

class NewsRepository{
  Future<List<ArticleModel>> fetchNews() async {
    var response = await http.get(Uri.parse(
        "https://newsapi.org/v2/top-headlines?country=us&apiKey=56784348fb5d41c8844a1be8cb9ec14d"));

    var data = jsonDecode(response.body);
    print(data);
    List<ArticleModel> _articleModelList = [];

    if (response.statusCode == 200) {
      for (var item in data["articles"]) {
        ArticleModel _articileModel = ArticleModel.fromJson(item);
        _articleModelList.add(_articileModel);
      }
      return _articleModelList;
    } else {
      return _articleModelList; // empty list
    }
  }
}