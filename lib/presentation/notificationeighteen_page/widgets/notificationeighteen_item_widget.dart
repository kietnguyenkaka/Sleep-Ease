import '../models/notificationeighteen_item_model.dart';
import 'package:dreamease/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class NotificationeighteenItemWidget extends StatelessWidget {
  NotificationeighteenItemWidget(
    this.notificationeighteenItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  NotificationeighteenItemModel notificationeighteenItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 8.h,
        vertical: 12.v,
      ),
      decoration: AppDecoration.fillWhiteA.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder17,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 18.adaptSize,
                width: 18.adaptSize,
                decoration: AppDecoration.fillGray60001.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder5,
                ),
                child: CustomImageView(
                  imagePath: ImageConstant.imgGroup1,
                  height: 18.adaptSize,
                  width: 18.adaptSize,
                  alignment: Alignment.center,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 7.h,
                  bottom: 5.v,
                ),
                child: Text(
                  notificationeighteenItemModelObj.dreamEase!,
                  style: CustomTextStyles.labelLargeVNtimesNewRomanGray90004,
                ),
              ),
              Spacer(),
              Padding(
                padding: EdgeInsets.only(
                  top: 2.v,
                  bottom: 4.v,
                ),
                child: Text(
                  notificationeighteenItemModelObj.duration!,
                  style: CustomTextStyles.labelLargeVNtimesNewRomanGray90004,
                ),
              ),
            ],
          ),
          SizedBox(height: 8.v),
          Padding(
            padding: EdgeInsets.only(left: 23.h),
            child: Text(
              notificationeighteenItemModelObj.title!,
              style: CustomTextStyles.bodySmallBeVietnamProGray90004,
            ),
          ),
          SizedBox(height: 27.v),
          Padding(
            padding: EdgeInsets.only(left: 23.h),
            child: Text(
              notificationeighteenItemModelObj.moreNotifcations!,
              style: theme.textTheme.labelMedium,
            ),
          ),
        ],
      ),
    );
  }
}
