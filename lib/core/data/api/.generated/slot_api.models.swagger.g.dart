// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'slot_api.models.swagger.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SlotsIdBookPost$RequestBody _$SlotsIdBookPost$RequestBodyFromJson(
        Map<String, dynamic> json) =>
    SlotsIdBookPost$RequestBody(
      name: json['name'] as String,
    );

Map<String, dynamic> _$SlotsIdBookPost$RequestBodyToJson(
        SlotsIdBookPost$RequestBody instance) =>
    <String, dynamic>{
      'name': instance.name,
    };

SlotsGet$Response _$SlotsGet$ResponseFromJson(Map<String, dynamic> json) =>
    SlotsGet$Response(
      success: json['success'] as bool,
      data: (json['data'] as List<dynamic>)
          .map((e) =>
              SlotsGet$Response$Data$Item.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$SlotsGet$ResponseToJson(SlotsGet$Response instance) =>
    <String, dynamic>{
      'success': instance.success,
      'data': instance.data.map((e) => e.toJson()).toList(),
    };

SlotsIdGet$Response _$SlotsIdGet$ResponseFromJson(Map<String, dynamic> json) =>
    SlotsIdGet$Response(
      success: json['success'] as bool,
      data: SlotsIdGet$Response$Data.fromJson(
          json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SlotsIdGet$ResponseToJson(
        SlotsIdGet$Response instance) =>
    <String, dynamic>{
      'success': instance.success,
      'data': instance.data.toJson(),
    };

SlotsIdBookPost$Response _$SlotsIdBookPost$ResponseFromJson(
        Map<String, dynamic> json) =>
    SlotsIdBookPost$Response(
      success: json['success'] as bool,
      data: SlotsIdBookPost$Response$Data.fromJson(
          json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SlotsIdBookPost$ResponseToJson(
        SlotsIdBookPost$Response instance) =>
    <String, dynamic>{
      'success': instance.success,
      'data': instance.data.toJson(),
    };

SlotsIdCancelBookingPost$Response _$SlotsIdCancelBookingPost$ResponseFromJson(
        Map<String, dynamic> json) =>
    SlotsIdCancelBookingPost$Response(
      success: json['success'] as bool,
      data: SlotsIdCancelBookingPost$Response$Data.fromJson(
          json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SlotsIdCancelBookingPost$ResponseToJson(
        SlotsIdCancelBookingPost$Response instance) =>
    <String, dynamic>{
      'success': instance.success,
      'data': instance.data.toJson(),
    };

SlotsGet$Response$Data$Item _$SlotsGet$Response$Data$ItemFromJson(
        Map<String, dynamic> json) =>
    SlotsGet$Response$Data$Item(
      id: json['id'] as String,
      startDate: DateTime.parse(json['startDate'] as String),
      isBooked:
          slotsGet$Response$Data$ItemIsBookedNullableFromJson(json['isBooked']),
      bookedCustomerName: json['bookedCustomerName'] as String?,
    );

Map<String, dynamic> _$SlotsGet$Response$Data$ItemToJson(
        SlotsGet$Response$Data$Item instance) =>
    <String, dynamic>{
      'id': instance.id,
      'startDate': instance.startDate.toIso8601String(),
      'isBooked':
          slotsGet$Response$Data$ItemIsBookedNullableToJson(instance.isBooked),
      'bookedCustomerName': instance.bookedCustomerName,
    };

SlotsIdGet$Response$Data _$SlotsIdGet$Response$DataFromJson(
        Map<String, dynamic> json) =>
    SlotsIdGet$Response$Data(
      id: json['id'] as String,
      startDate: DateTime.parse(json['startDate'] as String),
      isBooked:
          slotsIdGet$Response$DataIsBookedNullableFromJson(json['isBooked']),
      bookedCustomerName: json['bookedCustomerName'] as String?,
    );

Map<String, dynamic> _$SlotsIdGet$Response$DataToJson(
        SlotsIdGet$Response$Data instance) =>
    <String, dynamic>{
      'id': instance.id,
      'startDate': instance.startDate.toIso8601String(),
      'isBooked':
          slotsIdGet$Response$DataIsBookedNullableToJson(instance.isBooked),
      'bookedCustomerName': instance.bookedCustomerName,
    };

SlotsIdBookPost$Response$Data _$SlotsIdBookPost$Response$DataFromJson(
        Map<String, dynamic> json) =>
    SlotsIdBookPost$Response$Data(
      id: json['id'] as String,
      startDate: DateTime.parse(json['startDate'] as String),
      isBooked: slotsIdBookPost$Response$DataIsBookedNullableFromJson(
          json['isBooked']),
      bookedCustomerName: json['bookedCustomerName'] as String?,
    );

Map<String, dynamic> _$SlotsIdBookPost$Response$DataToJson(
        SlotsIdBookPost$Response$Data instance) =>
    <String, dynamic>{
      'id': instance.id,
      'startDate': instance.startDate.toIso8601String(),
      'isBooked': slotsIdBookPost$Response$DataIsBookedNullableToJson(
          instance.isBooked),
      'bookedCustomerName': instance.bookedCustomerName,
    };

SlotsIdCancelBookingPost$Response$Data
    _$SlotsIdCancelBookingPost$Response$DataFromJson(
            Map<String, dynamic> json) =>
        SlotsIdCancelBookingPost$Response$Data(
          id: json['id'] as String,
          startDate: DateTime.parse(json['startDate'] as String),
          isBooked:
              slotsIdCancelBookingPost$Response$DataIsBookedNullableFromJson(
                  json['isBooked']),
          bookedCustomerName: json['bookedCustomerName'] as String?,
        );

Map<String, dynamic> _$SlotsIdCancelBookingPost$Response$DataToJson(
        SlotsIdCancelBookingPost$Response$Data instance) =>
    <String, dynamic>{
      'id': instance.id,
      'startDate': instance.startDate.toIso8601String(),
      'isBooked': slotsIdCancelBookingPost$Response$DataIsBookedNullableToJson(
          instance.isBooked),
      'bookedCustomerName': instance.bookedCustomerName,
    };
