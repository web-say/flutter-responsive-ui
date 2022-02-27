import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import '../../../constants.dart';

class Chart extends StatelessWidget {
  const Chart({
    Key? key,
    required this.paiChartSectionData,
  }) : super(key: key);

  final List<PieChartSectionData> paiChartSectionData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: Stack(
        children: [
          PieChart(
            PieChartData(
                sectionsSpace: 0,
                centerSpaceRadius: 70,
                startDegreeOffset: -90,
                sections: paiChartSectionData),
          ),
          Positioned.fill(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                SizedBox(
                  height: defaultPadding,
                ),
                Text(
                  "29.1",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      height: 0.5,
                      fontSize: 38),
                ),
                Text("of 128GB"),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
