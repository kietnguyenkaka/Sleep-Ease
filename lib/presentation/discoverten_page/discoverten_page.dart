import '../discoverten_page/widgets/discoverten_item_widget.dart';
import 'bloc/discoverten_bloc.dart';
import 'models/discoverten_item_model.dart';
import 'models/discoverten_model.dart';
import 'package:dreamease/core/app_export.dart';
import 'package:dreamease/widgets/app_bar/appbar_subtitle.dart';
import 'package:dreamease/widgets/app_bar/appbar_subtitle_three.dart';
import 'package:dreamease/widgets/app_bar/appbar_trailing_image.dart';
import 'package:dreamease/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

class DiscovertenPage extends StatelessWidget {
  const DiscovertenPage({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<DiscovertenBloc>(
        create: (context) => DiscovertenBloc(
            DiscovertenState(discovertenModelObj: DiscovertenModel()))
          ..add(DiscovertenInitialEvent()),
        child: DiscovertenPage());
  }

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
                      _buildDiscoverTen(context),
                      SizedBox(height: 16.v),
                      _buildTimeRange(context),
                      SizedBox(height: 19.v),
                      _buildAverageSleepTime(context),
                      SizedBox(height: 9.v),
                      _buildCcTipsCho(context),
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
              AppbarSubtitle(text: "lbl_h_m_nay_th_7".tr),
              SizedBox(height: 2.v),
              AppbarSubtitleThree(
                  text: "msg_24_th_ng_t_2023".tr,
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
  Widget _buildDiscoverTen(BuildContext context) {
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
                      child: BlocSelector<DiscovertenBloc, DiscovertenState,
                              DiscovertenModel?>(
                          selector: (state) => state.discovertenModelObj,
                          builder: (context, discovertenModelObj) {
                            return ListView.separated(
                                padding: EdgeInsets.only(left: 2.h, top: 7.v),
                                scrollDirection: Axis.horizontal,
                                separatorBuilder: (context, index) {
                                  return SizedBox(width: 15.h);
                                },
                                itemCount: discovertenModelObj
                                        ?.discovertenItemList.length ??
                                    0,
                                itemBuilder: (context, index) {
                                  DiscovertenItemModel model =
                                      discovertenModelObj
                                              ?.discovertenItemList[index] ??
                                          DiscovertenItemModel();
                                  return DiscovertenItemWidget(model);
                                });
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
                            child: Text("lbl_wd".tr,
                                style: CustomTextStyles
                                    .bodySmallOpenSansWhiteA700))
                      ]))
            ]));
  }

  /// Section Widget
  Widget _buildTimeRange(BuildContext context) {
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
                            child: Text("msg_th_i_gian_ng_trung".tr,
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
                                            text: "lbl_6_22".tr,
                                            style: CustomTextStyles
                                                .displayMediumOpenSans),
                                        TextSpan(text: " ")
                                      ]),
                                      textAlign: TextAlign.left),
                                  Padding(
                                      padding: EdgeInsets.only(
                                          top: 31.v, bottom: 17.v),
                                      child: Text("lbl_gi_ng_y".tr,
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
                    Text("msg_ch_t_l_ng_gi_c".tr,
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
              Text("msg_th_ng_tin_c_a_gi_c".tr,
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
                                  child: Text("lbl_b_t_u_i_ng".tr,
                                      style: CustomTextStyles
                                          .bodySmallOpenSansBluegray400))),
                          Align(
                              alignment: Alignment.topCenter,
                              child: Text("lbl_10_12_pm".tr,
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
                                  child: Text("lbl_b_t_u_d_y".tr,
                                      style: CustomTextStyles
                                          .bodySmallOpenSansBluegray400))),
                          Align(
                              alignment: Alignment.topCenter,
                              child: Text("lbl_07_12_am".tr,
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
                            child: Text("lbl_z".tr,
                                style:
                                    CustomTextStyles.titleSmallOpenSansBold)),
                        Padding(
                            padding: EdgeInsets.only(top: 13.v, bottom: 12.v),
                            child: Text("lbl_z".tr,
                                style: CustomTextStyles
                                    .labelMediumOpenSansWhiteA700)),
                        Padding(
                            padding: EdgeInsets.only(left: 15.h),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("lbl_6h_52m".tr,
                                      style: CustomTextStyles
                                          .titleLargeOpenSansWhiteA700SemiBold),
                                  Padding(
                                      padding: EdgeInsets.only(left: 4.h),
                                      child: Text("msg_t_ng_s_th_i_gian".tr,
                                          style: CustomTextStyles
                                              .bodySmallOpenSansBluegray400))
                                ]))
                      ])),
              SizedBox(height: 10.v)
            ]));
  }

  /// Section Widget
  Widget _buildCcTipsCho(BuildContext context) {
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
                  child: Text("lbl_c_c_tips_cho".tr,
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
                  child: Text("lbl_gi_c_ng2".tr,
                      style: theme.textTheme.displaySmall)))
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
    NavigatorService.pushNamed(
      AppRoutes.sleepmodethirteenScreen,
    );
  }
}
