import 'package:enpal_assignment/core/domain/models/slot.dart';
import 'package:enpal_assignment/core/utils/date_utils.dart';
import 'package:flutter/material.dart';

class TimeSlotButton extends StatelessWidget {
  const TimeSlotButton({
    super.key,
    required this.slot,
    this.onSlotSelected,
  });

  final Slot slot;
  final Function(Slot)? onSlotSelected;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () => onSlotSelected?.call(slot),
      child: Text(formatTime(slot.startDate)),
    );
  }
}
