import 'package:flutter_bloc/flutter_bloc.dart';

part 'rfm_event.dart';
part 'rfm_state.dart';

class RFMBloc extends Bloc<RFMEvent, RFMState> {
  RFMBloc() : super(RFMInitial()) {
    on<RFMNewQuery>(_newQuery);
  }

  void _newQuery(RFMNewQuery event, Emitter<RFMState> emit) async {
    emit(RFMLoading());

    if (true) {
      emit(RFMLoaded());
    } else {
      emit(const RFMError(message: "Error with RFM API"));
    }
  }
}
