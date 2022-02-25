import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Row(
          children: [
            Expanded(
              child: Column(
                children: [
                  DrawerHeader(
                    child: Image.asset('assets/images/flutter.png'),
                  ),
                  DrawerListTile(
                    title: 'Dashboard',
                    svgSrc: 'assets/icons/menu_dashbord.svg',
                    press: () {},
                  ),
                  DrawerListTile(
                    title: 'Transaction',
                    svgSrc: 'assets/icons/menu_trnsaction.svg',
                    press: () {},
                  ),
                  DrawerListTile(
                    title: 'Task',
                    svgSrc: 'assets/icons/menu_task.svg',
                    press: () {},
                  ),
                  DrawerListTile(
                    title: 'Documents',
                    svgSrc: 'assets/icons/menu_doc.svg',
                    press: () {},
                  ),
                  DrawerListTile(
                    title: 'Store',
                    svgSrc: 'assets/icons/menu_store.svg',
                    press: () {},
                  ),
                  DrawerListTile(
                    title: 'Notification',
                    svgSrc: 'assets/icons/menu_notification.svg',
                    press: () {},
                  ),
                  DrawerListTile(
                    title: 'Profile',
                    svgSrc: 'assets/icons/menu_settings.svg',
                    press: () {},
                  ),
                  DrawerListTile(
                    title: 'Settings',
                    svgSrc: 'assets/icons/menu_trnsaction.svg',
                    press: () {},
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 5,
              child: Container(
                color: Colors.blue,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class DrawerListTile extends StatelessWidget {
  const DrawerListTile({
    Key? key,
    required this.title,
    required this.svgSrc,
    required this.press,
  }) : super(key: key);

  final String title, svgSrc;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: press,
      horizontalTitleGap: 0.0,
      leading: SvgPicture.asset(
        svgSrc, // 'assets/icons/menu_dashbord.svg',
        color: Colors.white54,
        height: 16,
      ),
      title: Text(title),
    );
  }
}
