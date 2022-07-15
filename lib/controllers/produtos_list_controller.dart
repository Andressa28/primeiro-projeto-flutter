import 'dart:convert';
// import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:http/http.dart' as http;
import 'package:projeto_maquiagem/models/produtos_list.dart';


class ProdutosListApi {

  static Future<List<ProdutosList>> getProdutosList() async {
    var uri = Uri.https('sephora.p.rapidapi.com', '/products/list',
        {"categoryId": 'cat150006', "pageSize": '60', "currentPage": '1'});

      final response = await http.get(uri, headers: {
      "X-RapidAPI-Key": "b96159f242msh4dda2d06c28141ap1195dcjsndd8d42f798e0",
      "X-RapidAPI-Host": "sephora.p.rapidapi.com",
      "useQueryString": 'true'
    });

    Map data = jsonDecode(response.body);
    List temp = [];

    for (var i in data['products']) {
      temp.add(i);
    }

    return ProdutosList.produtosFromSnapshot(temp);
  }
}




// class ProdutosListController {
//   ValueNotifier<List<ProdutosListController>?> produtos = ValueNotifier<List<ProdutosListController>?>([]);

//   callAPI() async {
//     var client = http.Client();
//     var response = await client.get(
//         Uri.parse('https://makeup-api.herokuapp.com/api/v1/products.json'));
//     var decodedResponse = jsonDecode(response.body) as List;
//     // print(decodedResponse);
//     return produtos.value = decodedResponse.map((e) => ProdutosListController.fromJson(e)).cast<ProdutosListController>().toList();
//   }
  
//   static fromJson(e) {}
  
// }
