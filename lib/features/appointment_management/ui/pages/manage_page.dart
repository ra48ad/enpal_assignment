import 'package:enpal_assignment/core/ui/blocs/cancel_appointment/cancel_appointment_bloc.dart';
import 'package:enpal_assignment/features/appointment_management/ui/bloc/list_appointments/list_appointments_bloc.dart';
import 'package:enpal_assignment/features/appointment_management/ui/widgets/booking_slot_tile.dart';
import 'package:enpal_assignment/core/utils/date_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ManageAppointmentsPage extends StatelessWidget {
  const ManageAppointmentsPage({
    super.key,
    required ListAppointmentsBloc listAppointmentsBloc,
    required CancelAppointmentBloc cancelAppointmentBloc,
  })  : _listAppointmentsBloc = listAppointmentsBloc,
        _cancelAppointmentBloc = cancelAppointmentBloc;

  final ListAppointmentsBloc _listAppointmentsBloc;
  final CancelAppointmentBloc _cancelAppointmentBloc;

  @override
  Widget build(BuildContext context) {
    return BlocListener<CancelAppointmentBloc, CancelAppointmentState>(
      bloc: _cancelAppointmentBloc,
      listener: (context, state) {
        state.mapOrNull(
          success: (state) {
            _listAppointmentsBloc.add(const ListAppointmentsEvent.started());
          },
        );
      },
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Booking Management'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Booked slots',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 8),
              BlocBuilder<ListAppointmentsBloc, ListAppointmentsState>(
                bloc: _listAppointmentsBloc,
                builder: (context, state) => state.map(
                  initial: (_) => const CircularProgressIndicator(),
                  loading: (_) => const CircularProgressIndicator(),
                  loaded: (loaded) => Expanded(
                    child: ListView.builder(
                      itemCount: loaded.slots.length,
                      itemBuilder: (context, index) {
                        return BookingSlotTile(
                          booking: loaded.slots[index],
                          onDelete: (slot) {
                            _cancelAppointmentBloc.add(
                              CancelAppointmentEvent.cancelRequested(
                                slot: slot,
                                onSuccess: (slot, before) {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(
                                      content: Text(
                                          'Deleted ${before.customerName}\'s booking on ${formatDateTime(slot.startDate)}'),
                                    ),
                                  );
                                },
                                onError: () {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(
                                      content:
                                          Text('Failed to delete booking.'),
                                    ),
                                  );
                                },
                              ),
                            );
                          },
                        );
                      },
                    ),
                  ),
                  empty: (_) => const Text('Failed to load slots'),
                  error: (_) => const Text('Unknown state'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
