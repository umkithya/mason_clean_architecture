


import '../../../../core/resource/data_state.dart';
abstract class I{{name.pascalCase()}}Repository {

 Future<DataState<{{name.pascalCase()}}Entity>> get(
      {{{name.pascalCase()}}Param? params});


  
      Future<void> onGet{{name.pascalCase()}}() async {
    change(null, status: RxStatus.loading());
    String pushToken = dotenv.env['pushtoken'].toString();
    final result = await _shopDashboardUseCase.call(
        params: DashboardParam(deviceToken: pushToken));
    if (result.error != null) {
      change(null, status: RxStatus.error(result.error.toString()));
    } else if (result.data != null) {
      change(result.data, status: RxStatus.success());
    }
  }
}