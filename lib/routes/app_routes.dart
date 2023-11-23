import 'package:flutter/material.dart';
import 'package:dreamease/presentation/loadingscreenone_screen/loadingscreenone_screen.dart';
import 'package:dreamease/presentation/inputnametwo_screen/inputnametwo_screen.dart';
import 'package:dreamease/presentation/suggestthree_screen/suggestthree_screen.dart';
import 'package:dreamease/presentation/homefive_screen/homefive_screen.dart';
import 'package:dreamease/presentation/musicplaylistseven_screen/musicplaylistseven_screen.dart';
import 'package:dreamease/presentation/musicsongeight_screen/musicsongeight_screen.dart';
import 'package:dreamease/presentation/coutdownmusicnine_screen/coutdownmusicnine_screen.dart';
import 'package:dreamease/presentation/discoverten_container_screen/discoverten_container_screen.dart';
import 'package:dreamease/presentation/tipseleven_screen/tipseleven_screen.dart';
import 'package:dreamease/presentation/enterthetipstwelve_screen/enterthetipstwelve_screen.dart';
import 'package:dreamease/presentation/sleepmodethirteen_screen/sleepmodethirteen_screen.dart';
import 'package:dreamease/presentation/suggestfourteen_screen/suggestfourteen_screen.dart';
import 'package:dreamease/presentation/sleepreportfifteen_screen/sleepreportfifteen_screen.dart';
import 'package:dreamease/presentation/profilesixteen_screen/profilesixteen_screen.dart';
import 'package:dreamease/presentation/feedbacksnineteen_screen/feedbacksnineteen_screen.dart';
import 'package:dreamease/presentation/helptwenty_screen/helptwenty_screen.dart';
import 'package:dreamease/presentation/archivementsseventeen_screen/archivementsseventeen_screen.dart';
import 'package:dreamease/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String loadingscreenoneScreen = '/loadingscreenone_screen';

  static const String inputnametwoScreen = '/inputnametwo_screen';

  static const String suggestthreeScreen = '/suggestthree_screen';

  static const String homefourPage = '/homefour_page';

  static const String homefiveScreen = '/homefive_screen';

  static const String musicsixPage = '/musicsix_page';

  static const String musicplaylistsevenScreen = '/musicplaylistseven_screen';

  static const String musicsongeightScreen = '/musicsongeight_screen';

  static const String coutdownmusicnineScreen = '/coutdownmusicnine_screen';

  static const String discovertenPage = '/discoverten_page';

  static const String discovertenContainerScreen =
      '/discoverten_container_screen';

  static const String tipselevenScreen = '/tipseleven_screen';

  static const String enterthetipstwelveScreen = '/enterthetipstwelve_screen';

  static const String sleepmodethirteenScreen = '/sleepmodethirteen_screen';

  static const String suggestfourteenScreen = '/suggestfourteen_screen';

  static const String sleepreportfifteenScreen = '/sleepreportfifteen_screen';

  static const String notificationeighteenPage = '/notificationeighteen_page';

  static const String profilesixteenScreen = '/profilesixteen_screen';

  static const String feedbacksnineteenScreen = '/feedbacksnineteen_screen';

  static const String helptwentyScreen = '/helptwenty_screen';

  static const String archivementsseventeenScreen =
      '/archivementsseventeen_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static Map<String, WidgetBuilder> get routes => {
        loadingscreenoneScreen: LoadingscreenoneScreen.builder,
        inputnametwoScreen: InputnametwoScreen.builder,
        suggestthreeScreen: SuggestthreeScreen.builder,
        homefiveScreen: HomefiveScreen.builder,
        musicplaylistsevenScreen: MusicplaylistsevenScreen.builder,
        musicsongeightScreen: MusicsongeightScreen.builder,
        coutdownmusicnineScreen: CoutdownmusicnineScreen.builder,
        discovertenContainerScreen: DiscovertenContainerScreen.builder,
        tipselevenScreen: TipselevenScreen.builder,
        enterthetipstwelveScreen: EnterthetipstwelveScreen.builder,
        sleepmodethirteenScreen: SleepmodethirteenScreen.builder,
        suggestfourteenScreen: SuggestfourteenScreen.builder,
        sleepreportfifteenScreen: SleepreportfifteenScreen.builder,
        profilesixteenScreen: ProfilesixteenScreen.builder,
        feedbacksnineteenScreen: FeedbacksnineteenScreen.builder,
        helptwentyScreen: HelptwentyScreen.builder,
        archivementsseventeenScreen: ArchivementsseventeenScreen.builder,
        appNavigationScreen: AppNavigationScreen.builder,
        initialRoute: LoadingscreenoneScreen.builder
      };
}
