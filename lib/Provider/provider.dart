import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:jokegenerator/Model/model.dart';

// https://api.chucknorris.io/jokes/random

class JokeproviderServices extends ChangeNotifier {
  Randomjokes? _jokes;
  Randomjokes? get jokes => _jokes;
  //----------------------
  Future<void> getData() async {
    var url = "https://api.chucknorris.io/jokes/random";
    //--------------
    try {
      final response = await http.get(Uri.parse(url));
      if (response.statusCode == 200) {
        final data = jsonDecode(response.body);
        _jokes = Randomjokes.fromJson(data);
        notifyListeners(); 
      } else {
        // ignore: avoid_print
        print("Something went wrong");
      }
    } catch (e) {
      // ignore: avoid_print
      print(e.toString());
    }
  }
}
