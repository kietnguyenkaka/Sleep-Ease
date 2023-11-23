import 'bloc/helptwenty_bloc.dart';
import 'models/helptwenty_model.dart';
import 'package:dreamease/core/app_export.dart';
import 'package:dreamease/widgets/app_bar/appbar_leading_image.dart';
import 'package:dreamease/widgets/app_bar/custom_app_bar.dart';
import 'package:dreamease/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class HelptwentyScreen extends StatelessWidget {
  HelptwentyScreen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  static Widget builder(BuildContext context) {
    return BlocProvider<HelptwentyBloc>(
        create: (context) => HelptwentyBloc(
            HelptwentyState(helptwentyModelObj: HelptwentyModel()))
          ..add(HelptwentyInitialEvent()),
        child: HelptwentyScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return BlocBuilder<HelptwentyBloc, HelptwentyState>(
        builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              appBar: _buildAppBar(context),
              body: SizedBox(
                  width: mediaQueryData.size.width,
                  child: SingleChildScrollView(
                      child: Column(children: [
                    Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                            padding: EdgeInsets.only(left: 118.h),
                            child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  CustomImageView(
                                      imagePath:
                                          ImageConstant.imgHealth24Outline,
                                      height: 30.v,
                                      width: 31.h),
                                  Padding(
                                      padding: EdgeInsets.only(
                                          left: 10.h, bottom: 8.v),
                                      child: Text("lbl_tr_gi_p_y_t".tr,
                                          style: theme.textTheme.bodyMedium))
                                ]))),
                    SizedBox(height: 13.v),
                    Container(
                        margin: EdgeInsets.only(left: 15.h, right: 22.h),
                        padding: EdgeInsets.symmetric(
                            horizontal: 20.h, vertical: 12.v),
                        decoration: AppDecoration.fillGray.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder17),
                        child: SizedBox(
                            width: 294.h,
                            child: Text("msg_t_ng_i_112".tr,
                                maxLines: 25,
                                overflow: TextOverflow.ellipsis,
                                style: CustomTextStyles.bodyMedium14))),
                    SizedBox(height: 131.v),
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
            margin: EdgeInsets.fromLTRB(31.h, 16.v, 320.h, 16.v),
            onTap: () {
              onTapArrowLeft(context);
            }));
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
