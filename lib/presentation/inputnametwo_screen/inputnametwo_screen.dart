import 'package:dreamease/core/app_export.dart';
import 'package:dreamease/widgets/custom_elevated_button.dart';
import 'package:dreamease/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class InputnametwoScreen extends StatelessWidget {
  InputnametwoScreen({Key? key}) : super(key: key);

  TextEditingController nameController = TextEditingController();

  TextEditingController textFieldController = TextEditingController();

  TextEditingController textFieldController1 = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

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
                child: Form(
                    key: _formKey,
                    child: SizedBox(
                        width: 360.h,
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(height: 30.v),
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Container(
                                      height: 120.adaptSize,
                                      width: 120.adaptSize,
                                      margin: EdgeInsets.only(left: 48.h),
                                      child: CustomImageView(
                                          imagePath: ImageConstant
                                              .imgAvatars3dAvatar24,
                                          height: 120.adaptSize,
                                          width: 120.adaptSize,
                                          alignment: Alignment.centerLeft))),
                              SizedBox(height: 8.v),
                              Text("Tên bạn là gì ?",
                                  style: CustomTextStyles
                                      .bodyMediumAlikeWhiteA700),
                              SizedBox(height: 27.v),
                              _buildName(context),
                              SizedBox(height: 30.v),
                              _buildTextField(context),
                              SizedBox(height: 31.v),
                              _buildTextField1(context),
                              SizedBox(height: 36.v),
                              _buildNext(context)
                            ]))))));
  }

  /// Section Widget
  Widget _buildName(BuildContext context) {
    return CustomTextFormField(
        width: 210.h, controller: nameController, hintText: "Name");
  }

  /// Section Widget
  Widget _buildTextField(BuildContext context) {
    return CustomTextFormField(
        width: 215.h, controller: textFieldController, hintText: "Age");
  }

  /// Section Widget
  Widget _buildTextField1(BuildContext context) {
    return CustomTextFormField(
        width: 215.h,
        controller: textFieldController1,
        hintText: "Sex",
        textInputAction: TextInputAction.done);
  }

  /// Section Widget
  Widget _buildNext(BuildContext context) {
    return CustomElevatedButton(
        width: 180.h,
        text: "Next",
        margin: EdgeInsets.only(right: 100.h),
        onPressed: () {
          ToScreen3(context);
        },
        alignment: Alignment.centerRight);
  }

  /// Navigates to the suggestthreeScreen when the action is triggered.
  ToScreen3(BuildContext context) {
    Navigator.popAndPushNamed(context, AppRoutes.suggestthreeScreen);
  }
}
