import 'package:dreamease/core/app_export.dart';
import 'package:dreamease/widgets/app_bar/appbar_leading_image.dart';
import 'package:dreamease/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:dreamease/widgets/app_bar/custom_app_bar.dart';
import 'package:dreamease/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

class MusicplaylistsevenScreen extends StatelessWidget {
  const MusicplaylistsevenScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: SizedBox(
                height: 724.v,
                width: double.maxFinite,
                child: Stack(alignment: Alignment.bottomCenter, children: [
                  Align(
                      alignment: Alignment.topCenter,
                      child: Padding(
                          padding: EdgeInsets.only(
                              left: 11.h, top: 22.v, right: 16.h),
                          child:
                              Column(mainAxisSize: MainAxisSize.min, children: [
                            _buildFiftySix(context),
                            SizedBox(height: 28.v),
                            Divider(color: appTheme.gray900),
                            SizedBox(height: 33.v),
                            Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Expanded(
                                      child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                        Text("Misery Sequence",
                                            style: theme.textTheme.bodyLarge),
                                        SizedBox(height: 31.v),
                                        Text("Slither",
                                            style: theme.textTheme.bodyLarge),
                                        SizedBox(height: 34.v),
                                        Text("Twisting The Knife",
                                            style: theme.textTheme.bodyLarge),
                                        SizedBox(height: 33.v),
                                        Text("Deny The Truth ",
                                            style: theme.textTheme.bodyLarge),
                                        SizedBox(height: 32.v),
                                        Text("Unsettling",
                                            style: theme.textTheme.bodyLarge),
                                        SizedBox(height: 31.v),
                                        Text("Sense Of Doubt",
                                            style: theme.textTheme.bodyLarge),
                                        SizedBox(height: 34.v),
                                        Text("End Of Me (Feat. Brendan Murphy)",
                                            style: theme.textTheme.bodyLarge),
                                        SizedBox(height: 32.v),
                                        Text(
                                            "Breathless (Feat. Toni Coe-Brooker)",
                                            style: theme.textTheme.bodyLarge),
                                        SizedBox(height: 31.v),
                                        Text("The Bitter End",
                                            style: theme.textTheme.bodyLarge)
                                      ])),
                                  Container(
                                      height: 8.adaptSize,
                                      width: 8.adaptSize,
                                      margin: EdgeInsets.only(
                                          left: 65.h, top: 4.v, bottom: 430.v),
                                      decoration: BoxDecoration(
                                          color: appTheme.deepPurple300,
                                          borderRadius:
                                              BorderRadius.circular(4.h)))
                                ])
                          ]))),
                  _buildUITabBarPlayer(context)
                ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        height: 88.v,
        leadingWidth: 40.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeft,
            margin: EdgeInsets.only(left: 16.h, top: 54.v, bottom: 10.v),
            onTap: () {
              onTapArrowLeft(context);
            }),
        centerTitle: true,
        title: AppbarSubtitleOne(
            text: "Chillout and Ambient",
            margin: EdgeInsets.only(top: 52.v, bottom: 10.v)),
        styleType: Style.bgFill);
  }

  /// Section Widget
  Widget _buildFiftySix(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      CustomImageView(
          imagePath: ImageConstant.imgPic,
          height: 120.adaptSize,
          width: 120.adaptSize,
          radius: BorderRadius.circular(16.h)),
      Padding(
          padding: EdgeInsets.only(top: 2.v, bottom: 4.v),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text("Huuthuan,NDK",
                style: CustomTextStyles.titleMediumInterBluegray50),
            SizedBox(height: 5.v),
            Text("22 tracks \t• 32 min",
                style: CustomTextStyles.bodyMediumInterGray600),
            SizedBox(height: 30.v),
            SizedBox(
                width: 209.h,
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomElevatedButton(
                          height: 40.v,
                          width: 145.h,
                          text: "Play",
                          buttonStyle: CustomButtonStyles.fillBlueGray,
                          buttonTextStyle:
                              CustomTextStyles.titleMediumInterDeeppurple300_1),
                      Container(
                          height: 40.v,
                          width: 56.h,
                          padding: EdgeInsets.symmetric(
                              horizontal: 16.h, vertical: 8.v),
                          decoration: AppDecoration.fillBluegray90001.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder12),
                          child: CustomImageView(
                              imagePath: ImageConstant.imgMaximize,
                              height: 24.adaptSize,
                              width: 24.adaptSize,
                              alignment: Alignment.center))
                    ]))
          ]))
    ]);
  }

  /// Section Widget
  Widget _buildUITabBarPlayer(BuildContext context) {
    return Align(
        alignment: Alignment.bottomCenter,
        child: Container(
            decoration: AppDecoration.fillBlack90019,
            child: Column(mainAxisSize: MainAxisSize.min, children: [
              SizedBox(
                  height: 2.v,
                  width: double.maxFinite,
                  child: Stack(alignment: Alignment.centerLeft, children: [
                    Align(
                        alignment: Alignment.center,
                        child: SizedBox(
                            width: double.maxFinite, child: Divider())),
                    Align(
                        alignment: Alignment.centerLeft,
                        child: SizedBox(
                            width: 175.h,
                            child: Divider(color: appTheme.deepPurple300)))
                  ])),
              SizedBox(height: 8.v),
              Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.h),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(children: [
                          Text("Misery Sequence",
                              style: theme.textTheme.bodyLarge),
                          SizedBox(height: 5.v),
                          Text("Brutality Will Prevail",
                              style: CustomTextStyles.bodyMediumInterGray600)
                        ]),
                        CustomImageView(
                            imagePath: ImageConstant.imgUiIconPause,
                            height: 24.adaptSize,
                            width: 24.adaptSize,
                            margin: EdgeInsets.only(top: 7.v, bottom: 10.v))
                      ])),
              SizedBox(height: 8.v),
              Container(
                  width: double.maxFinite,
                  padding: EdgeInsets.symmetric(vertical: 6.v),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomImageView(
                            imagePath: ImageConstant.imgUiIconHome,
                            height: 24.adaptSize,
                            width: 24.adaptSize,
                            margin: EdgeInsets.only(bottom: 13.v)),
                        CustomImageView(
                            imagePath: ImageConstant.imgUiIconRadio,
                            height: 24.adaptSize,
                            width: 24.adaptSize,
                            margin: EdgeInsets.only(bottom: 13.v),
                            onTap: () {
                              onTapImgUIIconRadio(context);
                            }),
                        CustomImageView(
                            imagePath: ImageConstant.imgUiIconCloud,
                            height: 24.adaptSize,
                            width: 24.adaptSize,
                            margin: EdgeInsets.only(bottom: 13.v),
                            onTap: () {
                              onTapImgUIIconCloud(context);
                            })
                      ]))
            ])));
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }

  /// Navigates to the musicsongeightScreen when the action is triggered.
  onTapImgUIIconRadio(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.musicsongeightScreen);
  }

  /// Navigates to the coutdownmusicnineScreen when the action is triggered.
  onTapImgUIIconCloud(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.coutdownmusicnineScreen);
  }
}
