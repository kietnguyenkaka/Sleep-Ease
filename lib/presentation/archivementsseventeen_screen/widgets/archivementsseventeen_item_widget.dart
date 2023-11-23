import '../models/archivementsseventeen_item_model.dart';
import 'package:dreamease/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ArchivementsseventeenItemWidget extends StatelessWidget {
  ArchivementsseventeenItemWidget(
    this.archivementsseventeenItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ArchivementsseventeenItemModel archivementsseventeenItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(9.h),
      decoration: AppDecoration.fillGray90001.copyWith(
        borderRadius: BorderRadiusStyle.circleBorder20,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 1.v),
          CustomImageView(
            imagePath: archivementsseventeenItemModelObj?.earlyRiser,
            height: 78.v,
            width: 64.h,
          ),
          SizedBox(height: 2.v),
          Text(
            archivementsseventeenItemModelObj.goodNightSSleep!,
            style: CustomTextStyles.labelLargeInter,
          ),
          SizedBox(height: 8.v),
          SizedBox(
            width: 137.h,
            child: Text(
              archivementsseventeenItemModelObj.achievedAfterYou!,
              maxLines: 4,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: CustomTextStyles.bodySmallWhiteA700,
            ),
          ),
        ],
      ),
    );
  }
}
