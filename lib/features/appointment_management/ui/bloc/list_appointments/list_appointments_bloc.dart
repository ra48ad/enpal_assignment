import 'package:bloc/bloc.dart';
import 'package:enpal_assignment/core/domain/models/slot.dart';
import 'package:enpal_assignment/core/data/repositories/slot_repository.dart';
import 'package:enpal_assignment/core/utils/result.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'list_appointments_event.dart';
part 'list_appointments_state.dart';
part 'list_appointments_bloc.freezed.dart';

class ListAppointmentsBloc
    extends Bloc<ListAppointmentsEvent, ListAppointmentsState> {
  ListAppointmentsBloc(
    this._slotsRepository,
  ) : super(_Initial()) {
    on<_Started>(_onStarted);

    add(const _Started());
  }

  final SlotRepository _slotsRepository;

  void _onStarted(
    _Started event,
    Emitter<ListAppointmentsState> emit,
  ) async {
    emit(_Loading());

    final result = await _slotsRepository.getSlots(
      isBooked: true,
    );
    switch (result) {
      case Ok(value: final slots):
        if (slots.isEmpty) {
          emit(_Empty());
          return;
        }
        emit(_Loaded(slots));
        break;
      case Error():
        emit(_Error('Error loading slots'));
        break;
    }
  }
}
