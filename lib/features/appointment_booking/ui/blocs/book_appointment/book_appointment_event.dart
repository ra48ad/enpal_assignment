part of 'book_appointment_bloc.dart';

@freezed
class BookAppointmentEvent with _$BookAppointmentEvent {
  const factory BookAppointmentEvent.bookingRequested({
    required Slot slot,
    required String customerName,
    Function(Slot slot)? onSuccess,
    Function()? onError,
  }) = _BookingRequested;
}
