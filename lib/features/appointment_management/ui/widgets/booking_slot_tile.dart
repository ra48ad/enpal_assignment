import 'package:enpal_assignment/core/domain/models/slot.dart';
import 'package:enpal_assignment/core/utils/date_utils.dart';
import 'package:flutter/material.dart';

class BookingSlotTile extends StatelessWidget {
  final Slot booking;
  final Function(Slot slot)? onDelete;

  const BookingSlotTile({
    super.key,
    required this.booking,
    required this.onDelete,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        children: [
          Text(
            formatDateTime(booking.startDate),
            style: const TextStyle(
              fontSize: 16,
            ),
          ),
          const SizedBox(width: 16),
          Text(
            booking.customerName ?? '',
            style: const TextStyle(
              fontSize: 16,
            ),
          ),
          const Spacer(),
          IconButton(
            icon: const Icon(Icons.close),
            onPressed: () => onDelete?.call(booking),
          ),
        ],
      ),
    );
  }
}
