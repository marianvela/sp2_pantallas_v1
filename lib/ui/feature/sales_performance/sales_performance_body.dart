import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:frontend_sp2/ui/blocs/sales_performance/sales_performance_bloc.dart';
import 'package:frontend_sp2/ui/feature/sales_performance/widgets/sales_performance_summary.dart';

class SalesPerformanceBody extends StatelessWidget {
  const SalesPerformanceBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: BlocBuilder<SalesPerformanceBloc, SalesPerformanceState>(
        buildWhen: (previousState, state) => previousState != state,
        builder: (context, state) {
          if (state is SalesPerformanceInitial) {
            return const SizedBox();
          } else if (state is SalesPerformanceLoading) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else if (state is SalesPerformanceLoaded) {
            return ListView(
              padding: const EdgeInsets.only(right: 20.0),
              children: state.salesPerformances
                  .map(
                    (e) => Padding(
                      padding: const EdgeInsets.symmetric(vertical: 20.0),
                      child: SalesPerformanceSummary(salesPerformanceModel: e),
                    ),
                  )
                  .toList(),
            );
            //return Container(color: Colors.purple);
          } else if (state is SalesPerformanceError) {
            return Container(color: Colors.red);
          } else {
            throw UnimplementedError();
          }
        },
      ),
    );
  }
}
