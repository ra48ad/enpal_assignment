part of 'book_appointment_bloc.dart';

@freezed
class BookAppointmentState with _$BookAppointmentState {
  const factory BookAppointmentState.idle() = _Idle;
  const factory BookAppointmentState.pending() = _Pending;
  const factory BookAppointmentState.success(Slot slot) = _Success;
  const factory BookAppointmentState.error(String message) = _Error;
}
