import 'package:dreamease/core/app_export.dart';
import 'package:dreamease/widgets/app_bar/appbar_leading_image.dart';
import 'package:dreamease/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:dreamease/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

class MusicsongeightScreen extends StatelessWidget {
  const MusicsongeightScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                width: double.maxFinite,
                child: SingleChildScrollView(
                    child: SizedBox(
                        height: mediaQueryData.size.height,
                        width: double.maxFinite,
                        child:
                            Stack(alignment: Alignment.bottomCenter, children: [
                          Align(
                              alignment: Alignment.center,
                              child: SizedBox(
                                  height: mediaQueryData.size.height,
                                  width: double.maxFinite,
                                  child: Stack(
                                      alignment: Alignment.center,
                                      children: [
                                        CustomImageView(
                                            imagePath: ImageConstant.imgUnion,
                                            height: 72.v,
                                            width: 286.h,
                                            alignment: Alignment.bottomRight,
                                            margin:
                                                EdgeInsets.only(bottom: 305.v)),
                                        Align(
                                            alignment: Alignment.center,
                                            child: Container(
                                                padding: EdgeInsets.symmetric(
                                                    vertical: 11.v),
                                                decoration: AppDecoration
                                                    .fillBlack90019,
                                                child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.end,
                                                    children: [
                                                      SizedBox(height: 50.v),
                                                      _buildAppBar(context),
                                                      SizedBox(height: 28.v),
                                                      CustomImageView(
                                                          imagePath:
                                                              ImageConstant
                                                                  .imgPic,
                                                          height: 140.adaptSize,
                                                          width: 140.adaptSize,
                                                          radius: BorderRadius
                                                              .circular(16.h)),
                                                      SizedBox(height: 9.v),
                                                      Text("Misery Sequence",
                                                          style: theme.textTheme
                                                              .titleLarge),
                                                      SizedBox(height: 8.v),
                                                      Text(
                                                          "Brutality Will Prevail",
                                                          style: CustomTextStyles
                                                              .bodyLargeGray600),
                                                      SizedBox(height: 96.v),
                                                      Text("01:12",
                                                          style: CustomTextStyles
                                                              .bodyMediumInterGray600),
                                                      SizedBox(height: 16.v),
                                                      SizedBox(
                                                          height: 44.v,
                                                          child: VerticalDivider(
                                                              width: 2.h,
                                                              thickness: 2.v,
                                                              color: appTheme
                                                                  .blueGray50)),
                                                      SizedBox(height: 75.v),
                                                      _buildIconBar(context),
                                                      SizedBox(height: 31.v),
                                                      Padding(
                                                          padding: EdgeInsets
                                                              .symmetric(
                                                                  horizontal:
                                                                      67.h),
                                                          child: Row(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .spaceBetween,
                                                              children: [
                                                                CustomImageView(
                                                                    imagePath:
                                                                        ImageConstant
                                                                            .imgUiIconSkip,
                                                                    height: 24
                                                                        .adaptSize,
                                                                    width: 24
                                                                        .adaptSize,
                                                                    margin: EdgeInsets.symmetric(
                                                                        vertical:
                                                                            10.v)),
                                                                CustomImageView(
                                                                    imagePath:
                                                                        ImageConstant
                                                                            .imgUiIconPlay,
                                                                    height: 44
                                                                        .adaptSize,
                                                                    width: 44
                                                                        .adaptSize),
                                                                CustomImageView(
                                                                    imagePath:
                                                                        ImageConstant
                                                                            .imgUiIconSkip,
                                                                    height: 24
                                                                        .adaptSize,
                                                                    width: 24
                                                                        .adaptSize,
                                                                    margin: EdgeInsets.symmetric(
                                                                        vertical:
                                                                            10.v))
                                                              ])),
                                                      SizedBox(height: 108.v),
                                                      Padding(
                                                          padding: EdgeInsets
                                                              .symmetric(
                                                                  horizontal:
                                                                      49.h),
                                                          child: Row(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .spaceBetween,
                                                              children: [
                                                                CustomImageView(
                                                                    imagePath:
                                                                        ImageConstant
                                                                            .imgUiIconHomeBlueGray50,
                                                                    height: 24
                                                                        .adaptSize,
                                                                    width: 24
                                                                        .adaptSize,
                                                                    margin: EdgeInsets.only(
                                                                        bottom:
                                                                            2.v)),
                                                                CustomImageView(
                                                                    imagePath:
                                                                        ImageConstant
                                                                            .imgUiIconRadioDeepPurple300,
                                                                    height: 24
                                                                        .adaptSize,
                                                                    width: 24
                                                                        .adaptSize,
                                                                    margin: EdgeInsets.only(
                                                                        bottom:
                                                                            2.v)),
                                                                CustomImageView(
                                                                    imagePath:
                                                                        ImageConstant
                                                                            .imgUiIconCloud,
                                                                    height: 24
                                                                        .adaptSize,
                                                                    width: 24
                                                                        .adaptSize)
                                                              ]))
                                                    ])))
                                      ]))),
                          _buildUITabBarPlayer(context)
                        ]))))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        height: 25.v,
        leadingWidth: 40.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeft,
            margin: EdgeInsets.only(left: 16.h, top: 1.v),
            onTap: () {
              onTapArrowLeft(context);
            }),
        centerTitle: true,
        title: AppbarSubtitleOne(text: "Chillout and Ambient"));
  }

  /// Section Widget
  Widget _buildIconBar(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.h),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          CustomImageView(
              imagePath: ImageConstant.imgUiIconReapet,
              height: 24.adaptSize,
              width: 24.adaptSize),
          Padding(
              padding: EdgeInsets.only(bottom: 3.v),
              child: Text("Share track",
                  style: CustomTextStyles.titleMediumInterDeeppurple300)),
          CustomImageView(
              imagePath: ImageConstant.imgTadaUiIcon24x24Share,
              height: 24.adaptSize,
              width: 24.adaptSize)
        ]));
  }

  /// Section Widget
  Widget _buildUITabBarPlayer(BuildContext context) {
    return Align(
        alignment: Alignment.bottomCenter,
        child: Container(
            margin: EdgeInsets.only(right: 1.h),
            decoration: AppDecoration.fillBlack90019,
            child: Column(mainAxisSize: MainAxisSize.min, children: [
              SizedBox(
                  height: 2.v,
                  width: 374.h,
                  child: Stack(alignment: Alignment.centerLeft, children: [
                    Align(
                        alignment: Alignment.center,
                        child: SizedBox(width: 374.h, child: Divider())),
                    Align(
                        alignment: Alignment.centerLeft,
                        child: SizedBox(
                            width: 174.h,
                            child: Divider(color: appTheme.deepPurple300)))
                  ])),
              SizedBox(height: 8.v),
              Padding(
                  padding: EdgeInsets.only(left: 15.h, right: 7.h),
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
                        Container(
                            height: 24.v,
                            width: 33.h,
                            margin: EdgeInsets.only(top: 7.v, bottom: 10.v),
                            child:
                                Stack(alignment: Alignment.center, children: [
                              CustomImageView(
                                  imagePath: ImageConstant.imgUiIconPause,
                                  height: 24.adaptSize,
                                  width: 24.adaptSize,
                                  alignment: Alignment.centerLeft),
                              CustomImageView(
                                  imagePath: ImageConstant.imgUiIconPlay,
                                  height: 24.v,
                                  width: 32.h,
                                  alignment: Alignment.center)
                            ]))
                      ])),
              SizedBox(height: 8.v),
              Container(
                  padding: EdgeInsets.symmetric(vertical: 6.v),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomImageView(
                            imagePath: ImageConstant.imgUiIconHomeBlueGray50,
                            height: 24.adaptSize,
                            width: 24.adaptSize,
                            margin: EdgeInsets.only(bottom: 13.v),
                            onTap: () {
                              onTapImgUIIconHome(context);
                            }),
                        CustomImageView(
                            imagePath:
                                ImageConstant.imgUiIconRadioDeepPurple300,
                            height: 24.adaptSize,
                            width: 24.adaptSize,
                            margin: EdgeInsets.only(bottom: 13.v)),
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

  /// Navigates to the musicplaylistsevenScreen when the action is triggered.
  onTapImgUIIconHome(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.musicplaylistsevenScreen);
  }

  /// Navigates to the coutdownmusicnineScreen when the action is triggered.
  onTapImgUIIconCloud(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.coutdownmusicnineScreen);
  }
}
