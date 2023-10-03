import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:frontend_sp2/ui/blocs/sales_performance/sales_performance_bloc.dart';
import 'package:gap/gap.dart';

class SalesPerformanceHeader extends StatefulWidget {
  const SalesPerformanceHeader({super.key});

  @override
  State<StatefulWidget> createState() => _SalesPerformanceHeaderState();
}

class _SalesPerformanceHeaderState extends State<SalesPerformanceHeader> {
  final double _maxDialogWidth = 500;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  late final TextEditingController _initialDate;

  @override
  void initState() {
    super.initState();

    _initialDate = TextEditingController();
  }

  void _selectYear({required BuildContext context}) async {
    // await AwesomeDialog(
    //   context: context,
    //   dialogType: DialogType.info,
    //   width: _maxDialogWidth,
    //   dismissOnTouchOutside: false,
    //   dismissOnBackKeyPress: false,
    //   showCloseIcon: true,
    //   title: 'Aviso',
    //   btnOkText: "Guardar",
    //   btnOkOnPress: () {},
    //   body: CalendarDatePicker2(
    //     config: CalendarDatePicker2Config(
    //       calendarType: CalendarDatePicker2Type.single,
    //       calendarViewMode: DatePickerMode.year,
    //     ),
    //     value: const [],
    //     onValueChanged: (dates) {
    //       final DateTime? rangeStartDate = dates.first;
    //
    //       _initialDate.text = rangeStartDate != null
    //           ? DateFormat("yyyy").format(rangeStartDate)
    //           : "";
    //
    //       // final DateTime? rangeStartDate = dates.first;
    //       // final DateTime? rangeEndDate = dates.last;
    //       //
    //       // _initialDate.text = rangeStartDate != null
    //       //     ? DateFormat("yyyy").format(rangeStartDate)
    //       //     : "";
    //       // _endDate.text = rangeEndDate != null
    //       //     ? DateFormat("yyyy").format(rangeEndDate)
    //       //     : "";
    //       //
    //       // if (_endDate.text == _initialDate.text) {
    //       //   _endDate.text = "";
    //       // }
    //     },
    //   ),
    // ).show();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          Text(
            "Sales Performance",
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          const Gap(16.0),
          Row(
            children: [
              Text("Select Year",
                  style: Theme.of(context).textTheme.titleSmall),
              const Gap(16.0),
              Expanded( // widget que utiliza completo el espacio disponible, encuentra el largo y ajusta los hijos de acuerdo al tamaño
                child: TextFormField( // widget for input
                  controller: _initialDate,
                  textAlign: TextAlign.end,
                  decoration: const InputDecoration(),
                  readOnly: false,
                  keyboardType: TextInputType.number,
                  inputFormatters: <TextInputFormatter>[
                    // for below version 2 use this
                    FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
// for version 2 and greater youcan also use this
                    FilteringTextInputFormatter.digitsOnly
                  ],
                  validator: (String? value) {
                    if (value == null) {
                      return null;
                    } else if (value.isEmpty) {
                      return "Fill the field";
                    }
                  },
                ),
              ),
              const Gap(16.0),
              FilledButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      final int year = int.parse(_initialDate.text);
                      context
                          .read<SalesPerformanceBloc>()
                          .add(SalesPerformanceNewQuery(year: year));
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
