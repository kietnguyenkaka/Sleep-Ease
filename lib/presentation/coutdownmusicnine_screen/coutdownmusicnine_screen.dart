import 'bloc/coutdownmusicnine_bloc.dart';
import 'models/coutdownmusicnine_model.dart';
import 'package:dreamease/core/app_export.dart';
import 'package:dreamease/widgets/app_bar/appbar_leading_image.dart';
import 'package:dreamease/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:dreamease/widgets/app_bar/custom_app_bar.dart';
import 'package:dreamease/widgets/custom_bottom_bar.dart';
import 'package:dreamease/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class CoutdownmusicnineScreen extends StatelessWidget {
  CoutdownmusicnineScreen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  static Widget builder(BuildContext context) {
    return BlocProvider<CoutdownmusicnineBloc>(
        create: (context) => CoutdownmusicnineBloc(CoutdownmusicnineState(
            coutdownmusicnineModelObj: CoutdownmusicnineModel()))
          ..add(CoutdownmusicnineInitialEvent()),
        child: CoutdownmusicnineScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return BlocBuilder<CoutdownmusicnineBloc, CoutdownmusicnineState>(
        builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              backgroundColor: appTheme.black90019,
              appBar: _buildAppBar(context),
              body: Container(
                  width: double.maxFinite,
                  padding: EdgeInsets.symmetric(horizontal: 50.h),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                            height: 273.v,
                            width: 269.h,
                            child: CircularProgressIndicator(
                                value: 0.5,
                                backgroundColor: appTheme.whiteA700)),
                        SizedBox(height: 66.v),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CustomIconButton(
                                  height: 56.adaptSize,
                                  width: 56.adaptSize,
                                  padding: EdgeInsets.all(10.h),
                                  child: CustomImageView(
                                      imagePath: ImageConstant
                                          .imgCarbonPlayFilledAlt)),
                              Padding(
                                  padding: EdgeInsets.only(left: 38.h),
                                  child: CustomIconButton(
                                      height: 56.adaptSize,
                                      width: 56.adaptSize,
                                      padding: EdgeInsets.all(10.h),
                                      child: CustomImageView(
                                          imagePath: ImageConstant
                                              .imgCodiconDebugRestart)))
                            ]),
                        SizedBox(height: 50.v),
                        SizedBox(
                            height: 44.v,
                            width: 255.h,
                            child:
                                Stack(alignment: Alignment.center, children: [
                              Align(
                                  alignment: Alignment.centerRight,
                                  child: Padding(
                                      padding: EdgeInsets.only(right: 34.h),
                                      child: Text("msg_ch_nh_th_i_gian".tr,
                                          style: CustomTextStyles
                                              .titleSmallInterBluegray50))),
                              CustomIconButton(
                                  height: 44.v,
                                  width: 255.h,
                                  alignment: Alignment.center,
                                  child: CustomImageView())
                            ])),
                        SizedBox(height: 5.v)
                      ])),
              bottomNavigationBar: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 49.h),
                  child: _buildBottomBar(context))));
    });
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 50.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeft,
            margin: EdgeInsets.only(left: 26.h, top: 16.v, bottom: 15.v),
            onTap: () {
              onTapArrowLeft(context);
            }),
        title: AppbarSubtitleOne(
            text: "msg_chillout_and_ambient".tr,
            margin: EdgeInsets.only(left: 49.h)));
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(onChanged: (BottomBarEnum type) {});
  }

  /// Navigates to the previous screen.
  onTapArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }
}
