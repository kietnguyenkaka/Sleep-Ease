import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body text style
  static get bodyLargeBeVietnamProWhiteA700 =>
      theme.textTheme.bodyLarge!.beVietnamPro.copyWith(
        color: appTheme.whiteA700,
      );
  static get bodyLargeGray600 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.gray600,
      );
  static get bodyLargeOpenSansBluegray400 =>
      theme.textTheme.bodyLarge!.openSans.copyWith(
        color: appTheme.blueGray400,
      );
  static get bodyLargeOpenSansWhiteA700 =>
      theme.textTheme.bodyLarge!.openSans.copyWith(
        color: appTheme.whiteA700,
      );
  static get bodyLargePoppinsWhiteA700 =>
      theme.textTheme.bodyLarge!.poppins.copyWith(
        color: appTheme.whiteA700,
      );
  static get bodyLargeRobotoWhiteA700 =>
      theme.textTheme.bodyLarge!.roboto.copyWith(
        color: appTheme.whiteA700,
      );
  static get bodyLargeRubikBlack90002 =>
      theme.textTheme.bodyLarge!.rubik.copyWith(
        color: appTheme.black90002.withOpacity(0.6),
        fontSize: 18.fSize,
      );
  static get bodyMedium14 => theme.textTheme.bodyMedium!.copyWith(
        fontSize: 14.fSize,
      );
  static get bodyMediumAlikeWhiteA700 =>
      theme.textTheme.bodyMedium!.alike.copyWith(
        color: appTheme.whiteA700.withOpacity(0.7),
      );
  static get bodyMediumGray40001 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray40001,
        fontSize: 14.fSize,
      );
  static get bodyMediumInter => theme.textTheme.bodyMedium!.inter.copyWith(
        fontSize: 14.fSize,
      );
  static get bodyMediumInterBlack90001 =>
      theme.textTheme.bodyMedium!.inter.copyWith(
        color: appTheme.black90001,
        fontSize: 14.fSize,
      );
  static get bodyMediumInterGray600 =>
      theme.textTheme.bodyMedium!.inter.copyWith(
        color: appTheme.gray600,
        fontSize: 14.fSize,
      );
  static get bodySmallBeVietnamProGray90004 =>
      theme.textTheme.bodySmall!.beVietnamPro.copyWith(
        color: appTheme.gray90004,
      );
  static get bodySmallBlueA200 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.blueA200.withOpacity(0.6),
      );
  static get bodySmallBlueA200_1 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.blueA200,
      );
  static get bodySmallOpenSansBluegray400 =>
      theme.textTheme.bodySmall!.openSans.copyWith(
        color: appTheme.blueGray400,
        fontSize: 10.fSize,
      );
  static get bodySmallOpenSansGray40001 =>
      theme.textTheme.bodySmall!.openSans.copyWith(
        color: appTheme.gray40001,
      );
  static get bodySmallOpenSansWhiteA700 =>
      theme.textTheme.bodySmall!.openSans.copyWith(
        color: appTheme.whiteA700,
      );
  static get bodySmallPoppinsGray500 =>
      theme.textTheme.bodySmall!.poppins.copyWith(
        color: appTheme.gray500,
      );
  static get bodySmallWhiteA700 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.whiteA700,
        fontWeight: FontWeight.w300,
      );
  static get bodySmallWhiteA700_1 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.whiteA700,
      );
  // Display text style
  static get displayMedium40 => theme.textTheme.displayMedium!.copyWith(
        fontSize: 40.fSize,
      );
  static get displayMediumOpenSans =>
      theme.textTheme.displayMedium!.openSans.copyWith(
        fontWeight: FontWeight.w600,
      );
  static get displayMediumOpenSansRegular =>
      theme.textTheme.displayMedium!.openSans.copyWith(
        fontWeight: FontWeight.w400,
      );
  // Headline text style
  static get headlineSmallOpenSans =>
      theme.textTheme.headlineSmall!.openSans.copyWith(
        fontWeight: FontWeight.w400,
      );
  // Label text style
  static get labelLargeInter => theme.textTheme.labelLarge!.inter.copyWith(
        fontWeight: FontWeight.w600,
      );
  static get labelLargeVNtimesNewRomanGray90004 =>
      theme.textTheme.labelLarge!.vNtimesNewRoman.copyWith(
        color: appTheme.gray90004,
        fontWeight: FontWeight.w700,
      );
  static get labelLargeWhiteA700 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.whiteA700.withOpacity(0.7),
      );
  static get labelMediumOpenSansWhiteA700 =>
      theme.textTheme.labelMedium!.openSans.copyWith(
        color: appTheme.whiteA700,
      );
  static get labelMediumRobotoWhiteA700 =>
      theme.textTheme.labelMedium!.roboto.copyWith(
        color: appTheme.whiteA700,
        fontWeight: FontWeight.w500,
      );
  // Title text style
  static get titleLargeAsapWhiteA700 =>
      theme.textTheme.titleLarge!.asap.copyWith(
        color: appTheme.whiteA700,
        fontWeight: FontWeight.w500,
      );
  static get titleLargeBeVietnamProBlack90002 =>
      theme.textTheme.titleLarge!.beVietnamPro.copyWith(
        color: appTheme.black90002,
        fontWeight: FontWeight.w500,
      );
  static get titleLargeBeVietnamProPurple90001 =>
      theme.textTheme.titleLarge!.beVietnamPro.copyWith(
        color: appTheme.purple90001,
        fontWeight: FontWeight.w500,
      );
  static get titleLargeOpenSansWhiteA700 =>
      theme.textTheme.titleLarge!.openSans.copyWith(
        color: appTheme.whiteA700,
        fontWeight: FontWeight.w400,
      );
  static get titleLargeOpenSansWhiteA700SemiBold =>
      theme.textTheme.titleLarge!.openSans.copyWith(
        color: appTheme.whiteA700,
        fontWeight: FontWeight.w600,
      );
  static get titleLargePoppinsWhiteA700 =>
      theme.textTheme.titleLarge!.poppins.copyWith(
        color: appTheme.whiteA700,
      );
  static get titleLargeRobotoWhiteA700 =>
      theme.textTheme.titleLarge!.roboto.copyWith(
        color: appTheme.whiteA700,
        fontWeight: FontWeight.w900,
      );
  static get titleLargeRobotoWhiteA700_1 =>
      theme.textTheme.titleLarge!.roboto.copyWith(
        color: appTheme.whiteA700,
      );
  static get titleLargeRubikBlack90002 =>
      theme.textTheme.titleLarge!.rubik.copyWith(
        color: appTheme.black90002,
        fontWeight: FontWeight.w500,
      );
  static get titleLargeRubikPurple90001 =>
      theme.textTheme.titleLarge!.rubik.copyWith(
        color: appTheme.purple90001,
        fontWeight: FontWeight.w500,
      );
  static get titleLargeTelexBlack90002 =>
      theme.textTheme.titleLarge!.telex.copyWith(
        color: appTheme.black90002,
        fontWeight: FontWeight.w400,
      );
  static get titleMediumInterBluegray50 =>
      theme.textTheme.titleMedium!.inter.copyWith(
        color: appTheme.blueGray50,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumInterDeeppurple300 =>
      theme.textTheme.titleMedium!.inter.copyWith(
        color: appTheme.deepPurple300,
      );
  static get titleMediumInterDeeppurple300_1 =>
      theme.textTheme.titleMedium!.inter.copyWith(
        color: appTheme.deepPurple300,
      );
  static get titleMediumPoppins =>
      theme.textTheme.titleMedium!.poppins.copyWith(
        fontWeight: FontWeight.w600,
      );
  static get titleMediumPoppinsDeeppurple800 =>
      theme.textTheme.titleMedium!.poppins.copyWith(
        color: appTheme.deepPurple800,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumRoboto => theme.textTheme.titleMedium!.roboto.copyWith(
        fontWeight: FontWeight.w600,
      );
  static get titleMediumRobotoBluegray700 =>
      theme.textTheme.titleMedium!.roboto.copyWith(
        color: appTheme.blueGray700,
      );
  static get titleSmallInterBluegray50 =>
      theme.textTheme.titleSmall!.inter.copyWith(
        color: appTheme.blueGray50,
        fontSize: 15.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleSmallOpenSans => theme.textTheme.titleSmall!.openSans;
  static get titleSmallOpenSansBold =>
      theme.textTheme.titleSmall!.openSans.copyWith(
        fontWeight: FontWeight.w700,
      );
  static get titleSmallOpenSans_1 => theme.textTheme.titleSmall!.openSans;
  static get titleSmallPoppins => theme.textTheme.titleSmall!.poppins.copyWith(
        fontWeight: FontWeight.w700,
      );
  static get titleSmallPoppinsWhiteA700 =>
      theme.textTheme.titleSmall!.poppins.copyWith(
        color: appTheme.whiteA700.withOpacity(0.85),
        fontWeight: FontWeight.w500,
      );
  static get titleSmallRoboto => theme.textTheme.titleSmall!.roboto.copyWith(
        fontSize: 15.fSize,
      );
  static get titleSmallRobotoDeeppurple800 =>
      theme.textTheme.titleSmall!.roboto.copyWith(
        color: appTheme.deepPurple800,
        fontSize: 15.fSize,
      );
}

extension on TextStyle {
  TextStyle get openSans {
    return copyWith(
      fontFamily: 'Open Sans',
    );
  }

  TextStyle get roboto {
    return copyWith(
      fontFamily: 'Roboto',
    );
  }

  TextStyle get beVietnamPro {
    return copyWith(
      fontFamily: 'Be Vietnam Pro',
    );
  }

  TextStyle get rubik {
    return copyWith(
      fontFamily: 'Rubik',
    );
  }

  TextStyle get telex {
    return copyWith(
      fontFamily: 'Telex',
    );
  }

  TextStyle get inter {
    return copyWith(
      fontFamily: 'Inter',
    );
  }

  TextStyle get vNtimesNewRoman {
    return copyWith(
      fontFamily: 'VNtimes New Roman',
    );
  }

  TextStyle get asap {
    return copyWith(
      fontFamily: 'Asap',
    );
  }

  TextStyle get poppins {
    return copyWith(
      fontFamily: 'Poppins',
    );
  }

  TextStyle get aBeeZee {
    return copyWith(
      fontFamily: 'ABeeZee',
    );
  }

  TextStyle get alike {
    return copyWith(
      fontFamily: 'Alike',
    );
  }
}
