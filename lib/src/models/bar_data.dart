import 'package:jisho/src/models/individual_bar.dart';

class BarData {
  List<IndividualBar> chart = [];

  BarData({required List<double> data}) {
    for (int i = 0; i < data.length; i++) {
      chart.add(IndividualBar(x: i, y: data[i]));
    }
  }
}
