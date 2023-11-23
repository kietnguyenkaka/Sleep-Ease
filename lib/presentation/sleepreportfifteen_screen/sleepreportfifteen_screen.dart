import 'package:dreamease/core/app_export.dart';
import 'package:dreamease/widgets/app_bar/appbar_leading_image.dart';
import 'package:dreamease/widgets/app_bar/appbar_title.dart';
import 'package:dreamease/widgets/app_bar/custom_app_bar.dart';
import 'package:dreamease/widgets/custom_rating_bar.dart';
import 'package:flutter/material.dart';

class SleepreportfifteenScreen extends StatelessWidget {
  const SleepreportfifteenScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                height: mediaQueryData.size.height,
                width: double.maxFinite,
                child: Stack(alignment: Alignment.center, children: [
                  CustomImageView(
                      imagePath: ImageConstant.imgObjects,
                      height: 810.v,
                      width: 375.h,
                      alignment: Alignment.center),
                  Align(
                      alignment: Alignment.center,
                      child: Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 7.h, vertical: 102.v),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadiusStyle.customBorderLR80),
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Spacer(),
                                _buildEighty(context),
                                SizedBox(height: 40.v),
                                Padding(
                                    padding: EdgeInsets.only(left: 27.h),
                                    child: Row(children: [
                                      Padding(
                                          padding: EdgeInsets.only(top: 2.v),
                                          child: Text("Nigth Sleep",
                                              style: CustomTextStyles
                                                  .titleMediumPoppinsDeeppurple800)),
                                      CustomImageView(
                                          imagePath:
                                              ImageConstant.imgMoonPurple2,
                                          height: 25.adaptSize,
                                          width: 25.adaptSize,
                                          margin: EdgeInsets.only(left: 5.h))
                                    ])),
                                SizedBox(height: 22.v),
                                Padding(
                                    padding: EdgeInsets.only(left: 38.h),
                                    child: Text("Awake",
                                        style: CustomTextStyles
                                            .labelMediumRobotoWhiteA700)),
                                SizedBox(height: 80.v),
                                Padding(
                                    padding: EdgeInsets.only(left: 17.h),
                                    child: Text("Deep Sleep",
                                        style: CustomTextStyles
                                            .labelMediumRobotoWhiteA700)),
                                SizedBox(height: 34.v),
                                _buildSleepTime(context),
                                SizedBox(height: 20.v),
                                _buildSleepDuration(context)
                              ]))),
                  Align(
                      alignment: Alignment.center,
                      child: Container(
                          padding: EdgeInsets.only(top: 62.v),
                          child:
                              Column(mainAxisSize: MainAxisSize.min, children: [
                            _buildAppBar(context),
                            SizedBox(height: 28.v),
                            Align(
                                alignment: Alignment.centerRight,
                                child: Padding(
                                    padding: EdgeInsets.only(right: 22.h),
                                    child: Text("Quality report of your sleep",
                                        style: CustomTextStyles
                                            .titleMediumPoppins))),
                            SizedBox(height: 28.v)
                          ]))),
                  CustomImageView(
                      imagePath: ImageConstant.imgGroup61,
                      height: 113.v,
                      width: 292.h,
                      alignment: Alignment.bottomRight,
                      margin: EdgeInsets.only(bottom: 187.v))
                ]))));
  }

  /// Section Widget
  Widget _buildEighty(BuildContext context) {
    return Align(
        alignment: Alignment.center,
        child: Padding(
            padding: EdgeInsets.only(left: 27.h, right: 33.h),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                      height: 132.v,
                      width: 120.h,
                      child:
                          Stack(alignment: Alignment.bottomCenter, children: [
                        Align(
                            alignment: Alignment.topLeft,
                            child: Padding(
                                padding: EdgeInsets.only(left: 1.h),
                                child: Text("80",
                                    style: theme.textTheme.displayLarge))),
                        Align(
                            alignment: Alignment.bottomCenter,
                            child: Padding(
                                padding: EdgeInsets.only(bottom: 17.v),
                                child: Text("Sleep Score",
                                    style: CustomTextStyles
                                        .titleLargePoppinsWhiteA700))),
                        Align(
                            alignment: Alignment.bottomLeft,
                            child: Text("19/11/2023",
                                style: CustomTextStyles.titleSmallPoppins))
                      ])),
                  Padding(
                      padding: EdgeInsets.only(top: 51.v, bottom: 61.v),
                      child: CustomRatingBar(initialRating: 0))
                ])));
  }

  /// Section Widget
  Widget _buildSleepTime(BuildContext context) {
    return Align(
        alignment: Alignment.centerRight,
        child: Padding(
            padding: EdgeInsets.only(left: 27.h, right: 7.h),
            child: Row(mainAxisAlignment: MainAxisAlignment.end, children: [
              Text("Sleep time", style: CustomTextStyles.titleSmallRoboto),
              Padding(
                  padding: EdgeInsets.only(left: 5.h),
                  child: Text("22 : 00",
                      style: CustomTextStyles.titleSmallRobotoDeeppurple800)),
              Spacer(),
              Text("Wake-up time", style: CustomTextStyles.titleSmallRoboto),
              Padding(
                  padding: EdgeInsets.only(left: 8.h),
                  child: Text("06 : 00",
                      style: CustomTextStyles.titleSmallRobotoDeeppurple800))
            ])));
  }

  /// Section Widget
  Widget _buildSleepDuration(BuildContext context) {
    return Align(
        alignment: Alignment.centerRight,
        child: Padding(
            padding: EdgeInsets.only(left: 27.h),
            child: Row(mainAxisAlignment: MainAxisAlignment.end, children: [
              Text("Sleep duration", style: CustomTextStyles.titleSmallRoboto),
              Padding(
                  padding: EdgeInsets.only(left: 5.h),
                  child: Text("7h30min",
                      style: CustomTextStyles.titleSmallRobotoDeeppurple800)),
              Spacer(),
              Text("Daydream", style: CustomTextStyles.titleSmallRoboto),
              Padding(
                  padding: EdgeInsets.only(left: 5.h),
                  child: Text("One",
                      style: CustomTextStyles.titleSmallRobotoDeeppurple800))
            ])));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        height: 124.v,
        leadingWidth: 43.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeft,
            margin: EdgeInsets.only(left: 19.h, top: 15.v, bottom: 84.v),
            onTap: () {
              onTapArrowLeft(context);
            }),
        actions: [
          AppbarTitle(
              text: "Sleep Report",
              margin: EdgeInsets.symmetric(horizontal: 21.h))
        ]);
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}
