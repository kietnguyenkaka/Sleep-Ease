import '../discoverten_page/widgets/discoverten_item_widget.dart';
import 'package:dreamease/core/app_export.dart';
import 'package:dreamease/widgets/app_bar/appbar_subtitle.dart';
import 'package:dreamease/widgets/app_bar/appbar_subtitle_three.dart';
import 'package:dreamease/widgets/app_bar/appbar_trailing_image.dart';
import 'package:dreamease/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

class DiscovertenPage extends StatelessWidget {
  const DiscovertenPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: SizedBox(
                width: mediaQueryData.size.width,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(top: 8.v),
                    child: Column(children: [
                      _buildThirteen(context),
                      SizedBox(height: 16.v),
                      _buildThIGianNgTrung(context),
                      SizedBox(height: 19.v),
                      _buildAverageSleepTime(context),
                      SizedBox(height: 9.v),
                      _buildCCTipsCho(context),
                      _buildDarkXTabBar(context)
                    ])))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        height: 93.v,
        title: Padding(
            padding: EdgeInsets.only(left: 15.h),
            child: Column(children: [
              AppbarSubtitle(text: "Hôm nay,  Thứ 7"),
              SizedBox(height: 2.v),
              AppbarSubtitleThree(
                  text: "24 Tháng tư 2023",
                  margin: EdgeInsets.only(left: 12.h, right: 42.h))
            ])),
        actions: [
          AppbarTrailingImage(
              imagePath: ImageConstant.imgImage123,
              margin: EdgeInsets.symmetric(horizontal: 21.h),
              onTap: () {
                onTapImage(context);
              })
        ]);
  }

  /// Section Widget
  Widget _buildThirteen(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 15.h),
        padding: EdgeInsets.all(5.h),
        decoration: AppDecoration.fillGray
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder17),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisSize: MainAxisSize.min,
            children: [
              Expanded(
                  child: SizedBox(
                      height: 70.v,
                      child: ListView.separated(
                          padding: EdgeInsets.only(left: 2.h, top: 7.v),
                          scrollDirection: Axis.horizontal,
                          separatorBuilder: (context, index) {
                            return SizedBox(width: 15.h);
                          },
                          itemCount: 5,
                          itemBuilder: (context, index) {
                            return DiscovertenItemWidget();
                          }))),
              Padding(
                  padding: EdgeInsets.only(left: 15.h, top: 7.v),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                            height: 43.v,
                            width: 42.h,
                            child: CircularProgressIndicator(
                                value: 0.5, strokeWidth: 8.h)),
                        SizedBox(height: 2.v),
                        Padding(
                            padding: EdgeInsets.only(left: 11.h),
                            child: Text("Wd",
                                style: CustomTextStyles
                                    .bodySmallOpenSansWhiteA700))
                      ]))
            ]));
  }

  /// Section Widget
  Widget _buildThIGianNgTrung(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.h),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Expanded(
              child: Container(
                  margin: EdgeInsets.only(right: 11.h),
                  padding:
                      EdgeInsets.symmetric(horizontal: 16.h, vertical: 11.v),
                  decoration: AppDecoration.fillGray.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder17),
                  child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                            width: 71.h,
                            child: Text("Thời gian ngủ trung bình 1 tuần",
                                maxLines: 3,
                                overflow: TextOverflow.ellipsis,
                                style: CustomTextStyles.bodyMedium14)),
                        SizedBox(height: 7.v),
                        SizedBox(
                            width: 124.h,
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  RichText(
                                      text: TextSpan(children: [
                                        TextSpan(
                                            text: "6.2",
                                            style: CustomTextStyles
                                                .displayMediumOpenSans),
                                        TextSpan(text: " ")
                                      ]),
                                      textAlign: TextAlign.left),
                                  Padding(
                                      padding: EdgeInsets.only(
                                          top: 31.v, bottom: 17.v),
                                      child: Text("giờ/ ngày",
                                          style: CustomTextStyles
                                              .bodySmallOpenSansWhiteA700))
                                ])),
                        SizedBox(height: 7.v)
                      ]))),
          Expanded(
              child: Container(
                  margin: EdgeInsets.only(left: 11.h),
                  padding:
                      EdgeInsets.symmetric(horizontal: 17.h, vertical: 11.v),
                  decoration: AppDecoration.fillGray.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder17),
                  child: Column(mainAxisSize: MainAxisSize.min, children: [
                    Text("Chất lượng giấc ngủ",
                        style: CustomTextStyles.bodyMedium14),
                    SizedBox(height: 3.v),
                    SizedBox(
                        height: 115.v,
                        width: 114.h,
                        child: CircularProgressIndicator(value: 0.5))
                  ])))
        ]));
  }

  /// Section Widget
  Widget _buildAverageSleepTime(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 16.h),
        padding: EdgeInsets.symmetric(horizontal: 17.h, vertical: 15.v),
        decoration: AppDecoration.fillGray
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder17),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Thông tin của giấc ngủ gần đây",
                  style: CustomTextStyles.bodyMedium14),
              SizedBox(height: 24.v),
              Padding(
                  padding: EdgeInsets.only(left: 11.h, right: 22.h),
                  child: Row(children: [
                    CustomImageView(
                        imagePath: ImageConstant.imgTimeClock,
                        height: 24.adaptSize,
                        width: 24.adaptSize,
                        margin: EdgeInsets.only(top: 6.v, bottom: 5.v)),
                    Container(
                        height: 36.v,
                        width: 84.h,
                        margin: EdgeInsets.only(left: 8.h),
                        child: Stack(alignment: Alignment.topCenter, children: [
                          Align(
                              alignment: Alignment.bottomLeft,
                              child: Padding(
                                  padding: EdgeInsets.only(left: 5.h),
                                  child: Text("Bắt đầu đi ngủ",
                                      style: CustomTextStyles
                                          .bodySmallOpenSansBluegray400))),
                          Align(
                              alignment: Alignment.topCenter,
                              child: Text("10:12 PM",
                                  style: CustomTextStyles
                                      .titleLargeOpenSansWhiteA700SemiBold))
                        ])),
                    Spacer(),
                    CustomImageView(
                        imagePath: ImageConstant.imgWeatherWarmWeather,
                        height: 26.v,
                        width: 25.h,
                        margin: EdgeInsets.only(top: 5.v, bottom: 4.v)),
                    Container(
                        height: 36.v,
                        width: 85.h,
                        margin: EdgeInsets.only(left: 8.h),
                        child: Stack(alignment: Alignment.topCenter, children: [
                          Align(
                              alignment: Alignment.bottomLeft,
                              child: Padding(
                                  padding: EdgeInsets.only(left: 2.h),
                                  child: Text("Bắt đầu dậy",
                                      style: CustomTextStyles
                                          .bodySmallOpenSansBluegray400))),
                          Align(
                              alignment: Alignment.topCenter,
                              child: Text("07:12 AM",
                                  style: CustomTextStyles
                                      .titleLargeOpenSansWhiteA700SemiBold))
                        ]))
                  ])),
              SizedBox(height: 32.v),
              Align(
                  alignment: Alignment.center,
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                            padding: EdgeInsets.only(top: 6.v, bottom: 13.v),
                            child: Text("Z",
                                style:
                                    CustomTextStyles.titleSmallOpenSansBold)),
                        Padding(
                            padding: EdgeInsets.only(top: 13.v, bottom: 12.v),
                            child: Text("Z",
                                style: CustomTextStyles
                                    .labelMediumOpenSansWhiteA700)),
                        Padding(
                            padding: EdgeInsets.only(left: 15.h),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("6h 52m",
                                      style: CustomTextStyles
                                          .titleLargeOpenSansWhiteA700SemiBold),
                                  Padding(
                                      padding: EdgeInsets.only(left: 4.h),
                                      child: Text("Tổng số thời gian đã ngủ",
                                          style: CustomTextStyles
                                              .bodySmallOpenSansBluegray400))
                                ]))
                      ])),
              SizedBox(height: 10.v)
            ]));
  }

  /// Section Widget
  Widget _buildCCTipsCho(BuildContext context) {
    return Container(
        height: 153.v,
        width: 331.h,
        padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 11.v),
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(ImageConstant.imgGroup173),
                fit: BoxFit.cover)),
        child: Stack(alignment: Alignment.bottomLeft, children: [
          Align(
              alignment: Alignment.topLeft,
              child: Padding(
                  padding: EdgeInsets.only(top: 13.v),
                  child: Text("Các tips cho",
                      style: theme.textTheme.displaySmall))),
          CustomImageView(
              imagePath: ImageConstant.imgFile,
              height: 48.v,
              width: 35.h,
              alignment: Alignment.bottomLeft,
              margin: EdgeInsets.only(left: 1.h)),
          Align(
              alignment: Alignment.centerRight,
              child: Padding(
                  padding: EdgeInsets.only(right: 55.h),
                  child:
                      Text("giấc ngủ ", style: theme.textTheme.displaySmall)))
        ]));
  }

  /// Section Widget
  Widget _buildDarkXTabBar(BuildContext context) {
    return Container(
        width: double.maxFinite,
        padding: EdgeInsets.symmetric(horizontal: 31.h, vertical: 10.v),
        decoration: AppDecoration.fillBlueGray,
        child: Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
          SizedBox(height: 48.v),
          CustomImageView(
              imagePath: ImageConstant.imgProfile,
              height: 24.adaptSize,
              width: 24.adaptSize)
        ]));
  }

  /// Navigates to the sleepmodethirteenScreen when the action is triggered.
  onTapImage(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.sleepmodethirteenScreen);
  }
}
