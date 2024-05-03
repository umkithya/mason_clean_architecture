import '../../../../core/resource/data_state.dart';
import '../../domain/repository/{{name.lowerCase()}}_repository.dart';
import '../data_sources/remote/{{name.lowerCase()}}_remote_data_source.dart';

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