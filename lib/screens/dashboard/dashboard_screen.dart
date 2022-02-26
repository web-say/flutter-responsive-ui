// import 'package:admin/sreens/dashboard/commponents/side_menu.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_responsive_ui/constants.dart';
// import 'package:flutter_svg/flutter_svg.dart';
// import 'components/chart.dart';
import 'components/header.dart';
import 'components/my_files.dart';
import 'components/storage_details.dart';
// import 'components/storage_info_card.dart';

// import '../../constants.dart';
// import 'components/header.dart';
// import 'components/my_files.dart';
// import 'components/recent_files.dart';
// import 'components/storage_details.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  // const DashboardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<PieChartSectionData> paiChartSectionData = [
      PieChartSectionData(
          value: 25, color: primaryColor, showTitle: false, radius: 25),
      PieChartSectionData(
          value: 20,
          color: const Color(0xFF26E5FF),
          showTitle: false,
          radius: 22),
      PieChartSectionData(
          value: 10,
          color: const Color(0xFFFFCF26),
          showTitle: false,
          radius: 19),
      PieChartSectionData(
          value: 25,
          color: const Color(0xFFEE2727),
          showTitle: false,
          radius: 16),
      PieChartSectionData(
          value: 25,
          color: primaryColor.withOpacity(0.1),
          showTitle: false,
          radius: 13),
    ];
    return SafeArea(
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(defaultPadding),
        child: Column(
          children: [
            const Header(),
            const SizedBox(
              height: defaultPadding,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Expanded(flex: 5, child: MyFiles()),
                const SizedBox(width: defaultPadding),
                Expanded(
                  flex: 2,
                  child:
                      StorageDetails(paiChartSectionData: paiChartSectionData),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
