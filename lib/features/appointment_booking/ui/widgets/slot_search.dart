import 'package:enpal_assignment/core/domain/models/slot.dart';
import 'package:enpal_assignment/core/ui/design_system/spacing.dart';
import 'package:enpal_assignment/features/appointment_booking/ui/blocs/book_appointment/book_appointment_bloc.dart';
import 'package:enpal_assignment/features/appointment_booking/ui/blocs/search_appointment/search_appointment_bloc.dart';
import 'package:enpal_assignment/features/appointment_booking/ui/widgets/date_input.dart';
import 'package:enpal_assignment/features/appointment_booking/ui/widgets/booking_confirmation_dialog.dart';
import 'package:enpal_assignment/features/appointment_booking/ui/widgets/slot_booking_options.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SlotSearch extends StatefulWidget {
  const SlotSearch({
    super.key,
    required BookAppointmentBloc bookAppointmentBloc,
    required SearchAppointmentBloc searchAppointmentBloc,
  })  : _bookAppointmentBloc = bookAppointmentBloc,
        _searchAppointmentBloc = searchAppointmentBloc;

  final BookAppointmentBloc _bookAppointmentBloc;
  final SearchAppointmentBloc _searchAppointmentBloc;

  @override
  State<SlotSearch> createState() => _SlotSearchState();
}

class _SlotSearchState extends State<SlotSearch> {
  final _controller = TextEditingController();

  @override
  void initState() {
    super.initState();
    _controller.addListener(
      () => widget._searchAppointmentBloc.add(
        SearchAppointmentEvent.dateChanged(_controller.text),
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _handleSlotSelected(Slot slot) {
    showDialog(
      context: context,
      builder: (_) => BookingConfirmationDialog(
        slot: slot,
        onConfirm: (String id, String name) {
          widget._bookAppointmentBloc.add(
            BookAppointmentEvent.bookingRequested(
              slot: slot,
              customerName: name,
              onSuccess: (slot) {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text('Slot booked successfully'),
                  ),
                );
                Navigator.of(context).pop();
              },
              onError: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text('Failed to book slot'),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(Spacing.xs),
        child: SafeArea(
          child: Column(
            spacing: Spacing.m,
            children: [
              DateInput(
                controller: _controller,
                labelText: 'Date',
              ),
              BlocBuilder<SearchAppointmentBloc, SearchAppointmentState>(
                bloc: widget._searchAppointmentBloc,
                builder: (context, state) => state.map(
                  initial: (_) =>
                      Text('Please pick a date above to see available slots'),
                  loading: (_) => CircularProgressIndicator(),
                  loaded: (loaded) => SlotBookingOptions(
                    slots: loaded.slots,
                    handleSlotSelected: _handleSlotSelected,
                  ),
                  empty: (empty) => Text('No slots available'),
                  error: (_) => Text('Something went wrong. please try again.'),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
