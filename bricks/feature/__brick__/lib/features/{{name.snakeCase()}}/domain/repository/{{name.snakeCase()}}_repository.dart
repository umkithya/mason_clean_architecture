


import '../../../../core/resource/data_state.dart';

import '../../data/model/params/{{name.snakeCase()}}_param.dart';
import '../entity/{{name.snakeCase()}}_entity.dart';
abstract class I{{name.pascalCase()}}Repository {

 Future<DataState<{{name.pascalCase()}}Entity>> get(
      {{{name.pascalCase()}}Param? params});
}