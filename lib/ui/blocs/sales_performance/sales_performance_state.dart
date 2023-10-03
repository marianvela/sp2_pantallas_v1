part of 'sales_performance_bloc.dart';

sealed class SalesPerformanceState {
  const SalesPerformanceState();
}

class SalesPerformanceInitial extends SalesPerformanceState {}

class SalesPerformanceLoading extends SalesPerformanceState {}

// se guarda la estructura que contiene todos los datos del sales performance

class SalesPerformanceLoaded extends SalesPerformanceState {
  final List<SalesPerformanceModel> salesPerformances;
  const SalesPerformanceLoaded({required this.salesPerformances});
}

class SalesPerformanceError extends SalesPerformanceState {
  final String message;

  const SalesPerformanceError({required this.message});
}
