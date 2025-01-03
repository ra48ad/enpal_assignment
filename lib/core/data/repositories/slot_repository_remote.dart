import 'package:chopper/chopper.dart';
import 'package:enpal_assignment/core/data/api/.generated/slot_api.swagger.dart';
import 'package:enpal_assignment/core/config/slot_config.dart';
import 'package:enpal_assignment/core/data/repositories/slot_repository.dart';
import 'package:enpal_assignment/core/domain/models/slot.dart';
import 'package:enpal_assignment/core/utils/result.dart';

class SlotRepositoryRemote implements SlotRepository {
  final SlotApi _slotApi;

  SlotRepositoryRemote({
    required SlotApi slotApi,
  }) : _slotApi = slotApi;

  @override
  Future<Result<List<Slot>>> getSlots({
    String? date,
    bool? isBooked,
    String? bookedCustomerName,
  }) async {
    try {
      final response = await _slotApi.slotsGet(
        date: date,
        isBooked:
            isBooked == true ? SlotsGetIsBooked.$true : SlotsGetIsBooked.$false,
        bookedCustomerName: bookedCustomerName,
      );
      return switch (response) {
        Response(:final statusCode, :final body)
            when statusCode == 200 && body != null =>
          Result.ok(
            body.data
                .map(
                  (slot) => Slot(
                    id: slot.id,
                    startDate: slot.startDate,
                    duration: slotDuration,
                    isBooked: slot.isBooked ==
                            SlotsGet$Response$Data$ItemIsBooked.$true
                        ? true
                        : false,
                    customerName: slot.bookedCustomerName,
                  ),
                )
                .toList(),
          ),
        Response(:final statusCode) when statusCode == 400 =>
          Result.error(Exception('bad_request')),
        _ => Result.error(Exception('general_error')),
      };
    } catch (e) {
      return Result.error(Exception(e));
    }
  }

  @override
  Future<Result<Slot>> getOneSlot(String id) async {
    try {
      final response = await _slotApi.slotsIdGet(
        id: id,
      );
      return switch (response) {
        Response(:final statusCode, :final body)
            when statusCode == 200 && body != null =>
          Result.ok(
            Slot(
              id: body.data.id,
              startDate: body.data.startDate,
              duration: slotDuration,
              isBooked:
                  body.data.isBooked == SlotsIdGet$Response$DataIsBooked.$true
                      ? true
                      : false,
              customerName: body.data.bookedCustomerName,
            ),
          ),
        Response(:final statusCode) when statusCode == 400 =>
          Result.error(Exception('bad_request')),
        Response(:final statusCode) when statusCode == 404 =>
          Result.error(Exception('not_found')),
        _ => Result.error(Exception('general_error')),
      };
    } catch (e) {
      return Result.error(Exception('general_error'));
    }
  }

  @override
  Future<Result<Slot>> bookSlot(String id, String customerName) async {
    try {
      final response = await _slotApi.slotsIdBookPost(
        id: id,
        body: SlotsIdBookPost$RequestBody(
          name: customerName,
        ),
      );
      return switch (response) {
        Response(:final statusCode, :final body)
            when statusCode == 200 && body != null =>
          Result.ok(
            Slot(
              id: body.data.id,
              startDate: body.data.startDate,
              duration: slotDuration,
              isBooked: body.data.isBooked ==
                      SlotsIdBookPost$Response$DataIsBooked.$true
                  ? true
                  : false,
              customerName: body.data.bookedCustomerName,
            ),
          ),
        Response(:final statusCode) when statusCode == 400 =>
          Result.error(Exception('bad_request')),
        Response(:final statusCode) when statusCode == 404 =>
          Result.error(Exception('not_found')),
        _ => Result.error(Exception('general_error')),
      };
    } catch (e) {
      return Result.error(Exception('general_error'));
    }
  }

  @override
  Future<Result<Slot>> cancelSlot(String id) async {
    try {
      final response = await _slotApi.slotsIdCancelBookingPost(id: id);
      return switch (response) {
        Response(:final statusCode, :final body)
            when statusCode == 200 && body != null =>
          Result.ok(
            Slot(
              id: body.data.id,
              startDate: body.data.startDate,
              duration: slotDuration,
              isBooked: body.data.isBooked ==
                      SlotsIdCancelBookingPost$Response$DataIsBooked.$true
                  ? true
                  : false,
              customerName: body.data.bookedCustomerName,
            ),
          ),
        Response(:final statusCode) when statusCode == 400 =>
          Result.error(Exception('bad_request')),
        Response(:final statusCode) when statusCode == 404 =>
          Result.error(Exception('not_found')),
        _ => Result.error(Exception('general_error')),
      };
    } catch (e) {
      return Result.error(Exception('general_error'));
    }
  }
}
