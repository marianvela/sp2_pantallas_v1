import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:frontend_sp2/utils/formatting.dart';

class RFMBarChart extends StatelessWidget {
  final List<String> clients;
  final List<double> moneySpent;
  const RFMBarChart(
      {required this.clients, required this.moneySpent, super.key});

  FlTitlesData get titlesData => FlTitlesData(
        show: true,
        bottomTitles: AxisTitles(
          sideTitles: SideTitles(
            showTitles: true,
            reservedSize: 30,
            getTitlesWidget: (double value, TitleMeta meta) => SideTitleWidget(
              axisSide: meta.axisSide,
              space: 4,
              child: Text(
                clients[value.toInt()],
              ),
            ),
          ),
        ),
        leftTitles: AxisTitles(
          sideTitles: SideTitles(
            showTitles: true,
            reservedSize: 40,
            getTitlesWidget: (double value, TitleMeta meta) {
              if (value == meta.max) {
                return Container();
              }
              const style = TextStyle(
                fontSize: 10,
              );
              return SideTitleWidget(
                axisSide: meta.axisSide,
                child: Text(
                  meta.formattedValue,
                  style: style,
                ),
              );
            },
          ),
        ),
        topTitles: const AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
        rightTitles: const AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
      );

  FlBorderData get borderData => FlBorderData(show: true);

  List<BarChartGroupData> get barGroups =>
      List<int>.generate(clients.length, (index) => index)
          .map(
            (index) => BarChartGroupData(
              barsSpace: 4,
              x: index,
              barRods: [BarChartRodData(toY: moneySpent[index])],
              //showingTooltipIndicators: [0],
            ),
          )
          .toList();

  BarTouchData get barTouchData => BarTouchData(
        enabled: true,
        touchTooltipData: BarTouchTooltipData(
          tooltipBgColor: Colors.transparent,
          tooltipPadding: EdgeInsets.zero,
          tooltipMargin: 8,
          getTooltipItem: (
            BarChartGroupData group,
            int groupIndex,
            BarChartRodData rod,
            int rodIndex,
          ) {
            return BarTooltipItem(
              CurrencyFormat.usCurrency(value: rod.toY),
              const TextStyle(
                fontWeight: FontWeight.bold,
              ),
            );
          },
        ),
      );

  @override
  Widget build(BuildContext context) {
    return BarChart(
      BarChartData(
        barTouchData: barTouchData,
        titlesData: titlesData,
        borderData: borderData,
        barGroups: barGroups,
        gridData: FlGridData(
          show: true,
          checkToShowHorizontalLine: (value) => value % 10 == 0,
          getDrawingHorizontalLine: (value) => const FlLine(
            color: Colors.black26,
            strokeWidth: 1,
          ),
          drawVerticalLine: false,
        ),
        alignment: BarChartAlignment.spaceAround,
        //maxY: 20,
      ),
    );
  }
}
