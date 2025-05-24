import 'dart:convert' as convert;
//import 'dart:ui' as ui;
//import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'tutorial.dart';

void main(List<String> arguments) async {
  // This example uses the Google Books API to search for books about http.
  // https://developers.google.com/books/docs/overview
  var url = Uri.http(
      'localhost:8081', '/api2/v1/tutorials/102'); //, {'q': '{http}'});
  print(url);

  // Await the http get response, then decode the json-formatted response.
  var response = await http.get(url);
  if (response.statusCode == 200) {
    var jsonResponse =
        convert.jsonDecode(response.body) as Map<String, dynamic>;
    print(Tutorial.fromJson(jsonResponse));
    var itemCount = jsonResponse['totalItems'];
    print('Number of books about http: $itemCount.');
  } else {
    print('Request failed with status: ${response.statusCode}.');
  }

  url = Uri.http(
      'localhost:8081', '/api2/v1/tutorials/10/12'); //, {'q': '{http}'});
  print(url);

  response = await http.get(url);

  if (response.statusCode == 200) {
    List<dynamic> body = convert.jsonDecode(response.body);
    var tutorials =
        body.map((dynamic item) => Tutorial.fromJson(item)).toList();
    print(tutorials);
    print(tutorials.length);
  } else {
    throw "Failed to load tutorial list";
  }
}
