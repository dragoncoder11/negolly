import 'package:dio/dio.dart';

class searchService{
  final Dio dio;

  searchService({required this.dio});
  Future getWorkspaces()async{
    var responce=await dio.get('https://desk-share-api.onrender.com/workspaces');
    var data=responce.data;
    return data;
  }
}