import 'package:dreamease/core/app_export.dart';
import 'package:dreamease/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class TipselevenScreen extends StatelessWidget {
  TipselevenScreen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(vertical: 8.v),
                child: Column(children: [
                  SizedBox(height: 29.v),
                  Expanded(
                      child: SingleChildScrollView(
                          child: Column(children: [
                    CustomImageView(
                        imagePath: ImageConstant.imgArrowLeft,
                        height: 24.adaptSize,
                        width: 24.adaptSize,
                        alignment: Alignment.centerLeft,
                        margin: EdgeInsets.only(left: 31.h),
                        onTap: () {
                          onTapImgArrowLeft(context);
                        }),
                    SizedBox(height: 10.v),
                    _buildTwenty(context,
                        nhNgNghiNCU:
                            "4 Thói Quen Xấu Mà Bác Sĩ Đang Muốn Bạn Dừng Lại Vì Giấc Ngủ Của Bạn",
                        imageFive: ImageConstant.imgImage5,
                        description:
                            "Để có giấc ngủ tốt thì cũng khá khó khăn, ngay cả khi bạn tập trung vào việc thực hiện đúng những tips tăng cường giấc ngủ đúng cách - như uống đồ uống thư giãn vào buổi tối, thực hiện các động tác duỗi cơ nhẹ nhàng và thực hiện một nghi lễ vào buổi tối, để bắt đầu. Bởi vì giấc ngủ hoạt động phù hợp với nhịp sinh học hằng ngày của cơ thể ..."),
                    SizedBox(height: 24.v),
                    _buildTwenty(context,
                        nhNgNghiNCU: "Những nghiên cứu khoa học về giấc ngủ",
                        imageFive: ImageConstant.imgImage579x136,
                        description:
                            "Tác động của giấc ngủ đối với sức khỏe: Nhiều nghiên cứu đã chỉ ra rằng việc có giấc ngủ đủ giấc và chất lượng tốt liên quan mật thiết đến nhiều khía cạnh của sức khỏe, bao gồm hệ miễn dịch, tâm lý, trí não, tim mạch và cân nặng. Đồng hồ sinh học và chu kỳ giấc ngủ: Nghiên cứu về đồng hồ sinh học của cơ thể đã giúp hiểu rõ hơn về cách chu ..."),
                    SizedBox(height: 15.v),
                    _buildFrameSix(context),
                    _buildDarkXTabBar(context)
                  ])))
                ])),
            bottomNavigationBar: Padding(
                padding: EdgeInsets.symmetric(horizontal: 23.h),
                child: _buildBottomBar(context))));
  }

  /// Section Widget
  Widget _buildFrameSix(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(left: 20.h, right: 23.h),
        padding: EdgeInsets.symmetric(horizontal: 19.h),
        decoration: AppDecoration.fillGray
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder17),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              SizedBox(height: 12.v),
              Text("Những thông tin đáng chú ý",
                  textAlign: TextAlign.center,
                  style: CustomTextStyles.titleLargeOpenSansWhiteA700),
              SizedBox(height: 24.v),
              CustomImageView(
                  imagePath: ImageConstant.imgImage6153x204,
                  height: 153.v,
                  width: 204.h,
                  radius: BorderRadius.circular(18.h)),
              SizedBox(height: 10.v),
              Text(
                  "Mỗi người cần một lượng giấc ngủ khác nhau. Tám phần một giờ là trung bình cho người lớn. Một số người có thể chịu đựng tốt với ít giấc ngủ hơn rất nhiều, trong khi một số khác cần nhiều giấc ngủ hơn mỗi đêm.",
                  style: CustomTextStyles.bodyMedium14)
            ]));
  }

  /// Section Widget
  Widget _buildDarkXTabBar(BuildContext context) {
    return Container(
        width: double.maxFinite,
        padding: EdgeInsets.symmetric(horizontal: 31.h, vertical: 12.v),
        decoration: AppDecoration.fillBlueGray,
        child: Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
          SizedBox(height: 44.v),
          CustomImageView(
              imagePath: ImageConstant.imgProfile,
              height: 24.adaptSize,
              width: 24.adaptSize,
              onTap: () {
                onTapImgProfile(context);
              })
        ]));
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(onChanged: (BottomBarEnum type) {});
  }

  /// Common widget
  Widget _buildTwenty(
    BuildContext context, {
    required String nhNgNghiNCU,
    required String imageFive,
    required String description,
  }) {
    return SizedBox(
        height: 196.v,
        width: 342.h,
        child: Stack(alignment: Alignment.bottomCenter, children: [
          Align(
              alignment: Alignment.center,
              child: Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 14.h, vertical: 7.v),
                  decoration: AppDecoration.fillGray.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder17),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                            width: 157.h,
                            margin: EdgeInsets.only(top: 25.v, bottom: 115.v),
                            child: Text(nhNgNghiNCU,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: CustomTextStyles.titleSmallOpenSans_1
                                    .copyWith(color: appTheme.whiteA700))),
                        CustomImageView(
                            imagePath: imageFive,
                            height: 79.v,
                            width: 136.h,
                            radius: BorderRadius.circular(5.h),
                            margin: EdgeInsets.only(left: 18.h, bottom: 103.v))
                      ]))),
          Align(
              alignment: Alignment.bottomCenter,
              child: SizedBox(
                  width: 311.h,
                  child: Text(description,
                      maxLines: 6,
                      overflow: TextOverflow.ellipsis,
                      style: CustomTextStyles.bodySmallOpenSansGray40001
                          .copyWith(color: appTheme.gray40001))))
        ]));
  }

  /// Navigates back to the previous screen.
  onTapImgArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }

  /// Navigates to the enterthetipstwelveScreen when the action is triggered.
  onTapNineteen(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.enterthetipstwelveScreen);
  }

  /// Navigates to the profilesixteenScreen when the action is triggered.
  onTapImgProfile(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.profilesixteenScreen);
  }
}
