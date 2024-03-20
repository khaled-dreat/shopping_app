part of '../../import/app_import.dart';

class AppSnackBar {
  // ✅
  static void snackBarSuccess(
      {required String msg, required BuildContext context}) {
    showTopSnackBar(
      Overlay.of(context),
      CustomSnackBar.success(
        message: msg,
        backgroundColor: AppColors.lightModeSnack,

        // TODO :  AppTheme.isDark(context)
        // *   ? AppColors.darkModeSnack
        textStyle: TextStyle(
          color: AppColors.bgBlack,
          fontWeight: FontWeight.bold,
        ),
      ),
      displayDuration: const Duration(seconds: 1),
    );
  }

  // * ❌
  static void snackBarError(
      {required String msg, required BuildContext context}) {
    showTopSnackBar(
      Overlay.of(context),
      CustomSnackBar.error(message: msg),
      displayDuration: const Duration(seconds: 1),
    );
  }
}
