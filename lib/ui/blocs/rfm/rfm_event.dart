part of 'rfm_bloc.dart';

sealed class RFMEvent {
  const RFMEvent();
}

final class RFMNewQuery extends RFMEvent {
  final int initialYear;
  final int? endYear;
  const RFMNewQuery({required this.initialYear, this.endYear});
}
