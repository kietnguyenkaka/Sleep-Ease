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
    return BlocSelector<InputnametwoBloc, InputnametwoState,
            TextEditingController?>(
        selector: (state) => state.nameController,
        builder: (context, nameController) {
          return CustomTextFormField(
              width: 210.h,
              controller: nameController,
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
  Widget _buildTextField(BuildContext context) {
    return BlocSelector<InputnametwoBloc, InputnametwoState,
            TextEditingController?>(
        selector: (state) => state.textFieldController,
        builder: (context, textFieldController) {
          return CustomTextFormField(
              width: 215.h,
              controller: textFieldController,
              hintText: "lbl_age".tr);
        });
  }

  /// Section Widget
  Widget _buildTextField1(BuildContext context) {
    return BlocSelector<InputnametwoBloc, InputnametwoState,
            TextEditingController?>(
        selector: (state) => state.textFieldController1,
        builder: (context, textFieldController1) {
          return CustomTextFormField(
              width: 215.h,
              controller: textFieldController1,
              hintText: "lbl_sex".tr,
              textInputAction: TextInputAction.done);
        });
  }

  /// Section Widget
  Widget _buildNext(BuildContext context) {
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
