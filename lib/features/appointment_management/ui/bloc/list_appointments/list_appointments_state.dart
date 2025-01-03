part of 'list_appointments_bloc.dart';

@freezed
class ListAppointmentsState with _$ListAppointmentsState {
  const factory ListAppointmentsState.initial() = _Initial;
  const factory ListAppointmentsState.loading() = _Loading;
  const factory ListAppointmentsState.loaded(List<Slot> slots) = _Loaded;
  const factory ListAppointmentsState.empty() = _Empty;
  const factory ListAppointmentsState.error(String message) = _Error;
}
