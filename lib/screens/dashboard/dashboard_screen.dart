// import 'package:admin/sreens/dashboard/commponents/side_menu.dart';
import 'package:flutter/material.dart';
import 'package:flutter_responsive_ui/constants.dart';
import 'components/header.dart';

// import '../../constants.dart';
// import 'components/header.dart';
// import 'components/my_files.dart';
// import 'components/recent_files.dart';
// import 'components/storage_details.dart';

class DashboardScreen extends StatelessWidget {
  // const DashboardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        padding: EdgeInsets.all(defaultPadding),
        child: Column(
          children: [
            Header(),
            SizedBox(
              height: defaultPadding,
            ),
            Row(
              children: [
                Expanded(
                    child: Container(
                  height: 500,
                  color: Colors.white,
                )),
                SizedBox(width: defaultPadding),
                Expanded(
                    child: Container(
                  height: 500,
                  color: primaryColor,
                ))
              ],
            )
          ],
        ),
      ),
    );
  }
}
