part of "../../import/app_import.dart";

class CustomAppbar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppbar({super.key, this.title});
  final String? title;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: Center(
        child: AppSvg.arrow,
      ),
      elevation: 0,
      backgroundColor: Colors.transparent,
      centerTitle: true,
      title: Text(
        title ?? '',
        textAlign: TextAlign.center,
        style: AppTheme.h5(context),
      ),
    );
  }

  @override
  Size get preferredSize =>
      Size.fromHeight(AppBar().preferredSize.height * 0.9);
}
