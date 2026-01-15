import 'revenue_point.dart';
import 'revenue_range.dart';

List<RevenuePoint> getRevenueData(RevenueRange range) {
  switch (range) {
    case RevenueRange.today:
      return [
        RevenuePoint(0, 120),
        RevenuePoint(1, 150),
        RevenuePoint(2, 90),
        RevenuePoint(3, 180),
        RevenuePoint(4, 160),
      ];

    case RevenueRange.weekly:
      return [
        RevenuePoint(0, 200),
        RevenuePoint(1, 180),
        RevenuePoint(2, 220),
        RevenuePoint(3, 260),
        RevenuePoint(4, 210),
        RevenuePoint(5, 300),
        RevenuePoint(6, 280),
      ];

    case RevenueRange.monthly:
      return List.generate(
        30,
        (index) => RevenuePoint(index, 150 + (index % 5) * 40),
      );
  }
}
