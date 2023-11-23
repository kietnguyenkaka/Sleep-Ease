import 'package:dreamease/core/app_export.dart';
import 'package:dreamease/widgets/custom_elevated_button.dart';
import 'package:dreamease/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class SuggestfourteenScreen extends StatelessWidget {
  SuggestfourteenScreen({Key? key}) : super(key: key);

  TextEditingController editTextController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            extendBody: true,
            extendBodyBehindAppBar: true,
            backgroundColor: appTheme.black90002,
            resizeToAvoidBottomInset: false,
            body: Container(
                width: mediaQueryData.size.width,
                height: mediaQueryData.size.height,
                decoration: BoxDecoration(
                    color: appTheme.black90002,
                    image: DecorationImage(
                        image: AssetImage(ImageConstant.imgLoadingscreenone),
                        fit: BoxFit.cover)),
                child: Container(
                    width: 360.h,
                    padding:
                        EdgeInsets.symmetric(horizontal: 7.h, vertical: 59.v),
                    child: Column(mainAxisSize: MainAxisSize.min, children: [
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                              height: 153.v,
                              width: 120.h,
                              margin: EdgeInsets.only(left: 104.h),
                              child: Stack(
                                  alignment: Alignment.bottomRight,
                                  children: [
                                    Align(
                                        alignment: Alignment.topCenter,
                                        child: SizedBox(
                                            height: 120.adaptSize,
                                            width: 120.adaptSize,
                                            child: Stack(
                                                alignment: Alignment.center,
                                                children: [
                                                  CustomImageView(
                                                      imagePath: ImageConstant
                                                          .imgRectangle7,
                                                      height: 80.adaptSize,
                                                      width: 80.adaptSize,
                                                      radius:
                                                          BorderRadius.circular(
                                                              40.h),
                                                      alignment:
                                                          Alignment.center),
                                                  CustomImageView(
                                                      imagePath: ImageConstant
                                                          .imgAvatars3dAvatar24,
                                                      height: 120.adaptSize,
                                                      width: 120.adaptSize,
                                                      alignment:
                                                          Alignment.center)
                                                ]))),
                                    Align(
                                        alignment: Alignment.bottomRight,
                                        child: Padding(
                                            padding:
                                                EdgeInsets.only(right: 12.h),
                                            child: Text("Thuan",
                                                style: theme
                                                    .textTheme.headlineLarge)))
                                  ]))),
                      SizedBox(height: 27.v),
                      _buildUserProfile(context),
                      SizedBox(height: 46.v),
                      CustomElevatedButton(
                          width: 180.h,
                          text: "Next",
                          onPressed: () {
                            onTapNext(context);
                          }),
                      SizedBox(height: 5.v)
                    ])))));
  }

  /// Section Widget
  Widget _buildUserProfile(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(left: 8.h),
        padding: EdgeInsets.symmetric(horizontal: 36.h, vertical: 13.v),
        decoration: AppDecoration.fillGray
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder17),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                  padding: EdgeInsets.only(left: 25.h),
                  child: Text("Hãy đánh giá giấc ngủ của bạn",
                      style: CustomTextStyles.bodyMedium14)),
              SizedBox(height: 18.v),
              CustomTextFormField(
                  controller: editTextController,
                  textInputAction: TextInputAction.done),
              SizedBox(height: 17.v)
            ]));
  }

  /// Navigates to the inputnametwoScreen when the action is triggered.
  onTapNext(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.inputnametwoScreen);
  }
}
