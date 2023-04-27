import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:charts_flutter_new/flutter.dart' as charts;

class GraphNine extends StatefulWidget {
  const GraphNine({Key? key}) : super(key: key);

  @override
  State<GraphNine> createState() => _GraphNineState();
}

class _GraphNineState extends State<GraphNine> {
  late List<ChartData> _data;
  static const double widthPerDataPoint = 50.0;

  @override
  void initState() {
    super.initState();
    _data = [];

    final databaseReference =
        FirebaseDatabase.instance.ref().child('BatteryHist');

    databaseReference.onValue.listen((event) {
      final data = <ChartData>[];
      final snapshot = event.snapshot;
      final value = snapshot.value;
      if (value != null) {
        (value as Map).forEach((key, values) {
          DateTime date;
          if (key.contains('-')) {
            date = DateTime.parse(key);
          } else if (key.length == 8) {
            final year = int.parse(key.substring(0, 4));
            final month = int.parse(key.substring(4, 6));
            final day = int.parse(key.substring(6, 8));
            date = DateTime(year, month, day);
          } else {
            final year = int.parse(key.substring(0, 4));
            final month = int.parse(key.substring(4, 6));
            final day = int.parse(key.substring(6, 8));
            final hour = int.parse(key.substring(8, 10));
            final minute = int.parse(key.substring(10, 12));
            final second = int.parse(key.substring(12, 14));
            date = DateTime(year, month, day, hour, minute, second);
          }
          final waterLevel = values['Battery-level'] as int?;
          final waterLevelInt = waterLevel ?? 0;
          data.add(ChartData(date, waterLevelInt));
        });
      }
      data.sort((a, b) => b.date.compareTo(a.date));
      // Take only the first 84 items
      if (data.length > 84) {
        data.removeRange(84, data.length);
      }
      setState(() {
        _data = data;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    final double graphWidth = (_data.length.toDouble() * widthPerDataPoint)
        .clamp(500.0, double.infinity);
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 221, 244, 239),
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: SizedBox(
          width: graphWidth,
          height: 700,
          child: Padding(
            padding: const EdgeInsets.all(32),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 16),
                Expanded(
                  child: Row(
                    children: [
                      const WaterLevelLabel(),
                      Expanded(
                        child: charts.TimeSeriesChart(
                          [
                            charts.Series<ChartData, DateTime>(
                              id: 'Water Tank Level',
                              data: _data,
                              domainFn: (ChartData chartData, _) =>
                                  chartData.date,
                              measureFn: (ChartData chartData, _) =>
                                  chartData.waterLevel,
                            ),
                          ],
                          dateTimeFactory: const charts.LocalDateTimeFactory(),
                          domainAxis: const charts.DateTimeAxisSpec(
                            tickFormatterSpec:
                                charts.AutoDateTimeTickFormatterSpec(
                              day: charts.TimeFormatterSpec(
                                format: 'dd',
                                transitionFormat: 'MMM dd',
                              ),
                            ),
                            tickProviderSpec:
                                charts.DayTickProviderSpec(increments: [1]),
                            showAxisLine: true,
                            renderSpec: charts.SmallTickRendererSpec(
                              labelStyle: charts.TextStyleSpec(fontSize: 20),
                            ),
                          ),
                          primaryMeasureAxis: const charts.NumericAxisSpec(
                            showAxisLine: true,
                            renderSpec: charts.GridlineRendererSpec(
                              labelStyle: charts.TextStyleSpec(fontSize: 20),
                              lineStyle: charts.LineStyleSpec(
                                dashPattern: [2, 2],
                                thickness: 1,
                              ),
                            ),
                          ),
                          animate: true,
                          defaultRenderer:
                              charts.LineRendererConfig(includePoints: true),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 16),
                const Text(
                  'Date (MMM / DD)',
                  style: TextStyle(
                      fontFamily: 'Alkatra',
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class WaterLevelLabel extends StatelessWidget {
  const WaterLevelLabel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const RotatedBox(
      quarterTurns: 3,
      child: Padding(
        padding: EdgeInsets.only(right: 8.0),
        child: Text(
          'Battery Level (%)',
          style: TextStyle(
              fontSize: 18, fontWeight: FontWeight.bold, fontFamily: 'Alkatra'),
        ),
      ),
    );
  }
}

class ChartData {
  final DateTime date;
  final int waterLevel;

  ChartData(this.date, this.waterLevel);
}
