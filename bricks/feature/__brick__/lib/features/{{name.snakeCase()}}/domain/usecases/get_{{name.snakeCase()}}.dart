
import '../../../../core/resource/base_use_case.dart';
import '../../../../core/resource/data_state.dart';
import '../repository/{{name.lowerCase()}}_repository.dart';

class Get{{name.pascalCase()}}UseCase
    implements
        BaseUseCase<DataState<{{name.pascalCase()}}Entity>,
            {{name.pascalCase()}}Param?> {
  final I{{name.pascalCase()}}Repository _{{name.camelCase()}}Repository;
  Get{{name.pascalCase()}}UseCase(this._{{name.camelCase()}}Repository);

  @override
  Future<DataState<{{name.pascalCase()}}Entity>> call(
      {{{name.pascalCase()}}Param? params}) {
    return _{{name.camelCase()}}Repository.get(params: params!);
  }
}
