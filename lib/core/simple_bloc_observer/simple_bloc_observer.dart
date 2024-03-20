part of "../import/app_import.dart";

class SimpleBlocObserver extends BlocObserver {
  @override
  void onChange(BlocBase bloc, Change change) {
    dev.log(change.toString());
    super.onChange(bloc, change);
  }
}
