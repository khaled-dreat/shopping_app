part of '../import/app_import.dart';

class AppSvg {
  static double xlg = (AppDime.xlg / AppDime.one_25); // 25

  static SvgPicture favorite = SvgPicture.asset(
    AppIcons.favorite,
    width: xlg.w,
    height: xlg.w,
  );
  static final SvgPicture lang = SvgPicture.asset(
    AppIcons.translate,
    width: xlg.w,
    height: xlg.w,
  );
  static final SvgPicture arrow = SvgPicture.asset(
    AppIcons.arrow,
    width: xlg.w,
    height: xlg.w,
  );

  static final SvgPicture category = SvgPicture.asset(
    AppIcons.category,
    width: xlg.w,
    height: xlg.w,
  );

  static final SvgPicture terms = SvgPicture.asset(
    AppIcons.terms,
    width: xlg.w,
    height: xlg.w,
  );
  static final SvgPicture logout = SvgPicture.asset(
    AppIcons.logout,
    width: xlg.w,
    height: xlg.w,
  );
}
