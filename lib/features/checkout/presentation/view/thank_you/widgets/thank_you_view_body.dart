part of "../../../../../../core/import/app_import.dart";

class ThankYouViewBody extends StatelessWidget {
  const ThankYouViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          // * Thank You Card
          const ThankYouCard(),
          // * Dashed Line
          Positioned(
            bottom: 1.sh * .2 + 20,
            left: 20 + 8,
            right: 20 + 8,
            child: const CustomDashedLine(),
          ),
          // * Left Custom shaped container
          Positioned(
              left: -20,
              bottom: 1.sh * .2,
              child: const CircleAvatar(
                backgroundColor: Colors.white,
              )),
          // * Right Custom shaped container
          Positioned(
              right: -20,
              bottom: 1.sh * .2,
              child: const CircleAvatar(
                backgroundColor: Colors.white,
              )),
          // * Check Icons
          const Positioned(
            top: -50,
            left: 0,
            right: 0,
            child: CustomCheckIcon(),
          ),
        ],
      ),
    );
  }
}
