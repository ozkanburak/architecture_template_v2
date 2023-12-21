import 'package:architecture_template_v2/feature/home/home_detail_view.dart';
import 'package:architecture_template_v2/feature/home/view/home_view.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

part 'app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: AppRouter._replaceRouteName)

/// The line `final class AppRouter extends _` is defining a class named `AppRouter` that
/// extends the generated class `_`. The generated class `_AppRouter` is created by the
/// `auto_route` package and contains the necessary code for handling routing in the application. By
/// extending this generated class, the `AppRouter` class inherits all the routing functionality
/// provided by `_`.
final class AppRouter extends _$AppRouter {
  static const _replaceRouteName = 'View,Route';
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: HomeRoute.page, initial: true),
        AutoRoute(page: HomeDetailRoute.page),
      ];
}
