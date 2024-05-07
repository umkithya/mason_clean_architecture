

import 'package:get/get.dart';
import '../controller/{{name.snakeCase()}}_controller.dart';


class {{name.pascalCase()}}Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<I{{name.pascalCase()}}RemoteDataSource>(() => {{name.pascalCase()}}RemoteDataSourceImpl);
    Get.lazyPut<I{{name.pascalCase()}}Repository>(() => {{name.pascalCase()}}RepositoryImpl(Get.find()));
    Get.lazyPut<Get{{name.pascalCase()}}UseCase>(() => Get{{name.pascalCase()}}UseCase(Get.find()));
    Get.lazyPut<{{name.pascalCase()}}Controller>(() => {{name.pascalCase()}}Controller(Get.find()));
  }
}
