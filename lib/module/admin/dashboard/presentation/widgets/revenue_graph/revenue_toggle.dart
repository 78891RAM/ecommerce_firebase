import 'package:ecommerce_firebase/core/constants/color_palate.dart';
import 'package:flutter/material.dart';
import 'revenue_range.dart';

class RevenueToggle extends StatelessWidget {
  final RevenueRange selected;
  final ValueChanged<RevenueRange> onChanged;

  const RevenueToggle({
    super.key,
    required this.selected,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children:
          RevenueRange.values.map((range) {
            final isSelected = range == selected;

            return Padding(
              padding: const EdgeInsets.only(right: 8),
              child: ChoiceChip(
                label: Text(
                  range.name.capitalize(),
                  style: TextStyle(
                    color: isSelected ? Colors.white : ColorPalette.greyText,
                    fontWeight: FontWeight.w500,
                  ),
                ),

                selected: isSelected,

                // ✅ Background color
                backgroundColor: ColorPalette.backgroundWhite,
                selectedColor: ColorPalette.primary.withOpacity(0.9),

                // ✅ Border
                shape: StadiumBorder(
                  side: BorderSide(
                    color:
                        isSelected
                            ? ColorPalette.primary
                            : Colors.grey.shade300,
                  ),
                ),

                onSelected: (_) => onChanged(range),
              ),
            );
          }).toList(),
    );
  }
}

extension on String {
  String capitalize() => substring(0, 1).toUpperCase() + substring(1);
}
