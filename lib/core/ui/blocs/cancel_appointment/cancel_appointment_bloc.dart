import 'package:bloc/bloc.dart';
import 'package:enpal_assignment/core/domain/models/slot.dart';
import 'package:enpal_assignment/core/data/repositories/slot_repository.dart';
import 'package:enpal_assignment/core/utils/result.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'cancel_appointment_event.dart';
part 'cancel_appointment_state.dart';
part 'cancel_appointment_bloc.freezed.dart';

class CancelAppointmentBloc
    extends Bloc<CancelAppointmentEvent, CancelAppointmentState> {
  CancelAppointmentBloc(
    this._slotsRepository,
  ) : super(_Idle()) {
    on<_CancelRequested>(_onCancelRequested);
  }

  final SlotRepository _slotsRepository;

  void _onCancelRequested(
    _CancelRequested event,
    Emitter<CancelAppointmentState> emit,
  ) async {
    emit(_Pending());
    final result = await _slotsRepository.cancelSlot(event.slot.id);
    switch (result) {
      case Ok(value: final slot):
        emit(_Success(slot));
        event.onSuccess?.call(slot, event.slot);
        break;
      case Error _:
        emit(_Error());
        event.onError?.call();
        break;
    }
    ;
  }
}
