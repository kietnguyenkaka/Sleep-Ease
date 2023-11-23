import 'bloc/profilesixteen_bloc.dart';
import 'models/profilesixteen_model.dart';
import 'package:dreamease/core/app_export.dart';
import 'package:dreamease/widgets/custom_bottom_bar.dart';
import 'package:dreamease/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class ProfilesixteenScreen extends StatelessWidget {
  ProfilesixteenScreen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  static Widget builder(BuildContext context) {
    return BlocProvider<ProfilesixteenBloc>(
        create: (context) => ProfilesixteenBloc(
            ProfilesixteenState(profilesixteenModelObj: ProfilesixteenModel()))
          ..add(ProfilesixteenInitialEvent()),
        child: ProfilesixteenScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return BlocBuilder<ProfilesixteenBloc, ProfilesixteenState>(
        builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              body: Container(
                  width: double.maxFinite,
                  padding: EdgeInsets.symmetric(vertical: 8.v),
                  child: Column(children: [
                    SizedBox(height: 20.v),
                    Expanded(
                        child: SingleChildScrollView(
                            child: Column(children: [
                      CustomImageView(
                          imagePath: ImageConstant.imgAvatars3dAvatar24,
                          height: 174.adaptSize,
                          width: 174.adaptSize),
                      SizedBox(height: 17.v),
                      Text("lbl_thuan".tr,
                          style: theme.textTheme.headlineSmall),
                      SizedBox(height: 77.v),
                      _buildThngBo(context),
                      SizedBox(height: 123.v),
                      Container(
                          height: 92.v,
                          width: double.maxFinite,
                          decoration:
                              BoxDecoration(color: appTheme.blueGray90003))
                    ])))
                  ])),
              bottomNavigationBar: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 23.h),
                  child: _buildBottomBar(context))));
    });
  }

  /// Section Widget
  Widget _buildThngBo(BuildContext context) {
    return SizedBox(
        height: 297.v,
        width: 336.h,
        child: Stack(alignment: Alignment.topLeft, children: [
          Align(
              alignment: Alignment.center,
              child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    GestureDetector(
                        onTap: () {
                          onTapTxtDanhHiUCATI(context);
                        },
                        child: Padding(
                            padding: EdgeInsets.only(left: 42.h),
                            child: Text("msg_danh_hi_u_c_a_t_i".tr,
                                style: theme.textTheme.bodyMedium))),
                    SizedBox(height: 46.v),
                    CustomElevatedButton(
                        height: 30.v,
                        width: 114.h,
                        text: "lbl_th_ng_b_o".tr,
                        leftIcon: Container(
                            margin: EdgeInsets.only(right: 10.h),
                            child: CustomImageView(
                                imagePath: ImageConstant.imgBell24Outline,
                                height: 30.v,
                                width: 31.h)),
                        buttonStyle: CustomButtonStyles.none,
                        buttonTextStyle: theme.textTheme.bodyMedium!),
                    SizedBox(height: 43.v),
                    Padding(
                        padding: EdgeInsets.only(left: 3.h),
                        child: Row(children: [
                          CustomImageView(
                              imagePath: ImageConstant.imgEdit,
                              height: 25.v,
                              width: 26.h,
                              onTap: () {
                                onTapImgEdit(context);
                              }),
                          GestureDetector(
                              onTap: () {
                                onTapTxtViTFeedbacksCho(context);
                              },
                              child: Padding(
                                  padding:
                                      EdgeInsets.only(left: 13.h, bottom: 3.v),
                                  child: Text("msg_vi_t_feedbacks_cho".tr,
                                      style: theme.textTheme.bodyMedium)))
                        ])),
                    SizedBox(height: 44.v),
                    Padding(
                        padding: EdgeInsets.only(left: 3.h),
                        child: Row(children: [
                          CustomImageView(
                              imagePath: ImageConstant.imgLocation,
                              height: 22.v,
                              width: 26.h,
                              margin: EdgeInsets.only(top: 1.v),
                              onTap: () {
                                onTapImgLocation(context);
                              }),
                          GestureDetector(
                              onTap: () {
                                onTapTxtTrGiPYT(context);
                              },
                              child: Padding(
                                  padding:
                                      EdgeInsets.only(left: 12.h, bottom: 3.v),
                                  child: Text("lbl_tr_gi_p_y_t".tr,
                                      style: theme.textTheme.bodyMedium)))
                        ])),
                    SizedBox(height: 39.v),
                    GestureDetector(
                        onTap: () {
                          onTapTxtXoDLiUCA(context);
                        },
                        child: Padding(
                            padding: EdgeInsets.only(left: 42.h),
                            child: Text("msg_xo_d_li_u_c_a".tr,
                                style: theme.textTheme.bodyMedium)))
                  ])),
          CustomImageView(
              imagePath: ImageConstant.imgSearch,
              height: 24.v,
              width: 23.h,
              alignment: Alignment.topLeft,
              onTap: () {
                onTapImgSearch(context);
              }),
          CustomImageView(
              imagePath: ImageConstant.imgClose,
              height: 25.v,
              width: 26.h,
              alignment: Alignment.bottomLeft,
              margin: EdgeInsets.only(left: 4.h),
              onTap: () {
                onTapImgClose(context);
              })
        ]));
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(onChanged: (BottomBarEnum type) {});
  }

  /// Navigates to the archivementsseventeenScreen when the action is triggered.
  onTapTxtDanhHiUCATI(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.archivementsseventeenScreen,
    );
  }

  /// Navigates to the feedbacksnineteenScreen when the action is triggered.
  onTapImgEdit(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.feedbacksnineteenScreen,
    );
  }

  /// Navigates to the feedbacksnineteenScreen when the action is triggered.
  onTapTxtViTFeedbacksCho(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.feedbacksnineteenScreen,
    );
  }

  /// Navigates to the helptwentyScreen when the action is triggered.
  onTapImgLocation(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.helptwentyScreen,
    );
  }

  /// Navigates to the helptwentyScreen when the action is triggered.
  onTapTxtTrGiPYT(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.helptwentyScreen,
    );
  }

  /// Navigates to the inputnametwoScreen when the action is triggered.
  onTapTxtXoDLiUCA(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.inputnametwoScreen,
    );
  }

  /// Navigates to the archivementsseventeenScreen when the action is triggered.
  onTapImgSearch(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.archivementsseventeenScreen,
    );
  }

  /// Navigates to the inputnametwoScreen when the action is triggered.
  onTapImgClose(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.inputnametwoScreen,
    );
  }
}
