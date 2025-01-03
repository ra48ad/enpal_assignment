import 'package:enpal_assignment/core/config/slot_config.dart';
import 'package:enpal_assignment/core/domain/models/slot.dart';
import 'package:enpal_assignment/core/ui/design_system/colors.dart';
import 'package:enpal_assignment/core/ui/design_system/spacing.dart';
import 'package:enpal_assignment/core/utils/date_utils.dart';
import 'package:flutter/material.dart';

class BookingDetails extends StatelessWidget {
  final String customerName;
  final DateTime bookingDateTime;
  final Duration duration;
  final VoidCallback onCancel;
  final VoidCallback onJoinCall;

  const BookingDetails({
    super.key,
    required this.customerName,
    required this.bookingDateTime,
    required this.duration,
    required this.onCancel,
    required this.onJoinCall,
  });

  BookingDetails.fromSlot({
    super.key,
    required Slot slot,
    required this.onCancel,
    required this.onJoinCall,
  })  : customerName = slot.customerName ?? '',
        bookingDateTime = slot.startDate,
        duration = slotDuration;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(Spacing.s),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'Hello $customerName!',
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(height: Spacing.m),
            const Text(
              'Your have booked the following slot:',
              style: TextStyle(
                fontSize: 16,
              ),
            ),
            const SizedBox(height: Spacing.xs),
            Text(
              'Date: ${formatDate(bookingDateTime)}',
              style: const TextStyle(fontSize: 14),
            ),
            const SizedBox(height: Spacing.xxs),
            Text(
              'Time: ${formatTime(bookingDateTime)}',
              style: const TextStyle(fontSize: 14),
            ),
            const SizedBox(height: Spacing.xxs),
            Text(
              'Duration: ${duration.inMinutes} minutes',
              style: const TextStyle(fontSize: 14),
            ),
            const SizedBox(height: Spacing.m),
            Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: onCancel,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.destructive,
                      foregroundColor: AppColors.foreground,
                    ),
                    child: const Text('Cancel booking'),
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: ElevatedButton(
                    onPressed: onJoinCall,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.constructive,
                      foregroundColor: AppColors.foreground,
                    ),
                    child: const Text('Join your call'),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
