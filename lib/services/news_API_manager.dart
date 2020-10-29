import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:articalist/modals/newsModal.dart';
import 'package:articalist/constants.dart';
import 'apiKey.dart';

class APIManager {
  NewsModal _newsModal;
  var client = http.Client();

  String urlGenerator(List<String> filters, String baseURL) {
    String url;
    //https://newsapi.org/v2/everything?qInTitle=(Flutter%20OR%20Google)&apiKey=a7ed4889fbe2449c83580666ede02fd0
    print("Filters : $filters");
    String filterConcate = '(';
    filters.forEach((element) {
      print("Elements : $element");
      filterConcate = filterConcate + element;
      filters.last == element ? filterConcate=filterConcate + ')' : filterConcate=filterConcate+'%20OR%20';
      print("FilterConcate : $filterConcate");
    });

    url = "$baseURL$filterConcate&apiKey=$apiKey";
    print("Url : $url");
    return url;
  }

  Future<NewsModal> getNews(List<String> filters) async {
    var response = await client.get(urlGenerator(filters, URL));
    try {
      if (response.statusCode == 200) {
        var responseBody = response.body;
        var responseMap = json.decode(responseBody);
        _newsModal = NewsModal.fromJson(responseMap);
      }
      return _newsModal;
    } catch (e) {
      print(e);
      return _newsModal;
    }
  }
}
