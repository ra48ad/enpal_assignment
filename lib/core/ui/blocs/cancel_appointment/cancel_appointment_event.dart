part of 'cancel_appointment_bloc.dart';

@freezed
class CancelAppointmentEvent with _$CancelAppointmentEvent {
  const factory CancelAppointmentEvent.cancelRequested({
    required Slot slot,
    Function(Slot slot, Slot slotBeforeDeletion)? onSuccess,
    Function()? onError,
  }) = _CancelRequested;
}
