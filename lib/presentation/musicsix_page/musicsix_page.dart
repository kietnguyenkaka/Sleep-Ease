import 'package:dreamease/core/app_export.dart';
import 'package:dreamease/widgets/app_bar/appbar_subtitle_two.dart';
import 'package:dreamease/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

class MusicsixPage extends StatelessWidget {
  const MusicsixPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: SizedBox(
                width: mediaQueryData.size.width,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(top: 17.v),
                    child: Column(children: [
                      _buildTheBandTorso(context),
                      SizedBox(height: 14.v),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: EdgeInsets.only(left: 16.h),
                              child: Text("Playlist",
                                  style: theme.textTheme.titleMedium))),
                      _buildForOlder(context),
                      SizedBox(height: 3.v),
                      Padding(
                          padding: EdgeInsets.only(left: 6.h, right: 9.h),
                          child: _buildPlaylist(context,
                              image: ImageConstant.imgRectangle5100x193,
                              boleroS: "Bolero 90’s",
                              obitoHieuThuHai: "Obito, HieuThuHai",
                              image1: ImageConstant.imgRectangle51,
                              classicalSleep: "Classical Sleep",
                              youngHBray: "YoungH,Bray")),
                      SizedBox(height: 13.v),
                      _buildDarkXTabBar(context)
                    ])))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        height: 73.v,
        leadingWidth: 85.h,
        leading: Container(
            height: 64.adaptSize,
            width: 64.adaptSize,
            margin: EdgeInsets.only(left: 21.h),
            child: Stack(alignment: Alignment.center, children: [
              CustomImageView(
                  imagePath: ImageConstant.imgRectangle764x64,
                  height: 64.adaptSize,
                  width: 64.adaptSize,
                  radius: BorderRadius.circular(32.h),
                  alignment: Alignment.center),
              CustomImageView(
                  imagePath: ImageConstant.imgAvatars3dAvatar24,
                  height: 64.adaptSize,
                  width: 64.adaptSize,
                  alignment: Alignment.center)
            ])),
        title: AppbarSubtitleTwo(
            text: "Name", margin: EdgeInsets.only(left: 8.h)));
  }

  /// Section Widget
  Widget _buildTheBandTorso(BuildContext context) {
    return Align(
        alignment: Alignment.centerLeft,
        child: SizedBox(
            height: 261.v,
            width: 361.h,
            child: Stack(alignment: Alignment.bottomRight, children: [
              CustomImageView(
                  imagePath: ImageConstant.imgTheBandTorso,
                  height: 261.v,
                  width: 299.h,
                  alignment: Alignment.centerLeft),
              CustomImageView(
                  imagePath: ImageConstant.imgVector,
                  height: 52.v,
                  width: 53.h,
                  alignment: Alignment.bottomRight,
                  margin: EdgeInsets.only(right: 43.h, bottom: 39.v)),
              Align(
                  alignment: Alignment.topRight,
                  child: Container(
                      width: 105.h,
                      margin: EdgeInsets.only(top: 88.v, right: 26.h),
                      child: Text("Với những bài \nnhạc dịu \ndàng!",
                          maxLines: 3,
                          overflow: TextOverflow.ellipsis,
                          style: CustomTextStyles
                              .bodyLargeBeVietnamProWhiteA700))),
              Align(
                  alignment: Alignment.topRight,
                  child: Padding(
                      padding: EdgeInsets.only(top: 63.v),
                      child: Text("Ngủ sâu giấc hơn",
                          style:
                              CustomTextStyles.bodyLargeBeVietnamProWhiteA700)))
            ])));
  }

  /// Section Widget
  Widget _buildForOlder(BuildContext context) {
    return SizedBox(
        height: 177.v,
        width: 360.h,
        child: Stack(alignment: Alignment.topCenter, children: [
          Align(
              alignment: Alignment.bottomLeft,
              child: Padding(
                  padding: EdgeInsets.only(left: 3.h),
                  child:
                      Text("For Older  ", style: theme.textTheme.titleMedium))),
          Padding(
              padding: EdgeInsets.only(bottom: 18.v),
              child: _buildPlaylist(context,
                  image: ImageConstant.imgRectangle5,
                  boleroS: "Chillout and Ambient",
                  obitoHieuThuHai: "Huuthuan, NDK",
                  image1: ImageConstant.imgRectangle5100x143,
                  classicalSleep: "Baby Sleep",
                  youngHBray: " XuanMike,PC", onTapPlaylist: () {
                onTapPlaylist(context);
              }))
        ]));
  }

  /// Section Widget
  Widget _buildDarkXTabBar(BuildContext context) {
    return Container(
        width: double.maxFinite,
        padding: EdgeInsets.symmetric(horizontal: 31.h, vertical: 12.v),
        decoration: AppDecoration.fillBlueGray,
        child: Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
          SizedBox(height: 44.v),
          CustomImageView(
              imagePath: ImageConstant.imgProfile,
              height: 24.adaptSize,
              width: 24.adaptSize)
        ]));
  }

  /// Common widget
  Widget _buildPlaylist(
    BuildContext context, {
    required String image,
    required String boleroS,
    required String obitoHieuThuHai,
    required String image1,
    required String classicalSleep,
    required String youngHBray,
    Function? onTapPlaylist,
  }) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      GestureDetector(
          onTap: () {
            onTapPlaylist!.call();
          },
          child: Container(
              margin: EdgeInsets.only(bottom: 4.v),
              padding: EdgeInsets.symmetric(horizontal: 4.h),
              decoration: AppDecoration.fillBlack
                  .copyWith(borderRadius: BorderRadiusStyle.roundedBorder12),
              child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(height: 4.v),
                    CustomImageView(
                        imagePath: image,
                        height: 100.v,
                        width: 193.h,
                        radius: BorderRadius.circular(8.h)),
                    SizedBox(height: 10.v),
                    Padding(
                        padding: EdgeInsets.only(left: 4.h),
                        child: Text(boleroS,
                            style: CustomTextStyles.titleSmallPoppinsWhiteA700
                                .copyWith(
                                    color:
                                        appTheme.whiteA700.withOpacity(0.85)))),
                    SizedBox(height: 2.v),
                    Padding(
                        padding: EdgeInsets.only(left: 4.h),
                        child: Text(obitoHieuThuHai,
                            style: CustomTextStyles.bodySmallPoppinsGray500
                                .copyWith(color: appTheme.gray500)))
                  ]))),
      Container(
          margin: EdgeInsets.only(left: 8.h),
          padding: EdgeInsets.symmetric(horizontal: 4.h, vertical: 1.v),
          decoration: AppDecoration.fillBlack
              .copyWith(borderRadius: BorderRadiusStyle.roundedBorder12),
          child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 2.v),
                CustomImageView(
                    imagePath: image1,
                    height: 100.v,
                    width: 143.h,
                    radius: BorderRadius.circular(8.h)),
                SizedBox(height: 11.v),
                Padding(
                    padding: EdgeInsets.only(left: 4.h),
                    child: Text(classicalSleep,
                        style: CustomTextStyles.titleSmallPoppinsWhiteA700
                            .copyWith(
                                color: appTheme.whiteA700.withOpacity(0.85)))),
                SizedBox(height: 2.v),
                Padding(
                    padding: EdgeInsets.only(left: 4.h),
                    child: Text(youngHBray,
                        style: CustomTextStyles.bodySmallPoppinsGray500
                            .copyWith(color: appTheme.gray500)))
              ]))
    ]);
  }

  /// Navigates to the musicplaylistsevenScreen when the action is triggered.
  onTapPlaylist(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.musicplaylistsevenScreen);
  }
}
