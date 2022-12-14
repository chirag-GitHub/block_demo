import 'dart:async';
import 'dart:convert';

import 'package:block_demo/data/models/item.dart';
import 'package:block_demo/data/repositories/api/api_helper.dart';

abstract class Repository {
  Future<List<Item>> fetchPost();
  Future<Item> fetchPostDetail(int index);

  Future<void> deleteItem(String id);
}

class RepositoryImpl implements Repository {
  final ApiBaseHelper _helper = ApiBaseHelper();

  @override
  Future<void> deleteItem(String id) async{
    await Future.delayed(const Duration(seconds: 2));
  }

  @override
  Future<List<Item>> fetchPost() async {
    var response = await _helper.get("/posts");
    print('---- $response');
   return (response as List<dynamic>).map((data) => Item.fromJson(data)).toList();

  }

  @override
  Future<Item> fetchPostDetail(index) async{
    var response = await _helper.get("/posts/$index");
    print('---- $response');
    return Item.fromJson(response);
  }

}


