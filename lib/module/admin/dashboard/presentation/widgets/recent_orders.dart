import 'package:ecommerce_firebase/core/constants/color_palate.dart';
import 'package:ecommerce_firebase/core/enums/order_status.dart';
import 'package:ecommerce_firebase/module/admin/dashboard/presentation/widgets/status_chip.dart';
import 'package:flutter/material.dart';

class RecentOrdersSection extends StatelessWidget {
  const RecentOrdersSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate((context, index) {
        final status = OrderStatus.pending;
        return Container(
          margin: const EdgeInsets.only(bottom: 12),
          padding: const EdgeInsets.all(14),
          decoration: BoxDecoration(
            color: ColorPalette.backgroundWhite,
            borderRadius: BorderRadius.circular(14),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.04),
                blurRadius: 8,
                offset: const Offset(0, 4),
              ),
            ],
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          'Order #10$index',
                          style: Theme.of(context).textTheme.titleSmall
                              ?.copyWith(fontWeight: FontWeight.w600),
                        ),
                        const SizedBox(width: 8),
                        StatusChip(status: status),
                      ],
                    ),

                    const SizedBox(height: 6),

                    Text(
                      'John Doe • 2h ago',
                      style: Theme.of(context).textTheme.bodySmall?.copyWith(
                        color: ColorPalette.greyText,
                      ),
                    ),
                  ],
                ),
              ),

              Text(
                '£120',
                style: Theme.of(context).textTheme.titleMedium?.copyWith(
                  fontWeight: FontWeight.w700,
                  color: ColorPalette.textBlack,
                ),
              ),
            ],
          ),
        );
      }, childCount: 5),
    );
  }
}
