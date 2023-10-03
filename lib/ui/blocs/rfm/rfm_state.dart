part of 'rfm_bloc.dart';

sealed class RFMState {
  const RFMState();
}

class RFMInitial extends RFMState {}

class RFMLoading extends RFMState {}

class RFMLoaded extends RFMState {
  const RFMLoaded();
}

class RFMError extends RFMState {
  final String message;

  const RFMError({required this.message});
}
