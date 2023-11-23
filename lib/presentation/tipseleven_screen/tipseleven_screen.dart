import 'bloc/tipseleven_bloc.dart';
import 'models/tipseleven_model.dart';
import 'package:dreamease/core/app_export.dart';
import 'package:dreamease/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class TipselevenScreen extends StatelessWidget {
  TipselevenScreen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  static Widget builder(BuildContext context) {
    return BlocProvider<TipselevenBloc>(
        create: (context) => TipselevenBloc(
            TipselevenState(tipselevenModelObj: TipselevenModel()))
          ..add(TipselevenInitialEvent()),
        child: TipselevenScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return BlocBuilder<TipselevenBloc, TipselevenState>(
        builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              body: Container(
                  width: double.maxFinite,
                  padding: EdgeInsets.symmetric(vertical: 8.v),
                  child: Column(children: [
                    SizedBox(height: 29.v),
                    Expanded(
                        child: SingleChildScrollView(
                            child: Column(children: [
                      CustomImageView(
                          imagePath: ImageConstant.imgArrowLeft,
                          height: 24.adaptSize,
                          width: 24.adaptSize,
                          alignment: Alignment.centerLeft,
                          margin: EdgeInsets.only(left: 31.h),
                          onTap: () {
                            onTapImgArrowLeft(context);
                          }),
                      SizedBox(height: 10.v),
                      _buildTwenty(context,
                          userName: "msg_4_th_i_quen_x_u".tr,
                          userImage: ImageConstant.imgImage5,
                          userDescription: "msg_c_gi_c_ng_t_t".tr),
                      SizedBox(height: 24.v),
                      _buildTwenty(context,
                          userName: "msg_nh_ng_nghi_n_c_u".tr,
                          userImage: ImageConstant.imgImage579x136,
                          userDescription: "msg_t_c_ng_c_a_gi_c".tr),
                      SizedBox(height: 15.v),
                      _buildFrameSix(context),
                      _buildDarkXTabBar(context)
                    ])))
                  ])),
              bottomNavigationBar: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 23.h),
                  child: _buildBottomBar(context))));
    });
  }

  /// Section Widget
  Widget _buildFrameSix(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(left: 20.h, right: 23.h),
        padding: EdgeInsets.symmetric(horizontal: 19.h),
        decoration: AppDecoration.fillGray
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder17),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              SizedBox(height: 12.v),
              Text("msg_nh_ng_th_ng_tin".tr,
                  textAlign: TextAlign.center,
                  style: CustomTextStyles.titleLargeOpenSansWhiteA700),
              SizedBox(height: 24.v),
              CustomImageView(
                  imagePath: ImageConstant.imgImage6153x204,
                  height: 153.v,
                  width: 204.h,
                  radius: BorderRadius.circular(18.h)),
              SizedBox(height: 10.v),
              Text("msg_m_i_ng_i_c_n_m_t".tr,
                  style: CustomTextStyles.bodyMedium14)
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
              width: 24.adaptSize,
              onTap: () {
                onTapImgProfile(context);
              })
        ]));
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(onChanged: (BottomBarEnum type) {});
  }

  /// Common widget
  Widget _buildTwenty(
    BuildContext context, {
    required String userName,
    required String userImage,
    required String userDescription,
  }) {
    return SizedBox(
        height: 196.v,
        width: 342.h,
        child: Stack(alignment: Alignment.bottomCenter, children: [
          Align(
              alignment: Alignment.center,
              child: Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 14.h, vertical: 7.v),
                  decoration: AppDecoration.fillGray.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder17),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                            width: 157.h,
                            margin: EdgeInsets.only(top: 25.v, bottom: 115.v),
                            child: Text(userName,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: CustomTextStyles.titleSmallOpenSans_1
                                    .copyWith(color: appTheme.whiteA700))),
                        CustomImageView(
                            imagePath: userImage,
                            height: 79.v,
                            width: 136.h,
                            radius: BorderRadius.circular(5.h),
                            margin: EdgeInsets.only(left: 18.h, bottom: 103.v))
                      ]))),
          Align(
              alignment: Alignment.bottomCenter,
              child: SizedBox(
                  width: 311.h,
                  child: Text(userDescription,
                      maxLines: 6,
                      overflow: TextOverflow.ellipsis,
                      style: CustomTextStyles.bodySmallOpenSansGray40001
                          .copyWith(color: appTheme.gray40001))))
        ]));
  }

  /// Navigates to the previous screen.
  onTapImgArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }

  /// Navigates to the enterthetipstwelveScreen when the action is triggered.
  onTapNineteen(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.enterthetipstwelveScreen,
    );
  }

  /// Navigates to the profilesixteenScreen when the action is triggered.
  onTapImgProfile(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.profilesixteenScreen,
    );
  }
}
