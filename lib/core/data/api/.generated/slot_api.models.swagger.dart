// ignore_for_file: type=lint

import 'package:json_annotation/json_annotation.dart';
import 'package:collection/collection.dart';
import 'dart:convert';

import 'slot_api.enums.swagger.dart' as enums;

part 'slot_api.models.swagger.g.dart';

@JsonSerializable(explicitToJson: true)
class SlotsIdBookPost$RequestBody {
  const SlotsIdBookPost$RequestBody({
    required this.name,
  });

  factory SlotsIdBookPost$RequestBody.fromJson(Map<String, dynamic> json) =>
      _$SlotsIdBookPost$RequestBodyFromJson(json);

  static const toJsonFactory = _$SlotsIdBookPost$RequestBodyToJson;
  Map<String, dynamic> toJson() => _$SlotsIdBookPost$RequestBodyToJson(this);

  @JsonKey(name: 'name')
  final String name;
  static const fromJsonFactory = _$SlotsIdBookPost$RequestBodyFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is SlotsIdBookPost$RequestBody &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(name) ^ runtimeType.hashCode;
}

extension $SlotsIdBookPost$RequestBodyExtension on SlotsIdBookPost$RequestBody {
  SlotsIdBookPost$RequestBody copyWith({String? name}) {
    return SlotsIdBookPost$RequestBody(name: name ?? this.name);
  }

  SlotsIdBookPost$RequestBody copyWithWrapped({Wrapped<String>? name}) {
    return SlotsIdBookPost$RequestBody(
        name: (name != null ? name.value : this.name));
  }
}

@JsonSerializable(explicitToJson: true)
class SlotsGet$Response {
  const SlotsGet$Response({
    required this.success,
    required this.data,
  });

  factory SlotsGet$Response.fromJson(Map<String, dynamic> json) =>
      _$SlotsGet$ResponseFromJson(json);

  static const toJsonFactory = _$SlotsGet$ResponseToJson;
  Map<String, dynamic> toJson() => _$SlotsGet$ResponseToJson(this);

  @JsonKey(name: 'success')
  final bool success;
  @JsonKey(name: 'data')
  final List<SlotsGet$Response$Data$Item> data;
  static const fromJsonFactory = _$SlotsGet$ResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is SlotsGet$Response &&
            (identical(other.success, success) ||
                const DeepCollectionEquality()
                    .equals(other.success, success)) &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(success) ^
      const DeepCollectionEquality().hash(data) ^
      runtimeType.hashCode;
}

extension $SlotsGet$ResponseExtension on SlotsGet$Response {
  SlotsGet$Response copyWith(
      {bool? success, List<SlotsGet$Response$Data$Item>? data}) {
    return SlotsGet$Response(
        success: success ?? this.success, data: data ?? this.data);
  }

  SlotsGet$Response copyWithWrapped(
      {Wrapped<bool>? success,
      Wrapped<List<SlotsGet$Response$Data$Item>>? data}) {
    return SlotsGet$Response(
        success: (success != null ? success.value : this.success),
        data: (data != null ? data.value : this.data));
  }
}

@JsonSerializable(explicitToJson: true)
class SlotsIdGet$Response {
  const SlotsIdGet$Response({
    required this.success,
    required this.data,
  });

  factory SlotsIdGet$Response.fromJson(Map<String, dynamic> json) =>
      _$SlotsIdGet$ResponseFromJson(json);

  static const toJsonFactory = _$SlotsIdGet$ResponseToJson;
  Map<String, dynamic> toJson() => _$SlotsIdGet$ResponseToJson(this);

  @JsonKey(name: 'success')
  final bool success;
  @JsonKey(name: 'data')
  final SlotsIdGet$Response$Data data;
  static const fromJsonFactory = _$SlotsIdGet$ResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is SlotsIdGet$Response &&
            (identical(other.success, success) ||
                const DeepCollectionEquality()
                    .equals(other.success, success)) &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(success) ^
      const DeepCollectionEquality().hash(data) ^
      runtimeType.hashCode;
}

extension $SlotsIdGet$ResponseExtension on SlotsIdGet$Response {
  SlotsIdGet$Response copyWith(
      {bool? success, SlotsIdGet$Response$Data? data}) {
    return SlotsIdGet$Response(
        success: success ?? this.success, data: data ?? this.data);
  }

  SlotsIdGet$Response copyWithWrapped(
      {Wrapped<bool>? success, Wrapped<SlotsIdGet$Response$Data>? data}) {
    return SlotsIdGet$Response(
        success: (success != null ? success.value : this.success),
        data: (data != null ? data.value : this.data));
  }
}

@JsonSerializable(explicitToJson: true)
class SlotsIdBookPost$Response {
  const SlotsIdBookPost$Response({
    required this.success,
    required this.data,
  });

  factory SlotsIdBookPost$Response.fromJson(Map<String, dynamic> json) =>
      _$SlotsIdBookPost$ResponseFromJson(json);

  static const toJsonFactory = _$SlotsIdBookPost$ResponseToJson;
  Map<String, dynamic> toJson() => _$SlotsIdBookPost$ResponseToJson(this);

  @JsonKey(name: 'success')
  final bool success;
  @JsonKey(name: 'data')
  final SlotsIdBookPost$Response$Data data;
  static const fromJsonFactory = _$SlotsIdBookPost$ResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is SlotsIdBookPost$Response &&
            (identical(other.success, success) ||
                const DeepCollectionEquality()
                    .equals(other.success, success)) &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(success) ^
      const DeepCollectionEquality().hash(data) ^
      runtimeType.hashCode;
}

extension $SlotsIdBookPost$ResponseExtension on SlotsIdBookPost$Response {
  SlotsIdBookPost$Response copyWith(
      {bool? success, SlotsIdBookPost$Response$Data? data}) {
    return SlotsIdBookPost$Response(
        success: success ?? this.success, data: data ?? this.data);
  }

  SlotsIdBookPost$Response copyWithWrapped(
      {Wrapped<bool>? success, Wrapped<SlotsIdBookPost$Response$Data>? data}) {
    return SlotsIdBookPost$Response(
        success: (success != null ? success.value : this.success),
        data: (data != null ? data.value : this.data));
  }
}

@JsonSerializable(explicitToJson: true)
class SlotsIdCancelBookingPost$Response {
  const SlotsIdCancelBookingPost$Response({
    required this.success,
    required this.data,
  });

  factory SlotsIdCancelBookingPost$Response.fromJson(
          Map<String, dynamic> json) =>
      _$SlotsIdCancelBookingPost$ResponseFromJson(json);

  static const toJsonFactory = _$SlotsIdCancelBookingPost$ResponseToJson;
  Map<String, dynamic> toJson() =>
      _$SlotsIdCancelBookingPost$ResponseToJson(this);

  @JsonKey(name: 'success')
  final bool success;
  @JsonKey(name: 'data')
  final SlotsIdCancelBookingPost$Response$Data data;
  static const fromJsonFactory = _$SlotsIdCancelBookingPost$ResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is SlotsIdCancelBookingPost$Response &&
            (identical(other.success, success) ||
                const DeepCollectionEquality()
                    .equals(other.success, success)) &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(success) ^
      const DeepCollectionEquality().hash(data) ^
      runtimeType.hashCode;
}

extension $SlotsIdCancelBookingPost$ResponseExtension
    on SlotsIdCancelBookingPost$Response {
  SlotsIdCancelBookingPost$Response copyWith(
      {bool? success, SlotsIdCancelBookingPost$Response$Data? data}) {
    return SlotsIdCancelBookingPost$Response(
        success: success ?? this.success, data: data ?? this.data);
  }

  SlotsIdCancelBookingPost$Response copyWithWrapped(
      {Wrapped<bool>? success,
      Wrapped<SlotsIdCancelBookingPost$Response$Data>? data}) {
    return SlotsIdCancelBookingPost$Response(
        success: (success != null ? success.value : this.success),
        data: (data != null ? data.value : this.data));
  }
}

@JsonSerializable(explicitToJson: true)
class SlotsGet$Response$Data$Item {
  const SlotsGet$Response$Data$Item({
    required this.id,
    required this.startDate,
    this.isBooked,
    this.bookedCustomerName,
  });

  factory SlotsGet$Response$Data$Item.fromJson(Map<String, dynamic> json) =>
      _$SlotsGet$Response$Data$ItemFromJson(json);

  static const toJsonFactory = _$SlotsGet$Response$Data$ItemToJson;
  Map<String, dynamic> toJson() => _$SlotsGet$Response$Data$ItemToJson(this);

  @JsonKey(name: 'id')
  final String id;
  @JsonKey(name: 'startDate')
  final DateTime startDate;
  @JsonKey(
    name: 'isBooked',
    toJson: slotsGet$Response$Data$ItemIsBookedNullableToJson,
    fromJson: slotsGet$Response$Data$ItemIsBookedNullableFromJson,
  )
  final enums.SlotsGet$Response$Data$ItemIsBooked? isBooked;
  @JsonKey(name: 'bookedCustomerName')
  final String? bookedCustomerName;
  static const fromJsonFactory = _$SlotsGet$Response$Data$ItemFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is SlotsGet$Response$Data$Item &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.startDate, startDate) ||
                const DeepCollectionEquality()
                    .equals(other.startDate, startDate)) &&
            (identical(other.isBooked, isBooked) ||
                const DeepCollectionEquality()
                    .equals(other.isBooked, isBooked)) &&
            (identical(other.bookedCustomerName, bookedCustomerName) ||
                const DeepCollectionEquality()
                    .equals(other.bookedCustomerName, bookedCustomerName)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(startDate) ^
      const DeepCollectionEquality().hash(isBooked) ^
      const DeepCollectionEquality().hash(bookedCustomerName) ^
      runtimeType.hashCode;
}

extension $SlotsGet$Response$Data$ItemExtension on SlotsGet$Response$Data$Item {
  SlotsGet$Response$Data$Item copyWith(
      {String? id,
      DateTime? startDate,
      enums.SlotsGet$Response$Data$ItemIsBooked? isBooked,
      String? bookedCustomerName}) {
    return SlotsGet$Response$Data$Item(
        id: id ?? this.id,
        startDate: startDate ?? this.startDate,
        isBooked: isBooked ?? this.isBooked,
        bookedCustomerName: bookedCustomerName ?? this.bookedCustomerName);
  }

  SlotsGet$Response$Data$Item copyWithWrapped(
      {Wrapped<String>? id,
      Wrapped<DateTime>? startDate,
      Wrapped<enums.SlotsGet$Response$Data$ItemIsBooked?>? isBooked,
      Wrapped<String?>? bookedCustomerName}) {
    return SlotsGet$Response$Data$Item(
        id: (id != null ? id.value : this.id),
        startDate: (startDate != null ? startDate.value : this.startDate),
        isBooked: (isBooked != null ? isBooked.value : this.isBooked),
        bookedCustomerName: (bookedCustomerName != null
            ? bookedCustomerName.value
            : this.bookedCustomerName));
  }
}

@JsonSerializable(explicitToJson: true)
class SlotsIdGet$Response$Data {
  const SlotsIdGet$Response$Data({
    required this.id,
    required this.startDate,
    this.isBooked,
    this.bookedCustomerName,
  });

  factory SlotsIdGet$Response$Data.fromJson(Map<String, dynamic> json) =>
      _$SlotsIdGet$Response$DataFromJson(json);

  static const toJsonFactory = _$SlotsIdGet$Response$DataToJson;
  Map<String, dynamic> toJson() => _$SlotsIdGet$Response$DataToJson(this);

  @JsonKey(name: 'id')
  final String id;
  @JsonKey(name: 'startDate')
  final DateTime startDate;
  @JsonKey(
    name: 'isBooked',
    toJson: slotsIdGet$Response$DataIsBookedNullableToJson,
    fromJson: slotsIdGet$Response$DataIsBookedNullableFromJson,
  )
  final enums.SlotsIdGet$Response$DataIsBooked? isBooked;
  @JsonKey(name: 'bookedCustomerName')
  final String? bookedCustomerName;
  static const fromJsonFactory = _$SlotsIdGet$Response$DataFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is SlotsIdGet$Response$Data &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.startDate, startDate) ||
                const DeepCollectionEquality()
                    .equals(other.startDate, startDate)) &&
            (identical(other.isBooked, isBooked) ||
                const DeepCollectionEquality()
                    .equals(other.isBooked, isBooked)) &&
            (identical(other.bookedCustomerName, bookedCustomerName) ||
                const DeepCollectionEquality()
                    .equals(other.bookedCustomerName, bookedCustomerName)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(startDate) ^
      const DeepCollectionEquality().hash(isBooked) ^
      const DeepCollectionEquality().hash(bookedCustomerName) ^
      runtimeType.hashCode;
}

extension $SlotsIdGet$Response$DataExtension on SlotsIdGet$Response$Data {
  SlotsIdGet$Response$Data copyWith(
      {String? id,
      DateTime? startDate,
      enums.SlotsIdGet$Response$DataIsBooked? isBooked,
      String? bookedCustomerName}) {
    return SlotsIdGet$Response$Data(
        id: id ?? this.id,
        startDate: startDate ?? this.startDate,
        isBooked: isBooked ?? this.isBooked,
        bookedCustomerName: bookedCustomerName ?? this.bookedCustomerName);
  }

  SlotsIdGet$Response$Data copyWithWrapped(
      {Wrapped<String>? id,
      Wrapped<DateTime>? startDate,
      Wrapped<enums.SlotsIdGet$Response$DataIsBooked?>? isBooked,
      Wrapped<String?>? bookedCustomerName}) {
    return SlotsIdGet$Response$Data(
        id: (id != null ? id.value : this.id),
        startDate: (startDate != null ? startDate.value : this.startDate),
        isBooked: (isBooked != null ? isBooked.value : this.isBooked),
        bookedCustomerName: (bookedCustomerName != null
            ? bookedCustomerName.value
            : this.bookedCustomerName));
  }
}

@JsonSerializable(explicitToJson: true)
class SlotsIdBookPost$Response$Data {
  const SlotsIdBookPost$Response$Data({
    required this.id,
    required this.startDate,
    this.isBooked,
    this.bookedCustomerName,
  });

  factory SlotsIdBookPost$Response$Data.fromJson(Map<String, dynamic> json) =>
      _$SlotsIdBookPost$Response$DataFromJson(json);

  static const toJsonFactory = _$SlotsIdBookPost$Response$DataToJson;
  Map<String, dynamic> toJson() => _$SlotsIdBookPost$Response$DataToJson(this);

  @JsonKey(name: 'id')
  final String id;
  @JsonKey(name: 'startDate')
  final DateTime startDate;
  @JsonKey(
    name: 'isBooked',
    toJson: slotsIdBookPost$Response$DataIsBookedNullableToJson,
    fromJson: slotsIdBookPost$Response$DataIsBookedNullableFromJson,
  )
  final enums.SlotsIdBookPost$Response$DataIsBooked? isBooked;
  @JsonKey(name: 'bookedCustomerName')
  final String? bookedCustomerName;
  static const fromJsonFactory = _$SlotsIdBookPost$Response$DataFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is SlotsIdBookPost$Response$Data &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.startDate, startDate) ||
                const DeepCollectionEquality()
                    .equals(other.startDate, startDate)) &&
            (identical(other.isBooked, isBooked) ||
                const DeepCollectionEquality()
                    .equals(other.isBooked, isBooked)) &&
            (identical(other.bookedCustomerName, bookedCustomerName) ||
                const DeepCollectionEquality()
                    .equals(other.bookedCustomerName, bookedCustomerName)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(startDate) ^
      const DeepCollectionEquality().hash(isBooked) ^
      const DeepCollectionEquality().hash(bookedCustomerName) ^
      runtimeType.hashCode;
}

extension $SlotsIdBookPost$Response$DataExtension
    on SlotsIdBookPost$Response$Data {
  SlotsIdBookPost$Response$Data copyWith(
      {String? id,
      DateTime? startDate,
      enums.SlotsIdBookPost$Response$DataIsBooked? isBooked,
      String? bookedCustomerName}) {
    return SlotsIdBookPost$Response$Data(
        id: id ?? this.id,
        startDate: startDate ?? this.startDate,
        isBooked: isBooked ?? this.isBooked,
        bookedCustomerName: bookedCustomerName ?? this.bookedCustomerName);
  }

  SlotsIdBookPost$Response$Data copyWithWrapped(
      {Wrapped<String>? id,
      Wrapped<DateTime>? startDate,
      Wrapped<enums.SlotsIdBookPost$Response$DataIsBooked?>? isBooked,
      Wrapped<String?>? bookedCustomerName}) {
    return SlotsIdBookPost$Response$Data(
        id: (id != null ? id.value : this.id),
        startDate: (startDate != null ? startDate.value : this.startDate),
        isBooked: (isBooked != null ? isBooked.value : this.isBooked),
        bookedCustomerName: (bookedCustomerName != null
            ? bookedCustomerName.value
            : this.bookedCustomerName));
  }
}

@JsonSerializable(explicitToJson: true)
class SlotsIdCancelBookingPost$Response$Data {
  const SlotsIdCancelBookingPost$Response$Data({
    required this.id,
    required this.startDate,
    this.isBooked,
    this.bookedCustomerName,
  });

  factory SlotsIdCancelBookingPost$Response$Data.fromJson(
          Map<String, dynamic> json) =>
      _$SlotsIdCancelBookingPost$Response$DataFromJson(json);

  static const toJsonFactory = _$SlotsIdCancelBookingPost$Response$DataToJson;
  Map<String, dynamic> toJson() =>
      _$SlotsIdCancelBookingPost$Response$DataToJson(this);

  @JsonKey(name: 'id')
  final String id;
  @JsonKey(name: 'startDate')
  final DateTime startDate;
  @JsonKey(
    name: 'isBooked',
    toJson: slotsIdCancelBookingPost$Response$DataIsBookedNullableToJson,
    fromJson: slotsIdCancelBookingPost$Response$DataIsBookedNullableFromJson,
  )
  final enums.SlotsIdCancelBookingPost$Response$DataIsBooked? isBooked;
  @JsonKey(name: 'bookedCustomerName')
  final String? bookedCustomerName;
  static const fromJsonFactory =
      _$SlotsIdCancelBookingPost$Response$DataFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is SlotsIdCancelBookingPost$Response$Data &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.startDate, startDate) ||
                const DeepCollectionEquality()
                    .equals(other.startDate, startDate)) &&
            (identical(other.isBooked, isBooked) ||
                const DeepCollectionEquality()
                    .equals(other.isBooked, isBooked)) &&
            (identical(other.bookedCustomerName, bookedCustomerName) ||
                const DeepCollectionEquality()
                    .equals(other.bookedCustomerName, bookedCustomerName)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(startDate) ^
      const DeepCollectionEquality().hash(isBooked) ^
      const DeepCollectionEquality().hash(bookedCustomerName) ^
      runtimeType.hashCode;
}

extension $SlotsIdCancelBookingPost$Response$DataExtension
    on SlotsIdCancelBookingPost$Response$Data {
  SlotsIdCancelBookingPost$Response$Data copyWith(
      {String? id,
      DateTime? startDate,
      enums.SlotsIdCancelBookingPost$Response$DataIsBooked? isBooked,
      String? bookedCustomerName}) {
    return SlotsIdCancelBookingPost$Response$Data(
        id: id ?? this.id,
        startDate: startDate ?? this.startDate,
        isBooked: isBooked ?? this.isBooked,
        bookedCustomerName: bookedCustomerName ?? this.bookedCustomerName);
  }

  SlotsIdCancelBookingPost$Response$Data copyWithWrapped(
      {Wrapped<String>? id,
      Wrapped<DateTime>? startDate,
      Wrapped<enums.SlotsIdCancelBookingPost$Response$DataIsBooked?>? isBooked,
      Wrapped<String?>? bookedCustomerName}) {
    return SlotsIdCancelBookingPost$Response$Data(
        id: (id != null ? id.value : this.id),
        startDate: (startDate != null ? startDate.value : this.startDate),
        isBooked: (isBooked != null ? isBooked.value : this.isBooked),
        bookedCustomerName: (bookedCustomerName != null
            ? bookedCustomerName.value
            : this.bookedCustomerName));
  }
}

String? slotsGet$Response$Data$ItemIsBookedNullableToJson(
    enums.SlotsGet$Response$Data$ItemIsBooked?
        slotsGet$Response$Data$ItemIsBooked) {
  return slotsGet$Response$Data$ItemIsBooked?.value;
}

String? slotsGet$Response$Data$ItemIsBookedToJson(
    enums.SlotsGet$Response$Data$ItemIsBooked
        slotsGet$Response$Data$ItemIsBooked) {
  return slotsGet$Response$Data$ItemIsBooked.value;
}

enums.SlotsGet$Response$Data$ItemIsBooked
    slotsGet$Response$Data$ItemIsBookedFromJson(
  Object? slotsGet$Response$Data$ItemIsBooked, [
  enums.SlotsGet$Response$Data$ItemIsBooked? defaultValue,
]) {
  return enums.SlotsGet$Response$Data$ItemIsBooked.values.firstWhereOrNull(
          (e) => e.value == slotsGet$Response$Data$ItemIsBooked) ??
      defaultValue ??
      enums.SlotsGet$Response$Data$ItemIsBooked.swaggerGeneratedUnknown;
}

enums.SlotsGet$Response$Data$ItemIsBooked?
    slotsGet$Response$Data$ItemIsBookedNullableFromJson(
  Object? slotsGet$Response$Data$ItemIsBooked, [
  enums.SlotsGet$Response$Data$ItemIsBooked? defaultValue,
]) {
  if (slotsGet$Response$Data$ItemIsBooked == null) {
    return null;
  }
  return enums.SlotsGet$Response$Data$ItemIsBooked.values.firstWhereOrNull(
          (e) => e.value == slotsGet$Response$Data$ItemIsBooked) ??
      defaultValue;
}

String slotsGet$Response$Data$ItemIsBookedExplodedListToJson(
    List<enums.SlotsGet$Response$Data$ItemIsBooked>?
        slotsGet$Response$Data$ItemIsBooked) {
  return slotsGet$Response$Data$ItemIsBooked?.map((e) => e.value!).join(',') ??
      '';
}

List<String> slotsGet$Response$Data$ItemIsBookedListToJson(
    List<enums.SlotsGet$Response$Data$ItemIsBooked>?
        slotsGet$Response$Data$ItemIsBooked) {
  if (slotsGet$Response$Data$ItemIsBooked == null) {
    return [];
  }

  return slotsGet$Response$Data$ItemIsBooked.map((e) => e.value!).toList();
}

List<enums.SlotsGet$Response$Data$ItemIsBooked>
    slotsGet$Response$Data$ItemIsBookedListFromJson(
  List? slotsGet$Response$Data$ItemIsBooked, [
  List<enums.SlotsGet$Response$Data$ItemIsBooked>? defaultValue,
]) {
  if (slotsGet$Response$Data$ItemIsBooked == null) {
    return defaultValue ?? [];
  }

  return slotsGet$Response$Data$ItemIsBooked
      .map((e) => slotsGet$Response$Data$ItemIsBookedFromJson(e.toString()))
      .toList();
}

List<enums.SlotsGet$Response$Data$ItemIsBooked>?
    slotsGet$Response$Data$ItemIsBookedNullableListFromJson(
  List? slotsGet$Response$Data$ItemIsBooked, [
  List<enums.SlotsGet$Response$Data$ItemIsBooked>? defaultValue,
]) {
  if (slotsGet$Response$Data$ItemIsBooked == null) {
    return defaultValue;
  }

  return slotsGet$Response$Data$ItemIsBooked
      .map((e) => slotsGet$Response$Data$ItemIsBookedFromJson(e.toString()))
      .toList();
}

String? slotsGetIsBookedNullableToJson(
    enums.SlotsGetIsBooked? slotsGetIsBooked) {
  return slotsGetIsBooked?.value;
}

String? slotsGetIsBookedToJson(enums.SlotsGetIsBooked slotsGetIsBooked) {
  return slotsGetIsBooked.value;
}

enums.SlotsGetIsBooked slotsGetIsBookedFromJson(
  Object? slotsGetIsBooked, [
  enums.SlotsGetIsBooked? defaultValue,
]) {
  return enums.SlotsGetIsBooked.values
          .firstWhereOrNull((e) => e.value == slotsGetIsBooked) ??
      defaultValue ??
      enums.SlotsGetIsBooked.swaggerGeneratedUnknown;
}

enums.SlotsGetIsBooked? slotsGetIsBookedNullableFromJson(
  Object? slotsGetIsBooked, [
  enums.SlotsGetIsBooked? defaultValue,
]) {
  if (slotsGetIsBooked == null) {
    return null;
  }
  return enums.SlotsGetIsBooked.values
          .firstWhereOrNull((e) => e.value == slotsGetIsBooked) ??
      defaultValue;
}

String slotsGetIsBookedExplodedListToJson(
    List<enums.SlotsGetIsBooked>? slotsGetIsBooked) {
  return slotsGetIsBooked?.map((e) => e.value!).join(',') ?? '';
}

List<String> slotsGetIsBookedListToJson(
    List<enums.SlotsGetIsBooked>? slotsGetIsBooked) {
  if (slotsGetIsBooked == null) {
    return [];
  }

  return slotsGetIsBooked.map((e) => e.value!).toList();
}

List<enums.SlotsGetIsBooked> slotsGetIsBookedListFromJson(
  List? slotsGetIsBooked, [
  List<enums.SlotsGetIsBooked>? defaultValue,
]) {
  if (slotsGetIsBooked == null) {
    return defaultValue ?? [];
  }

  return slotsGetIsBooked
      .map((e) => slotsGetIsBookedFromJson(e.toString()))
      .toList();
}

List<enums.SlotsGetIsBooked>? slotsGetIsBookedNullableListFromJson(
  List? slotsGetIsBooked, [
  List<enums.SlotsGetIsBooked>? defaultValue,
]) {
  if (slotsGetIsBooked == null) {
    return defaultValue;
  }

  return slotsGetIsBooked
      .map((e) => slotsGetIsBookedFromJson(e.toString()))
      .toList();
}

String? slotsIdGet$Response$DataIsBookedNullableToJson(
    enums.SlotsIdGet$Response$DataIsBooked? slotsIdGet$Response$DataIsBooked) {
  return slotsIdGet$Response$DataIsBooked?.value;
}

String? slotsIdGet$Response$DataIsBookedToJson(
    enums.SlotsIdGet$Response$DataIsBooked slotsIdGet$Response$DataIsBooked) {
  return slotsIdGet$Response$DataIsBooked.value;
}

enums.SlotsIdGet$Response$DataIsBooked slotsIdGet$Response$DataIsBookedFromJson(
  Object? slotsIdGet$Response$DataIsBooked, [
  enums.SlotsIdGet$Response$DataIsBooked? defaultValue,
]) {
  return enums.SlotsIdGet$Response$DataIsBooked.values.firstWhereOrNull(
          (e) => e.value == slotsIdGet$Response$DataIsBooked) ??
      defaultValue ??
      enums.SlotsIdGet$Response$DataIsBooked.swaggerGeneratedUnknown;
}

enums.SlotsIdGet$Response$DataIsBooked?
    slotsIdGet$Response$DataIsBookedNullableFromJson(
  Object? slotsIdGet$Response$DataIsBooked, [
  enums.SlotsIdGet$Response$DataIsBooked? defaultValue,
]) {
  if (slotsIdGet$Response$DataIsBooked == null) {
    return null;
  }
  return enums.SlotsIdGet$Response$DataIsBooked.values.firstWhereOrNull(
          (e) => e.value == slotsIdGet$Response$DataIsBooked) ??
      defaultValue;
}

String slotsIdGet$Response$DataIsBookedExplodedListToJson(
    List<enums.SlotsIdGet$Response$DataIsBooked>?
        slotsIdGet$Response$DataIsBooked) {
  return slotsIdGet$Response$DataIsBooked?.map((e) => e.value!).join(',') ?? '';
}

List<String> slotsIdGet$Response$DataIsBookedListToJson(
    List<enums.SlotsIdGet$Response$DataIsBooked>?
        slotsIdGet$Response$DataIsBooked) {
  if (slotsIdGet$Response$DataIsBooked == null) {
    return [];
  }

  return slotsIdGet$Response$DataIsBooked.map((e) => e.value!).toList();
}

List<enums.SlotsIdGet$Response$DataIsBooked>
    slotsIdGet$Response$DataIsBookedListFromJson(
  List? slotsIdGet$Response$DataIsBooked, [
  List<enums.SlotsIdGet$Response$DataIsBooked>? defaultValue,
]) {
  if (slotsIdGet$Response$DataIsBooked == null) {
    return defaultValue ?? [];
  }

  return slotsIdGet$Response$DataIsBooked
      .map((e) => slotsIdGet$Response$DataIsBookedFromJson(e.toString()))
      .toList();
}

List<enums.SlotsIdGet$Response$DataIsBooked>?
    slotsIdGet$Response$DataIsBookedNullableListFromJson(
  List? slotsIdGet$Response$DataIsBooked, [
  List<enums.SlotsIdGet$Response$DataIsBooked>? defaultValue,
]) {
  if (slotsIdGet$Response$DataIsBooked == null) {
    return defaultValue;
  }

  return slotsIdGet$Response$DataIsBooked
      .map((e) => slotsIdGet$Response$DataIsBookedFromJson(e.toString()))
      .toList();
}

String? slotsIdBookPost$Response$DataIsBookedNullableToJson(
    enums.SlotsIdBookPost$Response$DataIsBooked?
        slotsIdBookPost$Response$DataIsBooked) {
  return slotsIdBookPost$Response$DataIsBooked?.value;
}

String? slotsIdBookPost$Response$DataIsBookedToJson(
    enums.SlotsIdBookPost$Response$DataIsBooked
        slotsIdBookPost$Response$DataIsBooked) {
  return slotsIdBookPost$Response$DataIsBooked.value;
}

enums.SlotsIdBookPost$Response$DataIsBooked
    slotsIdBookPost$Response$DataIsBookedFromJson(
  Object? slotsIdBookPost$Response$DataIsBooked, [
  enums.SlotsIdBookPost$Response$DataIsBooked? defaultValue,
]) {
  return enums.SlotsIdBookPost$Response$DataIsBooked.values.firstWhereOrNull(
          (e) => e.value == slotsIdBookPost$Response$DataIsBooked) ??
      defaultValue ??
      enums.SlotsIdBookPost$Response$DataIsBooked.swaggerGeneratedUnknown;
}

enums.SlotsIdBookPost$Response$DataIsBooked?
    slotsIdBookPost$Response$DataIsBookedNullableFromJson(
  Object? slotsIdBookPost$Response$DataIsBooked, [
  enums.SlotsIdBookPost$Response$DataIsBooked? defaultValue,
]) {
  if (slotsIdBookPost$Response$DataIsBooked == null) {
    return null;
  }
  return enums.SlotsIdBookPost$Response$DataIsBooked.values.firstWhereOrNull(
          (e) => e.value == slotsIdBookPost$Response$DataIsBooked) ??
      defaultValue;
}

String slotsIdBookPost$Response$DataIsBookedExplodedListToJson(
    List<enums.SlotsIdBookPost$Response$DataIsBooked>?
        slotsIdBookPost$Response$DataIsBooked) {
  return slotsIdBookPost$Response$DataIsBooked
          ?.map((e) => e.value!)
          .join(',') ??
      '';
}

List<String> slotsIdBookPost$Response$DataIsBookedListToJson(
    List<enums.SlotsIdBookPost$Response$DataIsBooked>?
        slotsIdBookPost$Response$DataIsBooked) {
  if (slotsIdBookPost$Response$DataIsBooked == null) {
    return [];
  }

  return slotsIdBookPost$Response$DataIsBooked.map((e) => e.value!).toList();
}

List<enums.SlotsIdBookPost$Response$DataIsBooked>
    slotsIdBookPost$Response$DataIsBookedListFromJson(
  List? slotsIdBookPost$Response$DataIsBooked, [
  List<enums.SlotsIdBookPost$Response$DataIsBooked>? defaultValue,
]) {
  if (slotsIdBookPost$Response$DataIsBooked == null) {
    return defaultValue ?? [];
  }

  return slotsIdBookPost$Response$DataIsBooked
      .map((e) => slotsIdBookPost$Response$DataIsBookedFromJson(e.toString()))
      .toList();
}

List<enums.SlotsIdBookPost$Response$DataIsBooked>?
    slotsIdBookPost$Response$DataIsBookedNullableListFromJson(
  List? slotsIdBookPost$Response$DataIsBooked, [
  List<enums.SlotsIdBookPost$Response$DataIsBooked>? defaultValue,
]) {
  if (slotsIdBookPost$Response$DataIsBooked == null) {
    return defaultValue;
  }

  return slotsIdBookPost$Response$DataIsBooked
      .map((e) => slotsIdBookPost$Response$DataIsBookedFromJson(e.toString()))
      .toList();
}

String? slotsIdCancelBookingPost$Response$DataIsBookedNullableToJson(
    enums.SlotsIdCancelBookingPost$Response$DataIsBooked?
        slotsIdCancelBookingPost$Response$DataIsBooked) {
  return slotsIdCancelBookingPost$Response$DataIsBooked?.value;
}

String? slotsIdCancelBookingPost$Response$DataIsBookedToJson(
    enums.SlotsIdCancelBookingPost$Response$DataIsBooked
        slotsIdCancelBookingPost$Response$DataIsBooked) {
  return slotsIdCancelBookingPost$Response$DataIsBooked.value;
}

enums.SlotsIdCancelBookingPost$Response$DataIsBooked
    slotsIdCancelBookingPost$Response$DataIsBookedFromJson(
  Object? slotsIdCancelBookingPost$Response$DataIsBooked, [
  enums.SlotsIdCancelBookingPost$Response$DataIsBooked? defaultValue,
]) {
  return enums.SlotsIdCancelBookingPost$Response$DataIsBooked.values
          .firstWhereOrNull((e) =>
              e.value == slotsIdCancelBookingPost$Response$DataIsBooked) ??
      defaultValue ??
      enums.SlotsIdCancelBookingPost$Response$DataIsBooked
          .swaggerGeneratedUnknown;
}

enums.SlotsIdCancelBookingPost$Response$DataIsBooked?
    slotsIdCancelBookingPost$Response$DataIsBookedNullableFromJson(
  Object? slotsIdCancelBookingPost$Response$DataIsBooked, [
  enums.SlotsIdCancelBookingPost$Response$DataIsBooked? defaultValue,
]) {
  if (slotsIdCancelBookingPost$Response$DataIsBooked == null) {
    return null;
  }
  return enums.SlotsIdCancelBookingPost$Response$DataIsBooked.values
          .firstWhereOrNull((e) =>
              e.value == slotsIdCancelBookingPost$Response$DataIsBooked) ??
      defaultValue;
}

String slotsIdCancelBookingPost$Response$DataIsBookedExplodedListToJson(
    List<enums.SlotsIdCancelBookingPost$Response$DataIsBooked>?
        slotsIdCancelBookingPost$Response$DataIsBooked) {
  return slotsIdCancelBookingPost$Response$DataIsBooked
          ?.map((e) => e.value!)
          .join(',') ??
      '';
}

List<String> slotsIdCancelBookingPost$Response$DataIsBookedListToJson(
    List<enums.SlotsIdCancelBookingPost$Response$DataIsBooked>?
        slotsIdCancelBookingPost$Response$DataIsBooked) {
  if (slotsIdCancelBookingPost$Response$DataIsBooked == null) {
    return [];
  }

  return slotsIdCancelBookingPost$Response$DataIsBooked
      .map((e) => e.value!)
      .toList();
}

List<enums.SlotsIdCancelBookingPost$Response$DataIsBooked>
    slotsIdCancelBookingPost$Response$DataIsBookedListFromJson(
  List? slotsIdCancelBookingPost$Response$DataIsBooked, [
  List<enums.SlotsIdCancelBookingPost$Response$DataIsBooked>? defaultValue,
]) {
  if (slotsIdCancelBookingPost$Response$DataIsBooked == null) {
    return defaultValue ?? [];
  }

  return slotsIdCancelBookingPost$Response$DataIsBooked
      .map((e) =>
          slotsIdCancelBookingPost$Response$DataIsBookedFromJson(e.toString()))
      .toList();
}

List<enums.SlotsIdCancelBookingPost$Response$DataIsBooked>?
    slotsIdCancelBookingPost$Response$DataIsBookedNullableListFromJson(
  List? slotsIdCancelBookingPost$Response$DataIsBooked, [
  List<enums.SlotsIdCancelBookingPost$Response$DataIsBooked>? defaultValue,
]) {
  if (slotsIdCancelBookingPost$Response$DataIsBooked == null) {
    return defaultValue;
  }

  return slotsIdCancelBookingPost$Response$DataIsBooked
      .map((e) =>
          slotsIdCancelBookingPost$Response$DataIsBookedFromJson(e.toString()))
      .toList();
}

// ignore: unused_element
String? _dateToJson(DateTime? date) {
  if (date == null) {
    return null;
  }

  final year = date.year.toString();
  final month = date.month < 10 ? '0${date.month}' : date.month.toString();
  final day = date.day < 10 ? '0${date.day}' : date.day.toString();

  return '$year-$month-$day';
}

class Wrapped<T> {
  final T value;
  const Wrapped.value(this.value);
}
