import 'package:http/http.dart' as http;
import 'dart:convert';

import '../models/model.dart';

const url = "http://dummy.restapiexample.com/";

class GetEmployee {
  String getPath() {
    return url + "api/v1/employees";
  }

  Future getData() async {
    final res = await http.get(getPath());

    if (res.statusCode == 200) {
      // var data = ResponseData.fromJson(jsonDecode(res.body));
      var data = jsonDecode(res.body);
      return data['data'];
    } else {
      throw Exception('Failed to fetch data');
    }
  }
}