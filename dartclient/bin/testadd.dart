// ignore_for_file: omit_local_variable_types

import 'dart:convert' as convert;
//import 'dart:ui' as ui;
//import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'tutorial.dart';

void main(List<String> arguments) async {
  // This example uses the Google Books API to search for books about http.
  // https://developers.google.com/books/docs/overview
  var url =
      Uri.http('localhost:8081', '/api2/v1/tutorials'); //, {'q': '{http}'});
  print(url);

  Map data = {
    'id': 0,
    'title': 'test add new tutorial',
    'description': 'test add new tutorial',
    'published': 0,
    'updatedAt': DateTime.now().toIso8601String() // '2022-03-28 11:11:11'
  };

  final response = await http.post(
    url,
    headers: <String, String>{
      'Content-Type': 'application/json; charset=UTF-8',
    },
    body: convert.jsonEncode(data),
  );

  if (response.statusCode == 200) {
    print(convert.json.decode(response.body));
  } else {
    print('Failed to post tutorial');
  }
}
