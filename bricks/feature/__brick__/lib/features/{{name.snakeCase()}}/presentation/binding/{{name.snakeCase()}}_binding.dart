

import 'package:get/get.dart';
import '../controller/{{name.lowerCase()}}_controller.dart';


class {{name.pascalCase()}}Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<I{{name.pascalCase()}}DataSource>(() => {{name.pascalCase()}}DataSourceImpl());
    Get.lazyPut<I{{name.pascalCase()}}Repository>(() => {{name.pascalCase()}}RepositoyImpl(Get.find()));
    Get.lazyPut<Get{{name.pascalCase()}}tUseCase>(() => Get{{name.pascalCase()}}tUseCase(Get.find()));
    Get.lazyPut<{{name.pascalCase()}}Controller>(() => {{name.pascalCase()}}Controller(Get.find()));
  }
}
