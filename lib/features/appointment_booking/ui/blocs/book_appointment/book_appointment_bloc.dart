import 'package:bloc/bloc.dart';
import 'package:enpal_assignment/core/domain/models/slot.dart';
import 'package:enpal_assignment/core/data/repositories/slot_repository.dart';
import 'package:enpal_assignment/core/utils/result.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'book_appointment_event.dart';
part 'book_appointment_state.dart';
part 'book_appointment_bloc.freezed.dart';

class BookAppointmentBloc
    extends Bloc<BookAppointmentEvent, BookAppointmentState> {
  BookAppointmentBloc(
    this._slotsRepository,
  ) : super(_Idle()) {
    on<_BookingRequested>(_onBookingRequested);
  }

  final SlotRepository _slotsRepository;

  void _onBookingRequested(
      _BookingRequested event, Emitter<BookAppointmentState> emit) async {
    emit(BookAppointmentState.pending());

    final result =
        await _slotsRepository.bookSlot(event.slot.id, event.customerName);
    switch (result) {
      case Ok(value: final slot):
        emit(_Success(slot));
        event.onSuccess?.call(slot);
        break;
      case Error _:
        emit(_Error('Failed to book slot'));
        event.onError?.call();
        break;
    }
  }
}
