import 'package:flutter/material.dart';
import 'package:frontend_sp2/ui/feature/dashboard/widgets/dashboard_card.dart';
import 'package:frontend_sp2/ui/feature/dashboard/widgets/dashboard_card_img.dart';

class DashboardScreen extends StatelessWidget {
  final double wrapPadding = 30.0;
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Center(
        child: ListView(
          children: [
            Wrap(
              alignment: WrapAlignment.center,
              direction: Axis.horizontal,
              spacing: wrapPadding,
              runSpacing: wrapPadding,
              children: const [
                DashboardCardSimple(
                  label: "Current Month Revenue",
                  icon: Icons.bar_chart,
                  value: "\$123,456.00",
                ),
                DashboardCardSimple(
                  label: "Today's Visits",
                  icon: Icons.visibility,
                  value: "1,456",
                ),
                DashboardCardSimple(
                  label: "Today's Feedbacks",
                  icon: Icons.import_export,
                  value: "2,300",
                ),
              ],
            ),
            Wrap(
              alignment: WrapAlignment.center,
              direction: Axis.horizontal,
              spacing: wrapPadding,
              runSpacing: wrapPadding,
              children: const [
                DashboardCardImage(
                  label: "Monthly Sales",
                  icon: Icons.bar_chart,
                  value: "assets/img/monthly_sales.png",
                ),
                DashboardCardImage(
                  label: "New Monthly Customers",
                  icon: Icons.bar_chart,
                  value: "assets/img/graph.png",
                ),
                DashboardCardImage(
                  label: "Revenue Trend",
                  icon: Icons.bar_chart,
                  value: "assets/img/trend.png",
                ),
              ],

            ),
          ],
        ),
      ),
    );
  }
}
