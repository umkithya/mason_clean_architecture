import 'package:get/get.dart';
import 'package:injectable/injectable.dart';

class {{name.pascalCase()}}Controller extends GetxController {
  @factoryMethod
  static init() => Get.put({{name.pascalCase()}}Controller());
}