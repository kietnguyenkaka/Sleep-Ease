import 'package:dreamease/core/app_export.dart';
import 'package:flutter/material.dart';

class AppNavigationScreen extends StatelessWidget {
  const AppNavigationScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0XFFFFFFFF),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              _buildAppNavigation(context),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0XFFFFFFFF),
                    ),
                    child: Column(
                      children: [
                        _buildScreenTitle(
                          context,
                          screenTitle: "LoadingScreenOne",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.loadingscreenoneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "InputnameTwo",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.inputnametwoScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "SuggestThree",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.suggestthreeScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "homeFive",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.homefiveScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "musicPlaylistSeven",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.musicplaylistsevenScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "musicSongEight",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.musicsongeightScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "CoutDownMusicNine",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.coutdownmusicnineScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "DiscoverTen - Container",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.discovertenContainerScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "TipsEleven",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.tipselevenScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "EntertheTipsTwelve",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.enterthetipstwelveScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "SleepModeThirteen",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.sleepmodethirteenScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "SuggestFourteen",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.suggestfourteenScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "SleepReportFifteen",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.sleepreportfifteenScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "profileSixteen",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.profilesixteenScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "feedbacksNineteen",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.feedbacksnineteenScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "HelpTwenty",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.helptwentyScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "ArchivementsSeventeen",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.archivementsseventeenScreen),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildAppNavigation(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0XFFFFFFFF),
      ),
      child: Column(
        children: [
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: Text(
                "App Navigation",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF000000),
                  fontSize: 20.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 20.h),
              child: Text(
                "Check your app's UI from the below demo screens of your app.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF888888),
                  fontSize: 16.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 5.v),
          Divider(
            height: 1.v,
            thickness: 1.v,
            color: Color(0XFF000000),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildScreenTitle(
    BuildContext context, {
    required String screenTitle,
    Function? onTapScreenTitle,
  }) {
    return GestureDetector(
      onTap: () {
        onTapScreenTitle!.call();
      },
      child: Container(
        decoration: BoxDecoration(
          color: Color(0XFFFFFFFF),
        ),
        child: Column(
          children: [
            SizedBox(height: 10.v),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                child: Text(
                  screenTitle,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0XFF000000),
                    fontSize: 20.fSize,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.v),
            SizedBox(height: 5.v),
            Divider(
              height: 1.v,
              thickness: 1.v,
              color: Color(0XFF888888),
            ),
          ],
        ),
      ),
    );
  }

  /// Common click event
  void onTapScreenTitle(
    BuildContext context,
    String routeName,
  ) {
    Navigator.pushNamed(context, routeName);
  }
}
