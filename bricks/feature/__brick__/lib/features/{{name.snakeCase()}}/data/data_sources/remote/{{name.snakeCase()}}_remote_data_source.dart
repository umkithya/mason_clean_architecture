import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

import '../../../../../constraint/locale_string.dart';
import '../../../../../network/dio_client.dart';
import '../../../../../network/end_point.dart';

class {{name.pascalCase()}}RemoteDataSourceImpl extends I{{name.pascalCase()}}RemoteDataSource {
  @override
  {{name.pascalCase()}}EntityDomain parseModel(Response response) {
    return {{name.pascalCase()}}EntityDomain.fromJson(response.data);
  }

 
  
  @override
  Future<{{name.pascalCase()}}EntityDomain> get(
      {required Param params}) async {
    final Response response = await DioClient.instance.dio.get(
      Endpoints.get,,
    );
    
    return compute(parseModel, response);
  }
}

abstract class I{{name.pascalCase()}}RemoteDataSource {
  {{name.pascalCase()}}EntityDomain parseModel(Response response);
  Future<{{name.pascalCase()}}EntityDomain> get{{name.pascalCase()}}(
      {{{name.pascalCase()}}Param? params});
}
