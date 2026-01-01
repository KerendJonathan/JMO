
import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:myapp/models/article_model.dart';

class NewsService {
  Future<List<Article>> getArticles() async {
    final String response = await rootBundle.loadString('assets/data/dummy_news.json');
    final data = await json.decode(response);
    if (data['articles'] != null) {
      final List<dynamic> articlesJson = data['articles'];
      return articlesJson.map((json) => Article.fromJson(json)).toList();
    } else {
      return [];
    }
  }
}
