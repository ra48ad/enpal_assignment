import 'package:json_annotation/json_annotation.dart';
import 'package:collection/collection.dart';

enum SlotsGet$Response$Data$ItemIsBooked {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('true')
  $true('true'),
  @JsonValue('false')
  $false('false');

  final String? value;

  const SlotsGet$Response$Data$ItemIsBooked(this.value);
}

enum SlotsGetIsBooked {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('true')
  $true('true'),
  @JsonValue('false')
  $false('false');

  final String? value;

  const SlotsGetIsBooked(this.value);
}

enum SlotsIdGet$Response$DataIsBooked {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('true')
  $true('true'),
  @JsonValue('false')
  $false('false');

  final String? value;

  const SlotsIdGet$Response$DataIsBooked(this.value);
}

enum SlotsIdBookPost$Response$DataIsBooked {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('true')
  $true('true'),
  @JsonValue('false')
  $false('false');

  final String? value;

  const SlotsIdBookPost$Response$DataIsBooked(this.value);
}

enum SlotsIdCancelBookingPost$Response$DataIsBooked {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('true')
  $true('true'),
  @JsonValue('false')
  $false('false');

  final String? value;

  const SlotsIdCancelBookingPost$Response$DataIsBooked(this.value);
}
