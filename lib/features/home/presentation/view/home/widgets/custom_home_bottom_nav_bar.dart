part of "../../../../../../core/import/app_import.dart";

class CustomHomeBottomNavBar extends StatelessWidget {
  const CustomHomeBottomNavBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ConvexAppBar(
        height: 45,
        elevation: 10,
        color: Colors.blue.shade400,
        activeColor: Colors.blue.shade400,
        backgroundColor: Colors.white,
        curveSize: 65,
        items: const [
          TabItem(icon: Icons.home, title: "Home"),
          TabItem(icon: Icons.favorite, title: "favorite"),
          TabItem(icon: Icons.shopping_cart, title: "Cart"),
          TabItem(icon: Icons.shopping_bag, title: "Order"),
          TabItem(icon: Icons.interests, title: "More")
        ]);
  }
}
