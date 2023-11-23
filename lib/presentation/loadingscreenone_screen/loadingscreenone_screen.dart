import 'package:dreamease/core/app_export.dart';
import 'package:dreamease/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

class LoadingscreenoneScreen extends StatelessWidget {
  const LoadingscreenoneScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            extendBody: true,
            extendBodyBehindAppBar: true,
            body: Container(
                width: mediaQueryData.size.width,
                height: mediaQueryData.size.height,
                decoration: BoxDecoration(
                    color: appTheme.black900,
                    image: DecorationImage(
                        image: AssetImage(ImageConstant.imgLoadingscreenone),
                        fit: BoxFit.cover)),
                child: SizedBox(
                    width: double.maxFinite,
                    child: Column(mainAxisSize: MainAxisSize.min, children: [
                      SizedBox(height: 78.v),
                      SizedBox(
                          height: 734.v,
                          width: double.maxFinite,
                          child: Stack(
                              alignment: Alignment.bottomCenter,
                              children: [
                                Align(
                                    alignment: Alignment.bottomCenter,
                                    child: Padding(
                                        padding: EdgeInsets.only(bottom: 285.v),
                                        child: RichText(
                                            text: TextSpan(children: [
                                              TextSpan(
                                                  text: "Your ",
                                                  style: CustomTextStyles
                                                      .titleLargeRubikBlack90002),
                                              TextSpan(
                                                  text: "sleep",
                                                  style: CustomTextStyles
                                                      .titleLargeRubikPurple90001),
                                              TextSpan(
                                                  text:
                                                      "    makes you stronger",
                                                  style: CustomTextStyles
                                                      .titleLargeRubikBlack90002)
                                            ]),
                                            textAlign: TextAlign.left))),
                                Align(
                                    alignment: Alignment.bottomCenter,
                                    child: Container(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 28.h, vertical: 79.v),
                                        decoration: AppDecoration.fillIndigo
                                            .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .customBorderTL24),
                                        child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.end,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              SizedBox(height: 19.v),
                                              Padding(
                                                  padding: EdgeInsets.only(
                                                      right: 16.h),
                                                  child: RichText(
                                                      text: TextSpan(children: [
                                                        TextSpan(
                                                            text:
                                                                "Cùng cải thiện",
                                                            style: CustomTextStyles
                                                                .titleLargeBeVietnamProBlack90002),
                                                        TextSpan(text: " "),
                                                        TextSpan(
                                                            text: "Giấc Ngủ",
                                                            style: CustomTextStyles
                                                                .titleLargeBeVietnamProPurple90001),
                                                        TextSpan(
                                                            text: "!",
                                                            style: CustomTextStyles
                                                                .titleLargeRubikPurple90001),
                                                        TextSpan(text: "    ")
                                                      ]),
                                                      textAlign:
                                                          TextAlign.left)),
                                              SizedBox(height: 48.v),
                                              SizedBox(
                                                  width: 52.h,
                                                  child: Text(
                                                      "Hãy ngủ thật ngon giấc để lấy lại năng lượng, sức khoẻ cùng với một tinh thần sảng khoái!",
                                                      style: CustomTextStyles
                                                          .bodyLargeRubikBlack90002)),
                                              SizedBox(height: 42.v),
                                              CustomElevatedButton(
                                                  width: 180.h,
                                                  text: "Let’s Get Started!",
                                                  rightIcon: Container(
                                                      margin: EdgeInsets.only(
                                                          left: 7.h),
                                                      child: CustomImageView(
                                                          imagePath:
                                                              ImageConstant
                                                                  .imgFilter,
                                                          height: 18.adaptSize,
                                                          width: 18.adaptSize)),
                                                  onPressed: () {
                                                    navigateToinputname(
                                                        context);
                                                  },
                                                  alignment: Alignment.center)
                                            ]))),
                                CustomImageView(
                                    imagePath: ImageConstant.imgImage6,
                                    height: 401.v,
                                    width: 374.h,
                                    alignment: Alignment.topCenter),
                                CustomImageView(
                                    imagePath: ImageConstant.imgImage8,
                                    height: 50.v,
                                    width: 44.h,
                                    alignment: Alignment.bottomLeft,
                                    margin: EdgeInsets.only(
                                        left: 39.h, bottom: 290.v),
                                    onTap: () {
                                      aasasa(context);
                                    })
                              ]))
                    ])))));
  }

  /// Navigates to the inputnametwoScreen when the action is triggered.
  navigateToinputname(BuildContext context) {
    Navigator.popAndPushNamed(context, AppRoutes.inputnametwoScreen);
  }

  /// Navigates to the inputnametwoScreen when the action is triggered.
  aasasa(BuildContext context) {
    Navigator.pushNamedAndRemoveUntil(
        context, AppRoutes.inputnametwoScreen, (route) => false);
  }
}
