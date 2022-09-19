import 'package:get/get.dart';
import 'package:getx_assignment/modules/login/login_binding.dart';
import 'package:getx_assignment/modules/login/login_view.dart';
import 'package:getx_assignment/modules/register/register_binding.dart';
import 'package:getx_assignment/routes/app_routes.dart';

import '../modules/register/register_view.dart';

class AppPages {
  static final INITIAL = AppRoutes.LOGIN;

  static final routes = [
    GetPage(
      name: AppRoutes.LOGIN,
      page: () => LoginPage(),
      bindings: [
        LoginBinding(),
      ],
    ),
    GetPage(
      name: AppRoutes.REGISTER,
      page: () => RegisterPage(),
      bindings: [
        RegisterBinding(),
      ],
    )
  ];
}
