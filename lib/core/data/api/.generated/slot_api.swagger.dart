// ignore_for_file: type=lint

import 'package:json_annotation/json_annotation.dart';
import 'package:json_annotation/json_annotation.dart' as json;
import 'package:collection/collection.dart';
import 'dart:convert';

import 'slot_api.models.swagger.dart';
import 'package:chopper/chopper.dart';

import 'client_mapping.dart';
import 'dart:async';
import 'package:http/http.dart' as http;
import 'package:http/http.dart' show MultipartFile;
import 'package:chopper/chopper.dart' as chopper;
import 'slot_api.enums.swagger.dart' as enums;
export 'slot_api.enums.swagger.dart';
export 'slot_api.models.swagger.dart';

part 'slot_api.swagger.chopper.dart';

// **************************************************************************
// SwaggerChopperGenerator
// **************************************************************************

@ChopperApi()
abstract class SlotApi extends ChopperService {
  static SlotApi create({
    ChopperClient? client,
    http.Client? httpClient,
    Authenticator? authenticator,
    ErrorConverter? errorConverter,
    Converter? converter,
    Uri? baseUrl,
    List<Interceptor>? interceptors,
  }) {
    if (client != null) {
      return _$SlotApi(client);
    }

    final newClient = ChopperClient(
        services: [_$SlotApi()],
        converter: converter ?? $JsonSerializableConverter(),
        interceptors: interceptors ?? [],
        client: httpClient,
        authenticator: authenticator,
        errorConverter: errorConverter,
        baseUrl: baseUrl ?? Uri.parse('http://'));
    return _$SlotApi(newClient);
  }

  ///
  ///@param date
  ///@param isBooked
  ///@param bookedCustomerName
  Future<chopper.Response<SlotsGet$Response>> slotsGet({
    String? date,
    enums.SlotsGetIsBooked? isBooked,
    String? bookedCustomerName,
  }) {
    generatedMapping.putIfAbsent(
        SlotsGet$Response, () => SlotsGet$Response.fromJsonFactory);

    return _slotsGet(
        date: date,
        isBooked: isBooked?.value?.toString(),
        bookedCustomerName: bookedCustomerName);
  }

  ///
  ///@param date
  ///@param isBooked
  ///@param bookedCustomerName
  @Get(path: '/slots')
  Future<chopper.Response<SlotsGet$Response>> _slotsGet({
    @Query('date') String? date,
    @Query('isBooked') String? isBooked,
    @Query('bookedCustomerName') String? bookedCustomerName,
  });

  ///
  ///@param id
  Future<chopper.Response<SlotsIdGet$Response>> slotsIdGet(
      {required String? id}) {
    generatedMapping.putIfAbsent(
        SlotsIdGet$Response, () => SlotsIdGet$Response.fromJsonFactory);

    return _slotsIdGet(id: id);
  }

  ///
  ///@param id
  @Get(path: '/slots/{id}')
  Future<chopper.Response<SlotsIdGet$Response>> _slotsIdGet(
      {@Path('id') required String? id});

  ///
  ///@param id
  Future<chopper.Response<SlotsIdBookPost$Response>> slotsIdBookPost({
    required String? id,
    required SlotsIdBookPost$RequestBody? body,
  }) {
    generatedMapping.putIfAbsent(SlotsIdBookPost$Response,
        () => SlotsIdBookPost$Response.fromJsonFactory);

    return _slotsIdBookPost(id: id, body: body);
  }

  ///
  ///@param id
  @Post(
    path: '/slots/{id}/book',
    optionalBody: true,
  )
  Future<chopper.Response<SlotsIdBookPost$Response>> _slotsIdBookPost({
    @Path('id') required String? id,
    @Body() required SlotsIdBookPost$RequestBody? body,
  });

  ///
  ///@param id
  Future<chopper.Response<SlotsIdCancelBookingPost$Response>>
      slotsIdCancelBookingPost({required String? id}) {
    generatedMapping.putIfAbsent(SlotsIdCancelBookingPost$Response,
        () => SlotsIdCancelBookingPost$Response.fromJsonFactory);

    return _slotsIdCancelBookingPost(id: id);
  }

  ///
  ///@param id
  @Post(
    path: '/slots/{id}/cancel-booking',
    optionalBody: true,
  )
  Future<chopper.Response<SlotsIdCancelBookingPost$Response>>
      _slotsIdCancelBookingPost({@Path('id') required String? id});
}

typedef $JsonFactory<T> = T Function(Map<String, dynamic> json);

class $CustomJsonDecoder {
  $CustomJsonDecoder(this.factories);

  final Map<Type, $JsonFactory> factories;

  dynamic decode<T>(dynamic entity) {
    if (entity is Iterable) {
      return _decodeList<T>(entity);
    }

    if (entity is T) {
      return entity;
    }

    if (isTypeOf<T, Map>()) {
      return entity;
    }

    if (isTypeOf<T, Iterable>()) {
      return entity;
    }

    if (entity is Map<String, dynamic>) {
      return _decodeMap<T>(entity);
    }

    return entity;
  }

  T _decodeMap<T>(Map<String, dynamic> values) {
    final jsonFactory = factories[T];
    if (jsonFactory == null || jsonFactory is! $JsonFactory<T>) {
      return throw "Could not find factory for type $T. Is '$T: $T.fromJsonFactory' included in the CustomJsonDecoder instance creation in bootstrapper.dart?";
    }

    return jsonFactory(values);
  }

  List<T> _decodeList<T>(Iterable values) =>
      values.where((v) => v != null).map<T>((v) => decode<T>(v) as T).toList();
}

class $JsonSerializableConverter extends chopper.JsonConverter {
  @override
  FutureOr<chopper.Response<ResultType>> convertResponse<ResultType, Item>(
      chopper.Response response) async {
    if (response.bodyString.isEmpty) {
      // In rare cases, when let's say 204 (no content) is returned -
      // we cannot decode the missing json with the result type specified
      return chopper.Response(response.base, null, error: response.error);
    }

    if (ResultType == String) {
      return response.copyWith();
    }

    if (ResultType == DateTime) {
      return response.copyWith(
          body: DateTime.parse((response.body as String).replaceAll('"', ''))
              as ResultType);
    }

    final jsonRes = await super.convertResponse(response);
    return jsonRes.copyWith<ResultType>(
        body: $jsonDecoder.decode<Item>(jsonRes.body) as ResultType);
  }
}

final $jsonDecoder = $CustomJsonDecoder(generatedMapping);
