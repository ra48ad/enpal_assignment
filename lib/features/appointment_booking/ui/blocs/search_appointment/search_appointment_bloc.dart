import 'package:bloc/bloc.dart';
import 'package:enpal_assignment/core/domain/models/slot.dart';
import 'package:enpal_assignment/core/data/repositories/slot_repository.dart';
import 'package:enpal_assignment/core/utils/result.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_appointment_event.dart';
part 'search_appointment_state.dart';
part 'search_appointment_bloc.freezed.dart';

class SearchAppointmentBloc
    extends Bloc<SearchAppointmentEvent, SearchAppointmentState> {
  final SlotRepository _slotsRepository;

  SearchAppointmentBloc(
    this._slotsRepository,
  ) : super(_Initial()) {
    on<_DateChanged>(_onDateChanged);
  }

  void _onDateChanged(
    _DateChanged event,
    Emitter<SearchAppointmentState> emit,
  ) async {
    emit(_Loading());

    final slotsResult = await _slotsRepository.getSlots(
      date: event.dateTime,
      isBooked: false,
    );
    switch (slotsResult) {
      case Ok<List<Slot>>(value: final slots):
        if (slots.isEmpty) {
          emit(_Empty());
          return;
        }
        emit(_Loaded(slots));
      case Error():
        emit(_Error('Error loading slots'));
    }
  }
}
