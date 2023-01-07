import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_workshop/login/models/news_model.dart';
import 'package:http/http.dart' as http;

class NewsProvider extends ChangeNotifier {
  String nama = "Ucok";

  NewsModel _datamodel = NewsModel();
  NewsModel get datamodel => _datamodel;

  set setData(val) {
    _datamodel = val;
    notifyListeners();
  }

  getNews() async {
    try {
      var response = await http
          .get(Uri.parse("https://tembakul.rakadev.my.id/api/mobile/news/"));

      if (response.statusCode == 200) {
        setData = NewsModel.fromJson(json.decode(response.body));
      }
    } finally {
      print("error");
    }
  }
}
