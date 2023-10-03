part of 'sales_performance_bloc.dart';

sealed class SalesPerformanceEvent {
  const SalesPerformanceEvent();
}

// CLASES que modelan los eventos, en este caso solamente un botón que genera un nuevo query
// el método de SalesPerformanceNewQuery ncesita recibir parametros requeridos por el dashboard

final class SalesPerformanceNewQuery extends SalesPerformanceEvent {
  final int year;
  const SalesPerformanceNewQuery({required this.year});
}

