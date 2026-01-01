import 'package:flutter/material.dart';
import '../models/article_model.dart';
import '../services/news_service.dart';

enum NewsState { initial, loading, loaded, error }

class NewsProvider extends ChangeNotifier {
  final NewsService _newsService;

  NewsProvider(this._newsService);

  List<Article> _articles = [];
  NewsState _state = NewsState.initial;
  String _errorMessage = '';

  List<Article> get articles => _articles;
  NewsState get state => _state;
  String get errorMessage => _errorMessage;

  Future<void> fetchNews() async {
    try {
      _state = NewsState.loading;
      notifyListeners();

      _articles = await _newsService.getArticles();

      _state = NewsState.loaded;
      notifyListeners();
    } catch (e) {
      _errorMessage = 'Gagal memuat berita. Silakan coba lagi nanti.';
      _state = NewsState.error;
      notifyListeners();
    }
  }
}
