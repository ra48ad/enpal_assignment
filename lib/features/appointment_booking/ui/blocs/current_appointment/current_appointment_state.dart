part of 'current_appointment_bloc.dart';

@freezed
class CurrentAppointmentState with _$CurrentAppointmentState {
  const factory CurrentAppointmentState.appointmentExists(Slot slot) =
      _AppointmentExists;
  const factory CurrentAppointmentState.noAppointment() = _NoAppointment;
}
