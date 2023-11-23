import '../notificationeighteen_page/widgets/notificationeighteen_item_widget.dart';
import 'bloc/notificationeighteen_bloc.dart';
import 'models/notificationeighteen_item_model.dart';
import 'models/notificationeighteen_model.dart';
import 'package:dreamease/core/app_export.dart';
import 'package:flutter/material.dart';

class NotificationeighteenPage extends StatelessWidget {
  const NotificationeighteenPage({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<NotificationeighteenBloc>(
        create: (context) => NotificationeighteenBloc(NotificationeighteenState(
            notificationeighteenModelObj: NotificationeighteenModel()))
          ..add(NotificationeighteenInitialEvent()),
        child: NotificationeighteenPage());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            body: Container(
                width: double.maxFinite,
                decoration: AppDecoration.fillBlack,
                child: Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: 9.h, vertical: 33.v),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomImageView(
                              imagePath: ImageConstant.imgArrowLeft,
                              height: 24.adaptSize,
                              width: 24.adaptSize,
                              margin: EdgeInsets.only(left: 7.h),
                              onTap: () {
                                onTapImgArrowLeft(context);
                              }),
                          SizedBox(height: 7.v),
                          Padding(
                              padding: EdgeInsets.only(left: 113.h),
                              child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    CustomImageView(
                                        imagePath:
                                            ImageConstant.imgBell24Outline,
                                        height: 30.v,
                                        width: 31.h),
                                    Padding(
                                        padding: EdgeInsets.only(
                                            left: 10.h, bottom: 8.v),
                                        child: Text("lbl_th_ng_b_o".tr,
                                            style: theme.textTheme.bodyMedium))
                                  ])),
                          SizedBox(height: 78.v),
                          _buildNotificationEighteen(context)
                        ])))));
  }

  /// Section Widget
  Widget _buildNotificationEighteen(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 1.h),
        child: BlocSelector<NotificationeighteenBloc, NotificationeighteenState,
                NotificationeighteenModel?>(
            selector: (state) => state.notificationeighteenModelObj,
            builder: (context, notificationeighteenModelObj) {
              return ListView.separated(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  separatorBuilder: (context, index) {
                    return SizedBox(height: 17.v);
                  },
                  itemCount: notificationeighteenModelObj
                          ?.notificationeighteenItemList.length ??
                      0,
                  itemBuilder: (context, index) {
                    NotificationeighteenItemModel model =
                        notificationeighteenModelObj
                                ?.notificationeighteenItemList[index] ??
                            NotificationeighteenItemModel();
                    return NotificationeighteenItemWidget(model);
                  });
            }));
  }

  /// Navigates to the previous screen.
  onTapImgArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }
}
