

import 'package:get/get.dart';
import '../../data/data_sources/remote/{{name.snakeCase()}}_remote_data_source.dart';
import '../../data/repository/{{name.snakeCase()}}_repository_impl.dart';
import '../../domain/repository/{{name.snakeCase()}}_repository.dart';
import '../../domain/usecases/get_{{name.snakeCase()}}.dart';
import '../controller/{{name.snakeCase()}}_controller.dart';


class {{name.pascalCase()}}Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<I{{name.pascalCase()}}RemoteDataSource>(() => {{name.pascalCase()}}RemoteDataSourceImpl());
    Get.lazyPut<I{{name.pascalCase()}}Repository>(() => {{name.pascalCase()}}RepositoryImpl(Get.find()));
    Get.lazyPut<Get{{name.pascalCase()}}UseCase>(() => Get{{name.pascalCase()}}UseCase(Get.find()));
    Get.lazyPut<{{name.pascalCase()}}Controller>(() => {{name.pascalCase()}}Controller(Get.find()));
  }
}
