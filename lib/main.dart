import 'package:flutter/material.dart';
import 'key.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';

const request = key;

void main() async {
  
  print(await getData());

  runApp(MaterialApp(
    home: Container(),
  ));
}

Future<Map> getData() async {
  http.Response response = await http.get(request);
  return json.decode(response.body);

}