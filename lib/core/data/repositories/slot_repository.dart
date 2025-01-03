import 'package:enpal_assignment/core/domain/models/slot.dart';
import 'package:enpal_assignment/core/utils/result.dart';

abstract class SlotRepository {
  Future<Result<List<Slot>>> getSlots({
    String? date,
    bool? isBooked,
    String? bookedCustomerName,
  });
  Future<Result<Slot>> getOneSlot(String id);
  Future<Result<Slot>> bookSlot(String id, String customerName);
  Future<Result<Slot>> cancelSlot(String id);
}
