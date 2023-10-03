import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:frontend_sp2/ui/blocs/rfm/rfm_bloc.dart';
import 'package:frontend_sp2/ui/feature/dashboard/rfm/rfm_performance_body.dart';
import 'package:frontend_sp2/ui/feature/dashboard/rfm/rfm_performance_header.dart';
import 'package:gap/gap.dart';

class RFMScreen extends StatelessWidget {
  const RFMScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: BlocProvider<RFMBloc>(
        create: (context) => RFMBloc(),
        child: const Column(
          children: [
            RFMHeader(),
            Gap(16.0),
            Divider(thickness: 3),
            Gap(16.0),
            RFMBody(),
          ],
        ),
      ),
    );
  }
}
