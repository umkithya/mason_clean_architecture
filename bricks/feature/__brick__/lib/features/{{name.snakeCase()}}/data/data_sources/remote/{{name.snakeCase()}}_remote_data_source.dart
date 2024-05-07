import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import '../../../../../network/dio_client.dart';
import '../../../domain/entity/{{name.snakeCase()}}_entity.dart';
import '../../model/params/{{name.snakeCase()}}_param.dart';
class {{name.pascalCase()}}RemoteDataSourceImpl extends I{{name.pascalCase()}}RemoteDataSource {
 @override
  {{name.pascalCase()}}Entity parse{{name.pascalCase()}}Entity(Response response) {
    return {{name.pascalCase()}}Entity.fromJson(response.data);
  }

 
  
  @override
  Future<{{name.pascalCase()}}Entity> get(
      {{{name.pascalCase()}}Param? params}) async {
    final Response response = await DioClient.instance.dio.get(
      "/abc",
    );
    
    return compute(parse{{name.pascalCase()}}Entity, response);
  }
}

abstract class I{{name.pascalCase()}}RemoteDataSource {
 {{name.pascalCase()}}Entity parse{{name.pascalCase()}}Entity(Response response);
  Future<{{name.pascalCase()}}Entity> get(
      {{{name.pascalCase()}}Param? params});
}
