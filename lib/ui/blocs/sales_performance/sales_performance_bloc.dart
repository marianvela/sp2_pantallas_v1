import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:frontend_sp2/data/model/sales_performance.dart';

import '../../../domain/sales_performance_use_case.dart';

part 'sales_performance_event.dart';
part 'sales_performance_state.dart';

class SalesPerformanceBloc
    extends Bloc<SalesPerformanceEvent, SalesPerformanceState> {
  SalesPerformanceBloc() : super(SalesPerformanceInitial()) {
    on<SalesPerformanceNewQuery>(_newQuery);
  }

  void _newQuery(SalesPerformanceNewQuery event,
      Emitter<SalesPerformanceState> emit) async {
    emit(SalesPerformanceLoading());

    final List<SalesPerformanceModel>? salesPerformances =
        await const SalesPerformanceUseCase()
            .getSalesPerformances(year: event.year);

    if (salesPerformances != null) {
      emit(SalesPerformanceLoaded(salesPerformances: salesPerformances));
    } else {
      emit(const SalesPerformanceError(
          message: "Error with SalesPerformance API"));
    }
  }
}
