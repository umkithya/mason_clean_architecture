import '../model/params/sync_message_param.dart';

class {{name.pascalCase()}}RepositoryImpl implements I{{name.pascalCase()}}Repository {
  final I{{name.pascalCase()}}RemoteDataSource _{{name.camelCase()}}RemoteDataSource;
  {{name.pascalCase()}}RepositoryImpl(this._{{name.camelCase()}}RemoteDataSource);

  @override
  Future<DataState<Entity>> get(
      {required Param params}) async {
    try {
      var result =
          await _{{name.camelCase()}}RemoteDataSource.get(params: params);
     
      return DataSuccess(result);
    } catch (error) {
      return DataFailed(error);
    }
  }

  
}
