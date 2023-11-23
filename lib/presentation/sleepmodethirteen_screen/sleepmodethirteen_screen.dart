import 'package:dreamease/core/app_export.dart';
import 'package:flutter/material.dart';

class SleepmodethirteenScreen extends StatelessWidget {
  const SleepmodethirteenScreen({Key? key}) : super(key: key);

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
                        image: AssetImage(ImageConstant.imgSleepmodethirteen),
                        fit: BoxFit.cover)),
                child: Container(
                    width: double.maxFinite,
                    padding: EdgeInsets.only(top: 61.v),
                    child: Column(mainAxisSize: MainAxisSize.min, children: [
                      SizedBox(
                          height: 88.v,
                          width: 154.h,
                          child: Stack(
                              alignment: Alignment.bottomCenter,
                              children: [
                                Align(
                                    alignment: Alignment.topLeft,
                                    child: Padding(
                                        padding: EdgeInsets.only(left: 29.h),
                                        child: Text("Good Night",
                                            style: CustomTextStyles
                                                .bodyLargePoppinsWhiteA700))),
                                Align(
                                    alignment: Alignment.bottomCenter,
                                    child: Text("20 : 30",
                                        style: theme.textTheme.displayMedium))
                              ])),
                      SizedBox(height: 23.v),
                      SizedBox(
                          height: 216.v,
                          width: 217.h,
                          child: Stack(alignment: Alignment.center, children: [
                            Align(
                                alignment: Alignment.center,
                                child: SizedBox(
                                    height: 216.adaptSize,
                                    width: 216.adaptSize,
                                    child: CircularProgressIndicator(
                                        value: 0.5,
                                        backgroundColor: appTheme.whiteA700,
                                        color: appTheme.deepPurple800))),
                            CustomImageView(
                                imagePath: ImageConstant.img360010012,
                                height: 180.adaptSize,
                                width: 180.adaptSize,
                                alignment: Alignment.center),
                            Align(
                                alignment: Alignment.centerRight,
                                child: Container(
                                    height: 7.adaptSize,
                                    width: 7.adaptSize,
                                    decoration: BoxDecoration(
                                        color: appTheme.whiteA700,
                                        borderRadius:
                                            BorderRadius.circular(3.h),
                                        border: Border.all(
                                            color: appTheme.deepPurple800,
                                            width: 5.h,
                                            strokeAlign: strokeAlignOutside))))
                          ])),
                      SizedBox(height: 23.v),
                      Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 26.h, vertical: 6.v),
                          decoration: AppDecoration.fillIndigoA.copyWith(
                              borderRadius: BorderRadiusStyle.circleBorder20),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                CustomImageView(
                                    imagePath: ImageConstant.imgAlarmWhite1,
                                    height: 20.adaptSize,
                                    width: 20.adaptSize,
                                    margin:
                                        EdgeInsets.only(top: 1.v, bottom: 5.v)),
                                Padding(
                                    padding: EdgeInsets.only(
                                        left: 10.h, bottom: 2.v),
                                    child: Text("04:00",
                                        style: CustomTextStyles
                                            .titleLargeRobotoWhiteA700_1))
                              ])),
                      SizedBox(height: 70.v),
                      CustomImageView(
                          imagePath: ImageConstant.imgSwipeUp,
                          height: 127.v,
                          width: 40.h,
                          onTap: () {
                            onTapImgSwipeUp(context);
                          }),
                      SizedBox(height: 16.v),
                      Text("Swipe up to awake",
                          style: CustomTextStyles.titleMediumRoboto),
                      SizedBox(height: 5.v)
                    ])))));
  }

  /// Navigates to the suggestfourteenScreen when the action is triggered.
  onTapImgSwipeUp(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.suggestfourteenScreen);
  }
}
