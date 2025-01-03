import 'package:enpal_assignment/core/domain/models/slot.dart';
import 'package:enpal_assignment/core/ui/design_system/spacing.dart';
import 'package:enpal_assignment/core/utils/date_utils.dart';
import 'package:flutter/material.dart';

class BookingConfirmationDialog extends StatefulWidget {
  final Slot slot;

  final Function(String id, String name) onConfirm;
  final Function()? onCancel;

  const BookingConfirmationDialog({
    super.key,
    required this.slot,
    required this.onConfirm,
    this.onCancel,
  });

  @override
  State<BookingConfirmationDialog> createState() =>
      _BookingConfirmationDialogState();
}

class _BookingConfirmationDialogState extends State<BookingConfirmationDialog> {
  final TextEditingController nameController = TextEditingController();
  String? nameError;

  @override
  void dispose() {
    nameController.dispose();
    super.dispose();
  }

  void _validateAndSubmit() {
    if (nameController.text.trim().isEmpty) {
      setState(() {
        nameError = 'Please enter your name';
      });
      return;
    }

    widget.onConfirm(widget.slot.id, nameController.text.trim());
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Book this slot?'),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextField(
            autofocus: true,
            controller: nameController,
            decoration: InputDecoration(
              labelText: 'Your Name',
              border: const OutlineInputBorder(),
              errorText: nameError,
            ),
            onChanged: (_) {
              if (nameError != null) {
                setState(() {
                  nameError = null;
                });
              }
            },
          ),
          const SizedBox(height: Spacing.s),
          Text('Date: ${formatDate(widget.slot.startDate)}'),
          Text('Time: ${formatTime(widget.slot.startDate)}'),
          Text('Duration: ${widget.slot.duration.inMinutes} minutes'),
        ],
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.of(context).pop(),
          child: const Text('Cancel'),
        ),
        ElevatedButton(
          onPressed: _validateAndSubmit,
          child: const Text('Book'),
        ),
      ],
    );
  }
}
