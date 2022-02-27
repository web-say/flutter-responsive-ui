import 'package:flutter/material.dart';
import 'package:flutter_responsive_ui/constants.dart';
import 'package:flutter_responsive_ui/models/RecentFile.dart';
import 'package:flutter_svg/flutter_svg.dart';

class RecentFiles extends StatelessWidget {
  const RecentFiles({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(defaultPadding),
      decoration: BoxDecoration(
        color: secondaryColor,
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Resent Files",
            style: Theme.of(context).textTheme.subtitle1,
          ),
          SizedBox(
            width: double.infinity,
            child: DataTable(
              horizontalMargin: 0,
              columnSpacing: defaultPadding,
              columns: [
                DataColumn(
                  label: Text("File Name"),
                ),
                DataColumn(
                  label: Text("Date"),
                ),
                DataColumn(
                  label: Text("Size"),
                ),
              ],
              rows: List.generate(demoRecentFiles.length,
                  (index) => recentFilesDataRow(demoRecentFiles[index])),
            ),
          ),
        ],
      ),
    );
  }
}

DataRow recentFilesDataRow(RecentFile feleInfo) {
  return DataRow(
    cells: [
      DataCell(
        Row(
          children: [
            SvgPicture.asset(
              feleInfo.icon,
              height: 30,
              width: 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
              child: Text(feleInfo.title),
            ),
          ],
        ),
      ),
      DataCell(
        Text(feleInfo.date),
      ),
      DataCell(
        Text(feleInfo.size),
      ),
    ],
  );
}
