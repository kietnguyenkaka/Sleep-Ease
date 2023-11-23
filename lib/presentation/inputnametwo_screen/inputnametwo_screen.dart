import 'bloc/inputnametwo_bloc.dart';
import 'models/inputnametwo_model.dart';
import 'package:dreamease/core/app_export.dart';
import 'package:dreamease/core/utils/validation_functions.dart';
import 'package:dreamease/widgets/custom_elevated_button.dart';
import 'package:dreamease/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class InputnametwoScreen extends StatelessWidget {
  InputnametwoScreen({Key? key}) : super(key: key);

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  static Widget builder(BuildContext context) {
    return BlocProvider<InputnametwoBloc>(
        create: (context) => InputnametwoBloc(
            InputnametwoState(inputnametwoModelObj: InputnametwoModel()))
          ..add(InputnametwoInitialEvent()),
        child: InputnametwoScreen());
  }

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
                              Text("lbl_t_n_b_n_l_g".tr,
                                  style: CustomTextStyles
                                      .bodyMediumAlikeWhiteA700),
                              SizedBox(height: 27.v),
                              _buildInputName(context),
                              SizedBox(height: 30.v),
                              _buildInputField1(context),
                              SizedBox(height: 31.v),
                              _buildInputField2(context),
                              SizedBox(height: 36.v),
                              _buildNextButton(context)
                            ]))))));
  }

  /// Section Widget
  Widget _buildInputName(BuildContext context) {
    return BlocSelector<InputnametwoBloc, InputnametwoState,
            TextEditingController?>(
        selector: (state) => state.inputNameController,
        builder: (context, inputNameController) {
          return CustomTextFormField(
              width: 210.h,
              controller: inputNameController,
              hintText: "lbl_name".tr,
              validator: (value) {
                if (!isText(value)) {
                  return "err_msg_please_enter_valid_text".tr;
                }
                return null;
              });
        });
  }

  /// Section Widget
  Widget _buildInputField1(BuildContext context) {
    return BlocSelector<InputnametwoBloc, InputnametwoState,
            TextEditingController?>(
        selector: (state) => state.inputField1Controller,
        builder: (context, inputField1Controller) {
          return CustomTextFormField(
              width: 215.h,
              controller: inputField1Controller,
              hintText: "lbl_age".tr);
        });
  }

  /// Section Widget
  Widget _buildInputField2(BuildContext context) {
    return BlocSelector<InputnametwoBloc, InputnametwoState,
            TextEditingController?>(
        selector: (state) => state.inputField2Controller,
        builder: (context, inputField2Controller) {
          return CustomTextFormField(
              width: 215.h,
              controller: inputField2Controller,
              hintText: "lbl_sex".tr,
              textInputAction: TextInputAction.done);
        });
  }

  /// Section Widget
  Widget _buildNextButton(BuildContext context) {
    return CustomElevatedButton(
        width: 180.h,
        text: "lbl_next".tr,
        margin: EdgeInsets.only(right: 100.h),
        onPressed: () {
          navigateToSuggest3(context);
        },
        alignment: Alignment.centerRight);
  }

  /// Navigates to the suggestthreeScreen when the action is triggered.
  navigateToSuggest3(BuildContext context) {
    NavigatorService.popAndPushNamed(
      AppRoutes.suggestthreeScreen,
    );
  }
}
