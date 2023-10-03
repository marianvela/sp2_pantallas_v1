import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:frontend_sp2/ui/blocs/rfm/rfm_bloc.dart';
import 'package:frontend_sp2/ui/blocs/sales_performance/sales_performance_bloc.dart';
import 'package:gap/gap.dart';

class RFMHeader extends StatefulWidget {
  const RFMHeader({super.key});

  @override
  State<StatefulWidget> createState() => _RFMHeaderState();
}

class _RFMHeaderState extends State<RFMHeader> {
  final double _maxDialogWidth = 500;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  late final TextEditingController _initialDate, _endDate;

  @override
  void initState() {
    super.initState();

    _initialDate = TextEditingController();
    _endDate = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          Text(
            "Recency-Frequency-Monetary",
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          const Gap(16.0),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text("Initial Year\t",
                            style: Theme.of(context).textTheme.titleSmall),
                        const Gap(16.0),
                        Expanded(
                          child: TextFormField(
                            controller: _initialDate,
                            textAlign: TextAlign.end,
                            decoration: const InputDecoration(),
                            readOnly: false,
                            keyboardType: TextInputType.number,
                            inputFormatters: <TextInputFormatter>[
                              FilteringTextInputFormatter.allow(
                                  RegExp(r'[0-9]')),
                              FilteringTextInputFormatter.digitsOnly
                            ],
                            validator: (String? value) {
                              if (value == null) {
                                return null;
                              } else if (value.isEmpty) {
                                return "Fill the field";
                              } else {
                                return null;
                              }
                            },
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text("End Year\t\t",
                            style: Theme.of(context).textTheme.titleSmall),
                        const Gap(16.0),
                        Expanded(
                          child: TextFormField(
                            controller: _endDate,
                            textAlign: TextAlign.end,
                            decoration: const InputDecoration(
                              label: Text("(Optional)"),
                            ),
                            readOnly: false,
                            keyboardType: TextInputType.number,
                            inputFormatters: <TextInputFormatter>[
                              FilteringTextInputFormatter.allow(
                                  RegExp(r'[0-9]')),
                              FilteringTextInputFormatter.digitsOnly
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const Gap(16.0),
              FilledButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      final int initialYear = int.parse(_initialDate.text);
                      final int? endYear = _endDate.text.isEmpty
                          ? null
                          : int.parse(_endDate.text);

                      if (!(endYear != null && initialYear > endYear)) {
                        context.read<RFMBloc>().add(RFMNewQuery(
                            initialYear: initialYear, endYear: endYear));
                      }
                    }
                  },
                  child: const Text("Checkout")),
            ],
          ),
        ],
      ),
    );
  }
}
