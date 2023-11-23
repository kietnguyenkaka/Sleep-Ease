import 'package:dreamease/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class HomefourItemWidget extends StatelessWidget {
  const HomefourItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 132.h,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgRectangle11,
            height: 97.v,
            width: 132.h,
            radius: BorderRadius.circular(
              16.h,
            ),
          ),
          SizedBox(height: 8.v),
          Text(
            "Riding in the horse",
            style: theme.textTheme.labelLarge,
          ),
        ],
      ),
    );
  }
}
