 

import 'package:api_handling/data/Models/usermodel.dart';
import 'package:api_handling/data/repositories/api/api.dart';
import 'package:dio/dio.dart';

class PostRepository {
  Api api = Api();

  Future<List<UserModel>> fetchPost() async {
     try{
     Response response = await api.sendRequest.get("/posts");
    List<dynamic> postMaps = response.data;
    return postMaps.map((postMap) => UserModel.fromJson(postMap)).toList();
     }
     catch(ex) {
       throw ex;
     }
  }


}