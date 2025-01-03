import 'package:enpal_assignment/features/appointment_booking/ui/blocs/current_appointment/current_appointment_bloc.dart';
import 'package:enpal_assignment/features/appointment_booking/ui/blocs/book_appointment/book_appointment_bloc.dart';
import 'package:enpal_assignment/core/ui/blocs/cancel_appointment/cancel_appointment_bloc.dart';
import 'package:enpal_assignment/features/appointment_booking/ui/blocs/search_appointment/search_appointment_bloc.dart';
import 'package:enpal_assignment/features/appointment_booking/ui/widgets/booking_details.dart';
import 'package:enpal_assignment/features/appointment_booking/ui/widgets/slot_search.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BookAppointmentPage extends StatelessWidget {
  const BookAppointmentPage({
    super.key,
    required BookAppointmentBloc bookAppointmentBloc,
    required SearchAppointmentBloc searchAppointmentBloc,
    required CancelAppointmentBloc cancelAppointmentBloc,
    required CurrentAppointmentBloc currentAppointmentBloc,
  })  : _bookAppointmentBloc = bookAppointmentBloc,
        _searchAppointmentBloc = searchAppointmentBloc,
        _cancelAppointmentBloc = cancelAppointmentBloc,
        _currentAppointmentBloc = currentAppointmentBloc;

  final BookAppointmentBloc _bookAppointmentBloc;
  final SearchAppointmentBloc _searchAppointmentBloc;
  final CancelAppointmentBloc _cancelAppointmentBloc;
  final CurrentAppointmentBloc _currentAppointmentBloc;

  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
      listeners: [
        BlocListener<BookAppointmentBloc, BookAppointmentState>(
          bloc: _bookAppointmentBloc,
          listener: (context, state) {
            state.mapOrNull(
              success: (state) {
                _currentAppointmentBloc.add(
                  CurrentAppointmentEvent.slotBooked(state.slot),
                );
              },
            );
          },
        ),
        BlocListener<CancelAppointmentBloc, CancelAppointmentState>(
          bloc: _cancelAppointmentBloc,
          listener: (context, state) {
            state.mapOrNull(
              success: (state) {
                _currentAppointmentBloc.add(
                  CurrentAppointmentEvent.slotCancelled(),
                );
              },
            );
          },
        ),
      ],
      child: Scaffold(
        appBar: AppBar(
          title: Text('Booking'),
        ),
        body: BlocBuilder<CurrentAppointmentBloc, CurrentAppointmentState>(
          bloc: _currentAppointmentBloc,
          builder: (context, state) => state.map(
            appointmentExists: (state) => BookingDetails.fromSlot(
              slot: state.slot,
              onCancel: () => _cancelAppointmentBloc.add(
                CancelAppointmentEvent.cancelRequested(slot: state.slot),
              ),
              onJoinCall: () {
                // TODO(rashad): Implement join call functionality
              },
            ),
            noAppointment: (_) => SlotSearch(
              searchAppointmentBloc: _searchAppointmentBloc,
              bookAppointmentBloc: _bookAppointmentBloc,
            ),
          ),
        ),
      ),
    );
  }
}
