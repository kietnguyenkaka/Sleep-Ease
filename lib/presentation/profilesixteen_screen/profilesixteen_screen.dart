import 'package:dreamease/core/app_export.dart';
import 'package:dreamease/widgets/custom_bottom_bar.dart';
import 'package:dreamease/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class ProfilesixteenScreen extends StatelessWidget {
  ProfilesixteenScreen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(vertical: 8.v),
                child: Column(children: [
                  SizedBox(height: 20.v),
                  Expanded(
                      child: SingleChildScrollView(
                          child: Column(children: [
                    CustomImageView(
                        imagePath: ImageConstant.imgAvatars3dAvatar24,
                        height: 174.adaptSize,
                        width: 174.adaptSize),
                    SizedBox(height: 17.v),
                    Text("Thuan", style: theme.textTheme.headlineSmall),
                    SizedBox(height: 77.v),
                    _buildNotificationStack(context),
                    SizedBox(height: 123.v),
                    Container(
                        height: 92.v,
                        width: double.maxFinite,
                        decoration:
                            BoxDecoration(color: appTheme.blueGray90003))
                  ])))
                ])),
            bottomNavigationBar: Padding(
                padding: EdgeInsets.symmetric(horizontal: 23.h),
                child: _buildBottomBar(context))));
  }

  /// Section Widget
  Widget _buildNotificationStack(BuildContext context) {
    return SizedBox(
        height: 297.v,
        width: 336.h,
        child: Stack(alignment: Alignment.topLeft, children: [
          Align(
              alignment: Alignment.center,
              child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    GestureDetector(
                        onTap: () {
                          onTapTxtDanhHiUCATI(context);
                        },
                        child: Padding(
                            padding: EdgeInsets.only(left: 42.h),
                            child: Text("Danh hiệu của tôi",
                                style: theme.textTheme.bodyMedium))),
                    SizedBox(height: 46.v),
                    CustomElevatedButton(
                        height: 30.v,
                        width: 114.h,
                        text: "Thông báo",
                        leftIcon: Container(
                            margin: EdgeInsets.only(right: 10.h),
                            child: CustomImageView(
                                imagePath: ImageConstant.imgBell24Outline,
                                height: 30.v,
                                width: 31.h)),
                        buttonStyle: CustomButtonStyles.none,
                        buttonTextStyle: theme.textTheme.bodyMedium!),
                    SizedBox(height: 43.v),
                    Padding(
                        padding: EdgeInsets.only(left: 3.h),
                        child: Row(children: [
                          CustomImageView(
                              imagePath: ImageConstant.imgEdit,
                              height: 25.v,
                              width: 26.h,
                              onTap: () {
                                onTapImgEdit(context);
                              }),
                          GestureDetector(
                              onTap: () {
                                onTapTxtViTFeedbacksCho(context);
                              },
                              child: Padding(
                                  padding:
                                      EdgeInsets.only(left: 13.h, bottom: 3.v),
                                  child: Text(
                                      "Viết feedbacks cho nhà phát triển ứng dụng",
                                      style: theme.textTheme.bodyMedium)))
                        ])),
                    SizedBox(height: 44.v),
                    Padding(
                        padding: EdgeInsets.only(left: 3.h),
                        child: Row(children: [
                          CustomImageView(
                              imagePath: ImageConstant.imgLocation,
                              height: 22.v,
                              width: 26.h,
                              margin: EdgeInsets.only(top: 1.v),
                              onTap: () {
                                onTapImgLocation(context);
                              }),
                          GestureDetector(
                              onTap: () {
                                onTapTxtTrGiPYT(context);
                              },
                              child: Padding(
                                  padding:
                                      EdgeInsets.only(left: 12.h, bottom: 3.v),
                                  child: Text("Trợ giúp y tế",
                                      style: theme.textTheme.bodyMedium)))
                        ])),
                    SizedBox(height: 39.v),
                    GestureDetector(
                        onTap: () {
                          onTapTxtXoDLiUCA(context);
                        },
                        child: Padding(
                            padding: EdgeInsets.only(left: 42.h),
                            child: Text("Xoá dữ liệu của tôi",
                                style: theme.textTheme.bodyMedium)))
                  ])),
          CustomImageView(
              imagePath: ImageConstant.imgSearch,
              height: 24.v,
              width: 23.h,
              alignment: Alignment.topLeft,
              onTap: () {
                onTapImgSearch(context);
              }),
          CustomImageView(
              imagePath: ImageConstant.imgClose,
              height: 25.v,
              width: 26.h,
              alignment: Alignment.bottomLeft,
              margin: EdgeInsets.only(left: 4.h),
              onTap: () {
                onTapImgClose(context);
              })
        ]));
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(onChanged: (BottomBarEnum type) {});
  }

  /// Navigates to the archivementsseventeenScreen when the action is triggered.
  onTapTxtDanhHiUCATI(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.archivementsseventeenScreen);
  }

  /// Navigates to the feedbacksnineteenScreen when the action is triggered.
  onTapImgEdit(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.feedbacksnineteenScreen);
  }

  /// Navigates to the feedbacksnineteenScreen when the action is triggered.
  onTapTxtViTFeedbacksCho(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.feedbacksnineteenScreen);
  }

  /// Navigates to the helptwentyScreen when the action is triggered.
  onTapImgLocation(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.helptwentyScreen);
  }

  /// Navigates to the helptwentyScreen when the action is triggered.
  onTapTxtTrGiPYT(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.helptwentyScreen);
  }

  /// Navigates to the inputnametwoScreen when the action is triggered.
  onTapTxtXoDLiUCA(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.inputnametwoScreen);
  }

  /// Navigates to the archivementsseventeenScreen when the action is triggered.
  onTapImgSearch(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.archivementsseventeenScreen);
  }

  /// Navigates to the inputnametwoScreen when the action is triggered.
  onTapImgClose(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.inputnametwoScreen);
  }
}
