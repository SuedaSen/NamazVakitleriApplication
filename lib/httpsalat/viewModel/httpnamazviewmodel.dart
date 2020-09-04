import 'package:flutter/material.dart';
import 'dart:convert';
import 'dart:io';
import 'package:httpnamaz/httpsalat/model/httpnamazmodel.dart';
import '../view/httpnamaz.dart';
import 'package:http/http.dart' as http;
import 'package:retrofit/retrofit.dart';

abstract class HttpNamazViewModel extends State<HttpNamaz> {
  // Add your state and logic here
  final baseUrl = "https://ezanvakti.herokuapp.com/vakitler?ilce=9534";

  List<HttpNamazModel> httpnam = [];

  @override
  void initState() {
    super.initState();
    callItems();
  }

  Future<void> callItems() async {
    await getHttpNamaz();
  }

  Future<void> getHttpNamaz() async {
    final response = await http.get("$baseUrl");
    switch (response.statusCode) {
      case HttpStatus.ok:
        final jsonBody = jsonDecode(response.body);
        if (jsonBody is List)
          httpnam = jsonBody.map((e) => HttpNamazModel.fromJson(e)).toList();
        break;
      default:
    }
  }
}
