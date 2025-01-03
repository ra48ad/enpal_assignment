import 'package:enpal_assignment/core/domain/models/slot.dart';
import 'package:enpal_assignment/core/ui/design_system/spacing.dart';
import 'package:enpal_assignment/features/appointment_booking/ui/widgets/time_slot_button.dart';
import 'package:flutter/material.dart';

class SlotBookingOptions extends StatelessWidget {
  const SlotBookingOptions({
    super.key,
    required this.slots,
    required void Function(Slot slot) handleSlotSelected,
  }) : _handleSlotSelected = handleSlotSelected;

  final List<Slot> slots;
  final void Function(Slot slot) _handleSlotSelected;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: Spacing.xs,
      children: [
        const Text(
          'Pick a slot',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w500,
          ),
        ),
        Wrap(
          spacing: Spacing.xs,
          runSpacing: Spacing.xs,
          children: slots
              .map((slot) => TimeSlotButton(
                    slot: slot,
                    onSlotSelected: (slot) => _handleSlotSelected(slot),
                  ))
              .toList(),
        ),
      ],
    );
  }
}
