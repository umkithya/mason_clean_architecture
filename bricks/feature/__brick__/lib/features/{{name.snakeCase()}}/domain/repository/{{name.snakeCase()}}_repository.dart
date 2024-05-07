


import '../../../../core/resource/data_state.dart';
abstract class I{{name.pascalCase()}}Repository {

 Future<DataState<{{name.pascalCase()}}Entity>> get(
      {{{name.pascalCase()}}Param? params});
}