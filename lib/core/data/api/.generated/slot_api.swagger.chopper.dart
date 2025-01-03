// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'slot_api.swagger.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
final class _$SlotApi extends SlotApi {
  _$SlotApi([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final Type definitionType = SlotApi;

  @override
  Future<Response<SlotsGet$Response>> _slotsGet({
    String? date,
    String? isBooked,
    String? bookedCustomerName,
  }) {
    final Uri $url = Uri.parse('/slots');
    final Map<String, dynamic> $params = <String, dynamic>{
      'date': date,
      'isBooked': isBooked,
      'bookedCustomerName': bookedCustomerName,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<SlotsGet$Response, SlotsGet$Response>($request);
  }

  @override
  Future<Response<SlotsIdGet$Response>> _slotsIdGet({required String? id}) {
    final Uri $url = Uri.parse('/slots/${id}');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<SlotsIdGet$Response, SlotsIdGet$Response>($request);
  }

  @override
  Future<Response<SlotsIdBookPost$Response>> _slotsIdBookPost({
    required String? id,
    required SlotsIdBookPost$RequestBody? body,
  }) {
    final Uri $url = Uri.parse('/slots/${id}/book');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client
        .send<SlotsIdBookPost$Response, SlotsIdBookPost$Response>($request);
  }

  @override
  Future<Response<SlotsIdCancelBookingPost$Response>> _slotsIdCancelBookingPost(
      {required String? id}) {
    final Uri $url = Uri.parse('/slots/${id}/cancel-booking');
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
    );
    return client.send<SlotsIdCancelBookingPost$Response,
        SlotsIdCancelBookingPost$Response>($request);
  }
}
