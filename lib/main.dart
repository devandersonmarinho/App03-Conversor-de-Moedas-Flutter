import 'package:flutter/material.dart';
import 'key.dart';
import 'package:http/http.dart' as http;
import 'package:async/async.dart';


const request = key;

void main() async {

  http.Response response = await http.get(request);
  print(response.body);

  runApp(MaterialApp(
    home: Container(),
  ));
}
