part of 'list_appointments_bloc.dart';

@freezed
class ListAppointmentsEvent with _$ListAppointmentsEvent {
  const factory ListAppointmentsEvent.started() = _Started;
}
