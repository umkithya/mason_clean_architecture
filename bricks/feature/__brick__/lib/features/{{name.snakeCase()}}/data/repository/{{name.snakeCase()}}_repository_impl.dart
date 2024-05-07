import '../../../../core/resource/data_state.dart';
import '../../domain/repository/{{name.snakeCase()}}_repository.dart';
import '../data_sources/remote/{{name.snakeCase()}}_remote_data_source.dart';
import '../model/params/{{name.snakeCase()}}_param.dart';
import '../../domain/entity/{{name.snakeCase()}}_entity.dart';

class {{name.pascalCase()}}RepositoryImpl implements I{{name.pascalCase()}}Repository {
  final I{{name.pascalCase()}}RemoteDataSource _{{name.camelCase()}}RemoteDataSource;
  {{name.pascalCase()}}RepositoryImpl(this._{{name.camelCase()}}RemoteDataSource);

   @override
  Future<DataState<{{name.pascalCase()}}Entity>> get({{{name.pascalCase()}}Param? params})async {
      try {
        var result =
            await  _{{name.camelCase()}}RemoteDataSource.get(params: params);

        return DataSuccess(result);
      } catch (error) {
        return DataFailed(error);
      }
  }

  
}
