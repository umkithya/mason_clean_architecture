import 'package:get/get.dart';

class {{name.pascalCase()}}Controller extends GetxController {
  ///Fetch Model
  final {{name.camelCase()}}Model = {{name.pascalCase()}}Model().obs;
  final fetch{{name.pascalCase()}}Loading = false.obs;

  Future<{{name.pascalCase()}}Model> fetch{{name.pascalCase()}}() async {
    fetch{{name.pascalCase()}}Loading(true);
    await _apiBaseHelper
        .onNetworkRequesting(
            url: 'URL_HERE', methode: METHODE.get, isAuthorize: true)
        .then((response) {

    {{#debug}}
      debugPrint('Debugging Success fetch{{name.pascalCase()}} : $response');
    {{/debug}}
    ///
    {{name.camelCase()}}Model.value = {{name.pascalCase()}}Model.fromJson(response['DESTINATION_KEY']);

      fetch{{name.pascalCase()}}Loading(false);
    }).onError((ErrorModel error, stackTrace) {
      fetch{{name.pascalCase()}}Loading(false);

    {{#debug}}
      debugPrint('Debugging Error fetch{{name.pascalCase()}} : StatusCode(${error.statusCode})');
      debugPrint('Debugging Error fetch{{name.pascalCase()}} : Body : ${error.bodyString}');
    {{/debug}}
     
    });
    return {{name.pascalCase()}}Model;
  }
}

