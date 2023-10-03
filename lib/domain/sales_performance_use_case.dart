import '../data/datasource/sales_performance_api.dart';
import '../data/model/sales_performance.dart';

class SalesPerformanceUseCase {
  final SalesPerformanceAPI _api;
  const SalesPerformanceUseCase() : _api = const SalesPerformanceAPI();

  Future<List<SalesPerformanceModel>?> getSalesPerformances(
      {required int year}) async {
    try {
      final Map<String, dynamic> json = await _api.getSales(year: year);

      return _api.annualSales(json: json);
    } catch (error) {
      print(error);
      return null;
    }
  }
}
