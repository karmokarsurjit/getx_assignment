import 'package:get/get.dart';
import 'package:getx_assignment/modules/dashboard/dashboard_view.dart';
import 'package:getx_assignment/modules/login/login_binding.dart';
import 'package:getx_assignment/modules/login/login_view.dart';
import 'package:getx_assignment/modules/register/register_binding.dart';
import 'package:getx_assignment/routes/app_routes.dart';

import '../modules/dashboard/dashboard_binding.dart';
import '../modules/register/register_view.dart';

class AppPages {
  static const INITIAL = AppRoutes.LOGIN;

  static final routes = [
    GetPage(
      name: AppRoutes.LOGIN,
      page: () => const LoginPage(),
      bindings: [
        LoginBinding(),
      ],
    ),
    GetPage(
      name: AppRoutes.REGISTER,
      page: () => const RegisterPage(),
      bindings: [
        RegisterBinding(),
      ],
    ),
    GetPage(
      name: AppRoutes.DASHBOARD,
      page: () => const DashboardPage(),
      bindings: [
        DashboardBinding(),
      ],
    )
  ];
}
