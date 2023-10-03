import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:frontend_sp2/ui/blocs/sales_performance/sales_performance_bloc.dart';
import 'package:frontend_sp2/ui/feature/sales_performance/sales_performance_body.dart';
import 'package:frontend_sp2/ui/feature/sales_performance/sales_performance_header.dart';
import 'package:gap/gap.dart';

class SalesPerformanceScreen extends StatelessWidget {
  const SalesPerformanceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: BlocProvider<SalesPerformanceBloc>(
        create: (context) => SalesPerformanceBloc(),
        child: const Column(
          children: [
            SalesPerformanceHeader(),
            Gap(16.0),
            Divider(thickness: 3),
            Gap(16.0),
            SalesPerformanceBody(),
          ],
        ),
      ),
    );
  }
}
