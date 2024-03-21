part of '../../../../../../core/import/app_import.dart';

class MyCartViewBody extends StatelessWidget {
  const MyCartViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          // * Space
          18.verticalSpace,
          // * Prudact Image
          Expanded(child: Image.asset(AppImages.basketImage)),
          // * Space
          25.verticalSpace,
          const CustomMyCardPricing(),
          // * Space
          16.verticalSpace,
          // * Custom Button
          CustomButton(
            text: 'Complete Payment',
            onTap: () {
              customBottomSheetCompletePayment(context);
            },
          ),
          // * Space
          12.verticalSpace,
        ],
      ),
    );
  }
}
