


import 'dart:convert';

import 'package:http/http.dart' as http;

void main() async{
  var url = Uri.https('jsonplaceholder.typicode.com', 'users/1');
  final response = await http.get(url);
  print(jsonDecode(response.body));


    http.get(url).then((val) {
      print(jsonDecode(response.body));
    }).catchError((err){
      print(err);
    });




}


