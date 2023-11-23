import 'bloc/sleepreportfifteen_bloc.dart';
import 'models/sleepreportfifteen_model.dart';
import 'package:dreamease/core/app_export.dart';
import 'package:dreamease/widgets/app_bar/appbar_leading_image.dart';
import 'package:dreamease/widgets/app_bar/appbar_title.dart';
import 'package:dreamease/widgets/app_bar/custom_app_bar.dart';
import 'package:dreamease/widgets/custom_rating_bar.dart';
import 'package:flutter/material.dart';

class SleepreportfifteenScreen extends StatelessWidget {
  const SleepreportfifteenScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<SleepreportfifteenBloc>(
        create: (context) => SleepreportfifteenBloc(SleepreportfifteenState(
            sleepreportfifteenModelObj: SleepreportfifteenModel()))
          ..add(SleepreportfifteenInitialEvent()),
        child: SleepreportfifteenScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return BlocBuilder<SleepreportfifteenBloc, SleepreportfifteenState>(
        builder: (context, state) {
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
                                borderRadius:
                                    BorderRadiusStyle.customBorderLR80),
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
                                            child: Text("lbl_nigth_sleep".tr,
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
                                      child: Text("lbl_awake".tr,
                                          style: CustomTextStyles
                                              .labelMediumRobotoWhiteA700)),
                                  SizedBox(height: 80.v),
                                  Padding(
                                      padding: EdgeInsets.only(left: 17.h),
                                      child: Text("lbl_deep_sleep".tr,
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
                            child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  _buildAppBar(context),
                                  SizedBox(height: 28.v),
                                  Align(
                                      alignment: Alignment.centerRight,
                                      child: Padding(
                                          padding: EdgeInsets.only(right: 22.h),
                                          child: Text(
                                              "msg_quality_report_of".tr,
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
    });
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
                                child: Text("lbl_802".tr,
                                    style: theme.textTheme.displayLarge))),
                        Align(
                            alignment: Alignment.bottomCenter,
                            child: Padding(
                                padding: EdgeInsets.only(bottom: 17.v),
                                child: Text("lbl_sleep_score".tr,
                                    style: CustomTextStyles
                                        .titleLargePoppinsWhiteA700))),
                        Align(
                            alignment: Alignment.bottomLeft,
                            child: Text("lbl_19_11_2023".tr,
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
              Text("lbl_sleep_time".tr,
                  style: CustomTextStyles.titleSmallRoboto),
              Padding(
                  padding: EdgeInsets.only(left: 5.h),
                  child: Text("lbl_22_00".tr,
                      style: CustomTextStyles.titleSmallRobotoDeeppurple800)),
              Spacer(),
              Text("lbl_wake_up_time".tr,
                  style: CustomTextStyles.titleSmallRoboto),
              Padding(
                  padding: EdgeInsets.only(left: 8.h),
                  child: Text("lbl_06_00".tr,
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
              Text("lbl_sleep_duration".tr,
                  style: CustomTextStyles.titleSmallRoboto),
              Padding(
                  padding: EdgeInsets.only(left: 5.h),
                  child: Text("lbl_7h30min".tr,
                      style: CustomTextStyles.titleSmallRobotoDeeppurple800)),
              Spacer(),
              Text("lbl_daydream".tr, style: CustomTextStyles.titleSmallRoboto),
              Padding(
                  padding: EdgeInsets.only(left: 5.h),
                  child: Text("lbl_one".tr,
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
              text: "lbl_sleep_report".tr,
              margin: EdgeInsets.symmetric(horizontal: 21.h))
        ]);
  }

  /// Navigates to the previous screen.
  onTapArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }
}
