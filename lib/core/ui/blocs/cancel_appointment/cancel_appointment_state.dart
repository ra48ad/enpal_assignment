part of 'cancel_appointment_bloc.dart';

@freezed
class CancelAppointmentState with _$CancelAppointmentState {
  const factory CancelAppointmentState.idle() = _Idle;
  const factory CancelAppointmentState.pending() = _Pending;
  const factory CancelAppointmentState.success(Slot slot) = _Success;
  const factory CancelAppointmentState.error() = _Error;
}
