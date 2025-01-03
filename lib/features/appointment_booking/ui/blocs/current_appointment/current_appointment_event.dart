part of 'current_appointment_bloc.dart';

@freezed
class CurrentAppointmentEvent with _$CurrentAppointmentEvent {
  const factory CurrentAppointmentEvent.slotBooked(Slot slot) = _SlotBooked;
  const factory CurrentAppointmentEvent.slotCancelled() = _SlotCancelled;
}
