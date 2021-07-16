import 'dart:convert';

import 'package:eilajl/UniversitiesModel/Universities.dart';
import 'package:http/http.dart' as http;

class ProductController {
  //---------------------------------------------- ADDITIONAL METHOD WITH 2 PRIMITIVE TYPE PARAMETERS (6) -----------------------------------------------------
  static Future<List<un>> getAvailableProductWithMoreOrEqualQuantity(
      bool isAvailable, int quantity) async {
    String websiteURL =
        'http://192.168.1.33:90/api/products/GetAvailableProductWithMoreOrEqualQuantity/$isAvailable/$quantity';
    http.Response websiteResponse = await http.get(websiteURL);

    ///-----------------------------------------------------------
    print(websiteResponse.statusCode);
    print(websiteResponse.request);
    print(websiteResponse.contentLength);
    print(websiteResponse.headers);
    print(websiteResponse.body);

    ///-----------------------------------------------------------

    if (websiteResponse.statusCode == 200) {
      return getListun(websiteResponse.body);
    } else {
      print(websiteResponse.body);
      return null;
    }

    //---------------------------------------------- ADDITIONAL METHOD WITH 2 PRIMITIVE TYPE PARAMETERS (6) -----------------------------------------------------
  }

  static getListun(String x) {
    List<un> li = [];
    var y = json.decode(x);
    y.forEach((e) {
      li.add(un.fromJson(e));
    });
    return li;
  }
}
