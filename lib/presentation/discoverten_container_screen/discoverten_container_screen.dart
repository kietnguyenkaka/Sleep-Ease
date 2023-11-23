import 'package:dreamease/core/app_export.dart';
import 'package:dreamease/presentation/discoverten_page/discoverten_page.dart';
import 'package:dreamease/presentation/homefour_page/homefour_page.dart';
import 'package:dreamease/presentation/musicsix_page/musicsix_page.dart';
import 'package:dreamease/presentation/notificationeighteen_page/notificationeighteen_page.dart';
import 'package:dreamease/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class DiscovertenContainerScreen extends StatelessWidget {
  DiscovertenContainerScreen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            body: Navigator(
                key: navigatorKey,
                initialRoute: AppRoutes.discovertenPage,
                onGenerateRoute: (routeSetting) => PageRouteBuilder(
                    pageBuilder: (ctx, ani, ani1) =>
                        getCurrentPage(routeSetting.name!),
                    transitionDuration: Duration(seconds: 0))),
            bottomNavigationBar: Padding(
                padding: EdgeInsets.symmetric(horizontal: 23.h),
                child: _buildBottomBar(context))));
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(onChanged: (BottomBarEnum type) {});
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.discovertenPage:
        return DiscovertenPage();
      case AppRoutes.musicsixPage:
        return MusicsixPage();
      case AppRoutes.homefourPage:
        return HomefourPage();
      case AppRoutes.notificationeighteenPage:
        return NotificationeighteenPage();
      default:
        return DiscovertenPage();
    }
  }
}
