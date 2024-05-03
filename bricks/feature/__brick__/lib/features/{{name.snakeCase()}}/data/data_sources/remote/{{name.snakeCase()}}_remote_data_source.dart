import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

import '../../../../../constraint/locale_string.dart';
import '../../../../../network/dio_client.dart';
import '../../../../../network/end_point.dart';

class {{name.pascalCase()}}RemoteDataSourceImpl extends I{{name.pascalCase()}}RemoteDataSource {
  @override
  Model parseModel(Response response) {
    return Model.fromJson(response.data);
  }

  @override
  List<Model> parseListModels(Response response) {
    final model = Model.fromJson(response.data);
    return model.data!;
  }

  
  @override
  Future<Model> get(
      {required Param params}) async {
    final Response response = await DioClient.instance.dio.get(
      Endpoints.get,,
    );
    
    return compute(parseModel, response);
  }
}

abstract class I{{name.pascalCase()}}RemoteDataSource {
  Model parseModel(Response response);
  List<Model> parseListModels(Response response);
  Future<Model> get{{name.pascalCase()}}(
      {required Param params});
}
