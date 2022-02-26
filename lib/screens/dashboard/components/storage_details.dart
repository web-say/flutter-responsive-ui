import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_responsive_ui/screens/dashboard/components/storage_info_card.dart';

import '../../../constants.dart';
import 'chart.dart';

class StorageDetails extends StatelessWidget {
  const StorageDetails({
    Key? key,
    required this.paiChartSectionData,
  }) : super(key: key);

  final List<PieChartSectionData> paiChartSectionData;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(defaultPadding),
      decoration: const BoxDecoration(
          color: secondaryColor,
          borderRadius: BorderRadius.all(Radius.circular(10))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Storage Details",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          ),
          Chart(paiChartSectionData: paiChartSectionData),
          const StorageInfoCard(
            svgSrc: "assets/icons/menu_doc.svg",
            title: "Documents Files",
            amountOfFiles: "1.3GB",
            numOfFiles: 1328,
          ),
          const StorageInfoCard(
            svgSrc: "assets/icons/media.svg",
            title: "Medis Files",
            amountOfFiles: "2.3GB",
            numOfFiles: 1328,
          ),
          const StorageInfoCard(
            svgSrc: "assets/icons/other_files.svg",
            title: "Other Files",
            amountOfFiles: "3.3GB",
            numOfFiles: 1328,
          ),
          const StorageInfoCard(
            svgSrc: "assets/icons/folders.svg",
            title: "Unknown",
            amountOfFiles: "4.3GB",
            numOfFiles: 1328,
          ),
        ],
      ),
    );
  }
}
