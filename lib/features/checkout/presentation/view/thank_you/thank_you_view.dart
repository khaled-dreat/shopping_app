part of "../../../../../core/import/app_import.dart";

class ThankYouView extends StatelessWidget {
  static String nameRoute = "ThankYouView";
  const ThankYouView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppbar(),
      body: Transform.translate(
          offset: const Offset(0, -16), child: const ThankYouViewBody()),
    );
  }
}
