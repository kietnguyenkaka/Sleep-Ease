import 'package:dreamease/core/app_export.dart';
import 'package:dreamease/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class EnterthetipstwelveScreen extends StatelessWidget {
  EnterthetipstwelveScreen({Key? key}) : super(key: key);

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
                  SizedBox(height: 41.v),
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
                    SizedBox(height: 9.v),
                    _buildThIQuenXU(context),
                    SizedBox(height: 23.v),
                    Container(
                        width: 314.h,
                        margin: EdgeInsets.only(left: 31.h, right: 29.h),
                        child: Text(
                            "Để có giấc ngủ tốt thì cũng khá khó khăn, ngay cả khi bạn tập trung vào việc thực hiện đúng những tips tăng cường giấc ngủ đúng cách - như uống đồ uống thư giãn vào buổi tối, thực hiện các động tác duỗi cơ nhẹ nhàng và thực hiện một nghi lễ vào buổi tối, để bắt đầu. Bởi vì giấc ngủ hoạt động phù hợp với nhịp sinh học hằng ngày của cơ thể (còn được gọi là đồng hồ cơ thể 24 giờ), mà có thể bị ảnh hưởng bởi các hoạt động ban ngày và ban đêm khác nhau. Sau đây là 4 thói quen xấu có thể ảnh hưởng tới giấc ngủ của bạn :\n\nSử dụng điện thoại hoặc thiết bị điện tử trước khi đi ngủ: Ánh sáng xanh từ các thiết bị này có thể làm gián đoạn chu kỳ giấc ngủ tự nhiên của cơ thể, gây khó khăn trong việc zzz.\nUống đồ uống kích thích hoặc uống cà phê vào buổi tối: Caffeine hoặc các đồ uống kích thích khác có thể gây ảnh hưởng lên việc zzz của bạn.\nThiếu chuẩn bị cho một giấc ngủ tốt: Không tạo ra môi trường ngủ thoải mái, không có ruti ngủ, hay không duy trì một thời gian ngủ cố định có thể ảnh hưởng đến chất lượng giấc ngủ của bạn.\nThực hiện công việc căng thẳng hoặc tập thể dục vào buổi tối muộn: Việc này có thể làm cho cơ thể và tâm trí bạn không thể thư giãn và chuẩn bị cho giấc ngủ tốt.\nĐể cải thiện giấc ngủ, việc loại bỏ hoặc giảm thiểu những thói quen xấu này và thay thế chúng bằng thói quen tốt hơn có thể giúp bạn có giấc ngủ sâu hơn và cảm thấy khỏe mạnh hơn vào ngày hôm sau.",
                            maxLines: 30,
                            overflow: TextOverflow.ellipsis,
                            style: CustomTextStyles.bodyMediumGray40001)),
                    SizedBox(height: 1.v),
                    _buildDarkXTabBar(context)
                  ])))
                ])),
            bottomNavigationBar: Padding(
                padding: EdgeInsets.symmetric(horizontal: 23.h),
                child: _buildBottomBar(context))));
  }

  /// Section Widget
  Widget _buildThIQuenXU(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 25.h),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                  width: 173.h,
                  margin: EdgeInsets.only(top: 1.v, bottom: 16.v),
                  child: Text(
                      "4 Thói Quen Xấu Mà Bác Sĩ Đang Muốn Bạn Dừng Lại Vì Giấc Ngủ Của Bạn",
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                      style: CustomTextStyles.titleSmallOpenSans_1)),
              CustomImageView(
                  imagePath: ImageConstant.imgImage5,
                  height: 79.v,
                  width: 136.h,
                  radius: BorderRadius.circular(5.h),
                  margin: EdgeInsets.only(left: 15.h))
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

  /// Navigates back to the previous screen.
  onTapImgArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }

  /// Navigates to the profilesixteenScreen when the action is triggered.
  onTapImgProfile(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.profilesixteenScreen);
  }
}
