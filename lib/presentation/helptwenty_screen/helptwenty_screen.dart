import 'package:dreamease/core/app_export.dart';
import 'package:dreamease/widgets/app_bar/appbar_leading_image.dart';
import 'package:dreamease/widgets/app_bar/custom_app_bar.dart';
import 'package:dreamease/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class HelptwentyScreen extends StatelessWidget {
  HelptwentyScreen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: SizedBox(
                width: mediaQueryData.size.width,
                child: SingleChildScrollView(
                    child: Column(children: [
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                          padding: EdgeInsets.only(left: 118.h),
                          child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CustomImageView(
                                    imagePath: ImageConstant.imgHealth24Outline,
                                    height: 30.v,
                                    width: 31.h),
                                Padding(
                                    padding: EdgeInsets.only(
                                        left: 10.h, bottom: 8.v),
                                    child: Text("Trợ giúp y tế",
                                        style: theme.textTheme.bodyMedium))
                              ]))),
                  SizedBox(height: 13.v),
                  Container(
                      margin: EdgeInsets.only(left: 15.h, right: 22.h),
                      padding: EdgeInsets.symmetric(
                          horizontal: 20.h, vertical: 12.v),
                      decoration: AppDecoration.fillGray.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder17),
                      child: SizedBox(
                          width: 294.h,
                          child: Text(
                              "Tổng đài 112  : Đây là tổng đài yêu cầu trợ giúp, tìm kiếm cứu nạn trong phạm vi cả nước. Khi các bạn cần sự trợ giúp về tìm kiếm cứu hộ cứu nạn trong các tình huống chủ yếu do thiên tai gây nên như bão lụt, lũ quét, lũ ống, sạt lở... hoặc những trường hợp trên sông,...\nTổng đài 113\nĐây là tổng đài khẩn cấp về an ninh trật tự, các vụ việc cướp giật, trộm cắp, đánh nhau, bạo hành, tai nạn giao thông.\nTổng đài 114 \nĐây là số tổng đài gọi cứu hỏa, cứu nạn trong trường hợp khẩn cấp, hỗ trợ giải cứu trong các tai nạn bất ngờ: hỏa hoạn, cháy nổ hoặc bị mắc kẹt trong những tòa nhà, thang máy, dưới hầm mỏ...\nTổng đài 115 \nĐây là số gọi cấp cứu khẩn cấp trong những trường hợp sức khỏe nghiêm trọng. Khi gọi tổng đài thì chúng ta sẽ được hỗ trợ đưa đến bệnh viện để cấp cứu nhanh chóng để bảo vệ an toàn tính mạng. \n(84 4) 3.942.5706 – 11 Tổng đài Unicef.\n0909 65 80 35  Đường dây nóng hỗ trợ sức khoẻ tâm thần. ",
                              maxLines: 25,
                              overflow: TextOverflow.ellipsis,
                              style: CustomTextStyles.bodyMedium14))),
                  SizedBox(height: 131.v),
                  Container(
                      height: 92.v,
                      width: double.maxFinite,
                      decoration: BoxDecoration(color: appTheme.blueGray90003))
                ]))),
            bottomNavigationBar: Padding(
                padding: EdgeInsets.symmetric(horizontal: 23.h),
                child: _buildBottomBar(context))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: double.maxFinite,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeft,
            margin: EdgeInsets.fromLTRB(31.h, 16.v, 320.h, 16.v),
            onTap: () {
              onTapArrowLeft(context);
            }));
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(onChanged: (BottomBarEnum type) {});
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}
