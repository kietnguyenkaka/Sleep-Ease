import '../models/discoverten_item_model.dart';
import 'package:dreamease/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class DiscovertenItemWidget extends StatelessWidget {
  DiscovertenItemWidget(
    this.discovertenItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  DiscovertenItemModel discovertenItemModelObj;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 42.h,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 43.v,
            width: 42.h,
            child: Stack(
              alignment: Alignment.center,
              children: [
                Align(
                  alignment: Alignment.center,
                  child: SizedBox(
                    height: 43.v,
                    width: 42.h,
                    child: CircularProgressIndicator(
                      value: 0.5,
                      strokeWidth: 8.h,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    discovertenItemModelObj.h!,
                    style: CustomTextStyles.bodySmallOpenSansWhiteA700,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 2.v),
          Padding(
            padding: EdgeInsets.only(left: 11.h),
            child: Text(
              discovertenItemModelObj.wd!,
              style: CustomTextStyles.bodySmallOpenSansWhiteA700,
            ),
          ),
        ],
      ),
    );
  }
}
