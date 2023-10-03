import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:frontend_sp2/data/model/sales_performance.dart';

class SalesPerformanceAPI {
  const SalesPerformanceAPI();

  Future getSales({required int year}) async {
    final String response = await rootBundle
        .loadString('assets/dummy_data/sales_performance_dummy_data.json');
    final data = await json.decode(response);

    return data;
  }

  List<SalesPerformanceModel> annualSales({dynamic json}) {
    List<SalesPerformanceModel> salesPerformances = [];

    for (String year in json.keys) {
      final Map<int, Map<String, num>> data = {};

      final List<int> months =
          json[year].keys.map((e) => int.parse(e)).toList().cast<int>();

      for (int month in months) {
        data[month] = {
          "amount": json[year][month.toString()]["amount"],
          "quantity": json[year][month.toString()]["quantity"],
        };
      }

      salesPerformances
          .add(SalesPerformanceModel(year: int.parse(year), data: data));
    }

    return salesPerformances;
  }
}
