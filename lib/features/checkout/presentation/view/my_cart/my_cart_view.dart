part of '../../../../../core/import/app_import.dart';

class MyCartView extends StatelessWidget {
  static const String nameRoute = "MyCartView";
  const MyCartView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppbar(title: 'My Cart'),
      body: MyCartViewBody(),
    );
  }
}
