import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';


class MyPieChart extends StatelessWidget {
  const MyPieChart({Key? key}) : super(key: key);

  List<PieChartSectionData> getChartSections(
      BuildContext context, double radius) {
    return ([
      PieChartSectionData(
          color: Theme.of(context).primaryColor,
          value: 80,
          radius: radius,
          showTitle: false),
      PieChartSectionData(
        color: const Color(0xffCCECDF),
        value: 20,
        radius: radius,
        showTitle: false,
      ),
    ]);
  }

  @override
  Widget build(BuildContext context) {
    final Size _size = MediaQuery.of(context).size;
    return AspectRatio(
      aspectRatio: 1.5,
      child: Container(
        decoration: BoxDecoration(
            border: Border.all(color: Color(0xffCCECDF)),
            borderRadius: BorderRadius.circular(18)),
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Stack(
            children: [
              PieChart(
                PieChartData(
                    sections: getChartSections(
                        context, 30),
                    startDegreeOffset: 270),
              ),
              Center(
                child: Text(
                  '60%',
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context).primaryColor),
                ),
              ),
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Container(
                                width: 22,
                                height: 22,
                                decoration: BoxDecoration(
                                    color: Color(0xffCCECDF),
                                    borderRadius: BorderRadius.circular(50))),
                            const SizedBox(
                              width: 10,
                            ),
                            const Text(
                              '100',
                              style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.w600,
                              ),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        const Text(
                          'Total',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Container(
                                width: 22,
                                height: 22,
                                decoration: BoxDecoration(
                                    color: Theme.of(context).primaryColor,
                                    borderRadius: BorderRadius.circular(50))),
                            const SizedBox(
                              width: 10,
                            ),
                            const Text(
                              '60',
                              style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.w600,
                              ),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        const Text(
                          'Total',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}