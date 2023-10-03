import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:frontend_sp2/ui/feature/dashboard/rfm/widgets/rfm_bar_chart.dart';
import 'package:frontend_sp2/ui/feature/dashboard/rfm/widgets/rfm_pie_chart.dart';

import '../../../blocs/rfm/rfm_bloc.dart';

class RFMBody extends StatelessWidget {
  const RFMBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: BlocBuilder<RFMBloc, RFMState>(
        buildWhen: (previousState, state) => previousState != state,
        builder: (context, state) {
          if (state is RFMInitial) {
            return const SizedBox(
              width: 900,
              height: 500,
              child: RFMBarChart(
                  clients: ["A", "B", "C", "D", "E"],
                  moneySpent: [5000, 1000, 2500, 3000, 7777]),
              // child: RFMPieChart(clientDataMap: {
              //   "1": 100,
              //   "2": 200,
              //   "3": 300,
              //   "4": 400,
              //   "5": 500
              // }),
            );
          } else if (state is RFMLoading) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else if (state is RFMLoaded) {
            return Container(color: Colors.purple);
          } else if (state is RFMError) {
            return Container(color: Colors.red);
          } else {
            throw UnimplementedError();
          }
        },
      ),
    );
  }
}
