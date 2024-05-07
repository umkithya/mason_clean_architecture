import 'package:get/get.dart';
import '../../domain/entity/{{name.snakeCase()}}_entity.dart';
import '../../domain/usecases/get_{{name.snakeCase()}}.dart';
class {{name.pascalCase()}}Controller extends GetxController  with StateMixin<{{name.pascalCase()}}Entity>{

  final Get{{name.pascalCase()}}UseCase _{{name.camelCase()}}UseCase;

   {{name.pascalCase()}}Controller(this._{{name.camelCase()}}UseCase);
    Future<void> get{{name.pascalCase()}}() async {
    change(null, status: RxStatus.loading());

    final result =
        await _{{name.camelCase()}}UseCase.call();
    if (result.error != null) {
      change(null, status: RxStatus.error(result.toString()));
    } else if (result.data != null) {
      change(result.data, status: RxStatus.success());
    }
  }
}