import '../models/homefive_item_model.dart';
import 'package:dreamease/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class HomefiveItemWidget extends StatelessWidget {
  HomefiveItemWidget(
    this.homefiveItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  HomefiveItemModel homefiveItemModelObj;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 132.h,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: homefiveItemModelObj?.ridinginthehorse,
            height: 97.v,
            width: 132.h,
            radius: BorderRadius.circular(
              16.h,
            ),
          ),
          SizedBox(height: 8.v),
          Text(
            homefiveItemModelObj.ridingInTheHorse!,
            style: theme.textTheme.labelLarge,
          ),
        ],
      ),
    );
  }
}
