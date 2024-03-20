part of "../core/import/app_import.dart";

class AppStart extends StatelessWidget {
  const AppStart({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      builder: (context, child) => MaterialApp(
        debugShowCheckedModeBanner: false,
        // * Theme
        theme: AppThemeChoose.light(context),
        darkTheme: AppThemeChoose.dark(context),
        themeMode: ThemeMode.dark,
        // * Route
        routes: AppRoute.routes,
        initialRoute: AppRoute.inteRoute,
      ),
    );
  }
}
