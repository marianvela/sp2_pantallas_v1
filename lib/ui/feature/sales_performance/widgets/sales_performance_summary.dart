import 'package:flutter/material.dart';
import 'package:frontend_sp2/data/model/sales_performance.dart';
import 'package:frontend_sp2/ui/feature/sales_performance/widgets/sales_performance_bar_chart.dart';
import 'package:frontend_sp2/ui/feature/sales_performance/widgets/sales_performance_line_chart.dart';
import 'package:gap/gap.dart';

import '../../../../../utils/formatting.dart';
import '../../dashboard/widgets/dashboard_card.dart';

class SalesPerformanceSummary extends StatelessWidget {
  final double wrapPadding = 30.0;
  final SalesPerformanceModel salesPerformanceModel;

  const SalesPerformanceSummary(
      {super.key, required this.salesPerformanceModel});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 8.0,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 16.0),
        child: Column(
          children: [
            Text(
              "Year ${salesPerformanceModel.year}",
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const Gap(16.0),
            Wrap(
              alignment: WrapAlignment.center,
              direction: Axis.horizontal,
              spacing: wrapPadding,
              runSpacing: wrapPadding,
              children: [
                DashboardCardSimple(
                  label: "Total Annual Sales",
                  icon: Icons.bar_chart,
                  value: CurrencyFormat.usCurrency(
                      value: salesPerformanceModel.totalAnnualSales),
                ),
                DashboardCardSimple(
                  label: "Recent Month Sales",
                  icon: Icons.visibility,
                  value: CurrencyFormat.usCurrency(
                      value: salesPerformanceModel.recentMonthSales),
                ),
                DashboardCardSimple(
                  label: "Annual Sales Average",
                  icon: Icons.import_export,
                  value: CurrencyFormat.usCurrency(
                      value: salesPerformanceModel.averageSales),
                ),
                DashboardCardSimple(
                  label: "Monthly Variance",
                  icon: Icons.import_export,
                  value: CurrencyFormat.usCurrency(
                      value: salesPerformanceModel.salesStandardDeviation),
                ),
              ],
            ),
            const Gap(100.0),
            SizedBox(
              width: 900,
              height: 400,
              child: SalesPerformanceBarChart(
                months: salesPerformanceModel.months,
                sales: salesPerformanceModel.monthlyFilteredSales,
              ),
            ),
            const Gap(100.0),
            SizedBox(
              width: 900,
              height: 400,
              child: SalesPerformanceLineChart(
                months: salesPerformanceModel.months,
                salesQuantity:
                    salesPerformanceModel.monthlyFilteredSalesQuantity,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
