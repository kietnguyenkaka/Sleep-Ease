import 'bloc/feedbacksnineteen_bloc.dart';
import 'models/feedbacksnineteen_model.dart';
import 'package:dreamease/core/app_export.dart';
import 'package:dreamease/widgets/app_bar/appbar_leading_image.dart';
import 'package:dreamease/widgets/app_bar/custom_app_bar.dart';
import 'package:dreamease/widgets/custom_bottom_bar.dart';
import 'package:dreamease/widgets/custom_elevated_button.dart';
import 'package:dreamease/widgets/custom_rating_bar.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class FeedbacksnineteenScreen extends StatelessWidget {
  FeedbacksnineteenScreen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  static Widget builder(BuildContext context) {
    return BlocProvider<FeedbacksnineteenBloc>(
        create: (context) => FeedbacksnineteenBloc(FeedbacksnineteenState(
            feedbacksnineteenModelObj: FeedbacksnineteenModel()))
          ..add(FeedbacksnineteenInitialEvent()),
        child: FeedbacksnineteenScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return BlocBuilder<FeedbacksnineteenBloc, FeedbacksnineteenState>(
        builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              appBar: _buildAppBar(context),
              body: SizedBox(
                  width: mediaQueryData.size.width,
                  child: SingleChildScrollView(
                      child: Column(children: [
                    _buildEditRow(context),
                    SizedBox(height: 12.v),
                    Container(
                        width: 293.h,
                        margin: EdgeInsets.only(left: 46.h, right: 36.h),
                        child: Text("msg_xin_ch_o_ch_ng".tr,
                            maxLines: 6,
                            overflow: TextOverflow.ellipsis,
                            style: theme.textTheme.bodyMedium)),
                    SizedBox(height: 5.v),
                    _buildModalColumn(context),
                    _buildLastSleepInformationStack(context),
                    SizedBox(height: 30.v),
                    Container(
                        height: 92.v,
                        width: double.maxFinite,
                        decoration:
                            BoxDecoration(color: appTheme.blueGray90003))
                  ]))),
              bottomNavigationBar: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 23.h),
                  child: _buildBottomBar(context))));
    });
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: double.maxFinite,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeft,
            margin: EdgeInsets.fromLTRB(26.h, 16.v, 325.h, 16.v),
            onTap: () {
              onTapArrowLeft(context);
            }));
  }

  /// Section Widget
  Widget _buildEditRow(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 18.h),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          CustomImageView(
              imagePath: ImageConstant.imgEdit, height: 25.v, width: 26.h),
          Padding(
              padding: EdgeInsets.only(left: 19.h, bottom: 3.v),
              child: Text("msg_vi_t_feedbacks_cho".tr,
                  style: theme.textTheme.bodyMedium))
        ]));
  }

  /// Section Widget
  Widget _buildModalColumn(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(left: 26.h, right: 30.h),
        padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 20.v),
        decoration: AppDecoration.outlineBlack
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder17),
        child: Column(mainAxisSize: MainAxisSize.min, children: [
          Container(
              height: 30.v,
              width: 287.h,
              decoration: BoxDecoration(color: appTheme.black900)),
          SizedBox(height: 13.v),
          Text("msg_h_y_nh_gi_ch_ng".tr,
              style: CustomTextStyles.titleLargeRobotoWhiteA700),
          SizedBox(height: 7.v),
          Container(
              width: 278.h,
              margin: EdgeInsets.symmetric(horizontal: 4.h),
              child: Text("msg_ch_ng_m_nh_v_n_ang".tr,
                  maxLines: 4,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: CustomTextStyles.titleMediumRobotoBluegray700
                      .copyWith(height: 1.50))),
          SizedBox(height: 7.v),
          CustomRatingBar(initialRating: 0, itemSize: 44),
          SizedBox(height: 10.v)
        ]));
  }

  /// Section Widget
  Widget _buildLastSleepInformationStack(BuildContext context) {
    return SizedBox(
        height: 213.v,
        width: 342.h,
        child: Stack(alignment: Alignment.bottomCenter, children: [
          Align(
              alignment: Alignment.topCenter,
              child: Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 17.h, vertical: 16.v),
                  decoration: AppDecoration.fillGray.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder17),
                  child: Text("msg_h_y_vi_t_nh_ng_g_p".tr,
                      style: CustomTextStyles.bodyMedium14))),
          CustomElevatedButton(
              width: 180.h,
              text: "lbl_submit".tr,
              onPressed: () {
                onTapSubmit(context);
              },
              alignment: Alignment.bottomCenter)
        ]));
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(onChanged: (BottomBarEnum type) {});
  }

  /// Navigates to the previous screen.
  onTapArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }

  /// Navigates to the inputnametwoScreen when the action is triggered.
  onTapSubmit(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.inputnametwoScreen,
    );
  }
}
