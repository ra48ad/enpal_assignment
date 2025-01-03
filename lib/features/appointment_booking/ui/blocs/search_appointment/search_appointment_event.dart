part of 'search_appointment_bloc.dart';

@freezed
class SearchAppointmentEvent with _$SearchAppointmentEvent {
  const factory SearchAppointmentEvent.dateChanged(String dateTime) =
      _DateChanged;
}
