part of 'search_appointment_bloc.dart';

@freezed
class SearchAppointmentState with _$SearchAppointmentState {
  const factory SearchAppointmentState.initial() = _Initial;
  const factory SearchAppointmentState.loading() = _Loading;
  const factory SearchAppointmentState.loaded(List<Slot> slots) = _Loaded;
  const factory SearchAppointmentState.empty() = _Empty;
  const factory SearchAppointmentState.error(String message) = _Error;
}
