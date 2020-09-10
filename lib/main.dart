import 'package:flutter/material.dart';
import 'key.dart';
import 'package:http/http.dart' as http;
import 'package:async/async.dart';
import 'dart:convert';

const request = key;

void main() async {

  http.Response response = await http.get(request);
  print(json.decode(response.body)['results']['currencies']['USD']);

  runApp(MaterialApp(
    home: Container(),
  ));
}
