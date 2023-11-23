import '../models/homefour_item_model.dart';
import 'package:dreamease/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class HomefourItemWidget extends StatelessWidget {
  HomefourItemWidget(
    this.homefourItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  HomefourItemModel homefourItemModelObj;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 132.h,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: homefourItemModelObj?.ridinginthehorse,
            height: 97.v,
            width: 132.h,
            radius: BorderRadius.circular(
              16.h,
            ),
          ),
          SizedBox(height: 8.v),
          Text(
            homefourItemModelObj.ridingInTheHorse!,
            style: theme.textTheme.labelLarge,
          ),
        ],
      ),
    );
  }
}
