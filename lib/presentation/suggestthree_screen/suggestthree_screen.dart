import 'bloc/suggestthree_bloc.dart';
import 'models/suggestthree_model.dart';
import 'package:dreamease/core/app_export.dart';
import 'package:dreamease/widgets/custom_elevated_button.dart';
import 'package:dreamease/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class SuggestthreeScreen extends StatelessWidget {
  const SuggestthreeScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<SuggestthreeBloc>(
      create: (context) => SuggestthreeBloc(SuggestthreeState(
        suggestthreeModelObj: SuggestthreeModel(),
      ))
        ..add(SuggestthreeInitialEvent()),
      child: SuggestthreeScreen(),
    );
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
              image: AssetImage(
                ImageConstant.imgLoadingscreenone,
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: Container(
            width: 360.h,
            padding: EdgeInsets.symmetric(
              horizontal: 9.h,
              vertical: 59.v,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    height: 153.v,
                    width: 120.h,
                    margin: EdgeInsets.only(left: 102.h),
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
                                  imagePath: ImageConstant.imgRectangle7,
                                  height: 80.adaptSize,
                                  width: 80.adaptSize,
                                  radius: BorderRadius.circular(
                                    40.h,
                                  ),
                                  alignment: Alignment.center,
                                ),
                                CustomImageView(
                                  imagePath: ImageConstant.imgAvatars3dAvatar24,
                                  height: 120.adaptSize,
                                  width: 120.adaptSize,
                                  alignment: Alignment.center,
                                  margin: EdgeInsets.only(left: 20.h),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.bottomRight,
                          child: Padding(
                            padding: EdgeInsets.only(right: 12.h),
                            child: Text(
                              "lbl_thuan".tr,
                              style: theme.textTheme.headlineLarge,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 23.v),
                _buildAverageSleepTime(context),
                SizedBox(height: 34.v),
                _buildFour(context),
                SizedBox(height: 82.v),
                CustomElevatedButton(
                  width: 180.h,
                  text: "lbl_next".tr,
                ),
                SizedBox(height: 5.v),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildAverageSleepTime(BuildContext context) {
    return Container(
      width: 338.h,
      margin: EdgeInsets.symmetric(horizontal: 2.h),
      padding: EdgeInsets.symmetric(
        horizontal: 40.h,
        vertical: 29.v,
      ),
      decoration: AppDecoration.fillGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder17,
      ),
      child: Container(
        width: 249.h,
        margin: EdgeInsets.only(right: 8.h),
        child: Text(
          "msg_b_n_thu_c_tu_i".tr,
          maxLines: 4,
          overflow: TextOverflow.ellipsis,
          style: CustomTextStyles.bodyMedium14,
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildFour(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 2.h),
      padding: EdgeInsets.symmetric(
        horizontal: 37.h,
        vertical: 8.v,
      ),
      decoration: AppDecoration.fillGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder17,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: 258.h,
            margin: EdgeInsets.only(
              left: 2.h,
              right: 3.h,
            ),
            child: Text(
              "msg_h_y_nh_p_th_i_gian".tr,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: CustomTextStyles.bodyMedium14,
            ),
          ),
          SizedBox(height: 13.v),
          BlocSelector<SuggestthreeBloc, SuggestthreeState,
              TextEditingController?>(
            selector: (state) => state.textFieldController,
            builder: (context, textFieldController) {
              return CustomTextFormField(
                controller: textFieldController,
                hintText: "lbl_hour".tr,
                textInputAction: TextInputAction.done,
              );
            },
          ),
          SizedBox(height: 11.v),
        ],
      ),
    );
  }
}
