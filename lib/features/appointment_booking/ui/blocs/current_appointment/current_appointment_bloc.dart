import 'package:bloc/bloc.dart';
import 'package:enpal_assignment/core/domain/models/slot.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'current_appointment_event.dart';
part 'current_appointment_state.dart';
part 'current_appointment_bloc.freezed.dart';

class CurrentAppointmentBloc
    extends Bloc<CurrentAppointmentEvent, CurrentAppointmentState> {
  CurrentAppointmentBloc() : super(_NoAppointment()) {
    on<_SlotBooked>(_onSlotBooked);
    on<_SlotCancelled>(_onSlotCancelled);
  }

  void _onSlotBooked(
    _SlotBooked event,
    Emitter<CurrentAppointmentState> emit,
  ) {
    emit(_AppointmentExists(event.slot));
  }

  void _onSlotCancelled(
    _SlotCancelled event,
    Emitter<CurrentAppointmentState> emit,
  ) {
    emit(_NoAppointment());
  }
}
