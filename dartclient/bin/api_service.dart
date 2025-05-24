import 'dart:convert';

import 'tutorial.dart';
import 'package:http/http.dart';

class ApiService {
  final String baseUrl = "http://localhost:8081";
  final String endpoint = "/api2/v1/tutorials";

  Future<List<Tutorial>> getTutorials() async {
    var url = Uri.http(baseUrl, endpoint);
    var res = await get(url);

    if (res.statusCode == 200) {
      List<dynamic> body = jsonDecode(res.body);
      var tutorials =
          body.map((dynamic item) => Tutorial.fromJson(item)).toList();
      return tutorials;
    } else {
      throw "Failed to load tutorial list";
    }
  }

  Future<List<Tutorial>> getTutorialsPaging(pcount, psize) async {
    var url = Uri.http(baseUrl, '$endpoint/$pcount/$psize');
    var res = await get(url);

    if (res.statusCode == 200) {
      List<dynamic> body = jsonDecode(res.body);
      var tutorials =
          body.map((dynamic item) => Tutorial.fromJson(item)).toList();
      return tutorials;
    } else {
      throw "Failed to load tutorial list";
    }
  }

  Future<Tutorial> getTutorialById(int id) async {
    var url = Uri.http(baseUrl, '$endpoint/$id');
    // var res = await get(url);

    final response = await get(url); // '$apiUrl/$id'

    if (response.statusCode == 200) {
      return Tutorial.fromJson(json.decode(response.body));
    } else {
      throw Exception('Failed to load a tutorial');
    }
  }

  Future<Tutorial> createTutorial(Tutorial tutorial) async {
    Map data = {
      'title': tutorial.title,
      'description': tutorial.description,
      'published': tutorial.published,
      'updatedAt': tutorial.updatedAt
    };

    var url = Uri.http(baseUrl, endpoint);

    final response = await post(
      url,
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(data),
    );
    if (response.statusCode == 200) {
      return Tutorial.fromJson(json.decode(response.body));
    } else {
      throw Exception('Failed to post tutorial');
    }
  }

  Future<Tutorial> updateTutorial(int id, Tutorial tutorial) async {
    Map data = {
      'title': tutorial.title,
      'description': tutorial.description,
      'published': tutorial.published,
      'updatedAt': tutorial.updatedAt
    };

    var url = Uri.http(baseUrl, '$endpoint/$id');

    final response = await put(
      url,
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(data),
    );
    if (response.statusCode == 200) {
      return Tutorial.fromJson(json.decode(response.body));
    } else {
      throw Exception('Failed to update a tutorial');
    }
  }

  Future<void> deleteTutorial(int id) async {
    var url = Uri.http(baseUrl, '$endpoint/$id');
    var res = await delete(url);

    if (res.statusCode == 200) {
      print("Tutorial deleted");
    } else {
      throw "Failed to delete a tutorial.";
    }
  }
}
