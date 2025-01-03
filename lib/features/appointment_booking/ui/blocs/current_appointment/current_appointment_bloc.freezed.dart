// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'current_appointment_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CurrentAppointmentEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Slot slot) slotBooked,
    required TResult Function() slotCancelled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Slot slot)? slotBooked,
    TResult? Function()? slotCancelled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Slot slot)? slotBooked,
    TResult Function()? slotCancelled,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SlotBooked value) slotBooked,
    required TResult Function(_SlotCancelled value) slotCancelled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SlotBooked value)? slotBooked,
    TResult? Function(_SlotCancelled value)? slotCancelled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SlotBooked value)? slotBooked,
    TResult Function(_SlotCancelled value)? slotCancelled,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CurrentAppointmentEventCopyWith<$Res> {
  factory $CurrentAppointmentEventCopyWith(CurrentAppointmentEvent value,
          $Res Function(CurrentAppointmentEvent) then) =
      _$CurrentAppointmentEventCopyWithImpl<$Res, CurrentAppointmentEvent>;
}

/// @nodoc
class _$CurrentAppointmentEventCopyWithImpl<$Res,
        $Val extends CurrentAppointmentEvent>
    implements $CurrentAppointmentEventCopyWith<$Res> {
  _$CurrentAppointmentEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CurrentAppointmentEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$SlotBookedImplCopyWith<$Res> {
  factory _$$SlotBookedImplCopyWith(
          _$SlotBookedImpl value, $Res Function(_$SlotBookedImpl) then) =
      __$$SlotBookedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Slot slot});
}

/// @nodoc
class __$$SlotBookedImplCopyWithImpl<$Res>
    extends _$CurrentAppointmentEventCopyWithImpl<$Res, _$SlotBookedImpl>
    implements _$$SlotBookedImplCopyWith<$Res> {
  __$$SlotBookedImplCopyWithImpl(
      _$SlotBookedImpl _value, $Res Function(_$SlotBookedImpl) _then)
      : super(_value, _then);

  /// Create a copy of CurrentAppointmentEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? slot = null,
  }) {
    return _then(_$SlotBookedImpl(
      null == slot
          ? _value.slot
          : slot // ignore: cast_nullable_to_non_nullable
              as Slot,
    ));
  }
}

/// @nodoc

class _$SlotBookedImpl implements _SlotBooked {
  const _$SlotBookedImpl(this.slot);

  @override
  final Slot slot;

  @override
  String toString() {
    return 'CurrentAppointmentEvent.slotBooked(slot: $slot)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SlotBookedImpl &&
            (identical(other.slot, slot) || other.slot == slot));
  }

  @override
  int get hashCode => Object.hash(runtimeType, slot);

  /// Create a copy of CurrentAppointmentEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SlotBookedImplCopyWith<_$SlotBookedImpl> get copyWith =>
      __$$SlotBookedImplCopyWithImpl<_$SlotBookedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Slot slot) slotBooked,
    required TResult Function() slotCancelled,
  }) {
    return slotBooked(slot);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Slot slot)? slotBooked,
    TResult? Function()? slotCancelled,
  }) {
    return slotBooked?.call(slot);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Slot slot)? slotBooked,
    TResult Function()? slotCancelled,
    required TResult orElse(),
  }) {
    if (slotBooked != null) {
      return slotBooked(slot);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SlotBooked value) slotBooked,
    required TResult Function(_SlotCancelled value) slotCancelled,
  }) {
    return slotBooked(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SlotBooked value)? slotBooked,
    TResult? Function(_SlotCancelled value)? slotCancelled,
  }) {
    return slotBooked?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SlotBooked value)? slotBooked,
    TResult Function(_SlotCancelled value)? slotCancelled,
    required TResult orElse(),
  }) {
    if (slotBooked != null) {
      return slotBooked(this);
    }
    return orElse();
  }
}

abstract class _SlotBooked implements CurrentAppointmentEvent {
  const factory _SlotBooked(final Slot slot) = _$SlotBookedImpl;

  Slot get slot;

  /// Create a copy of CurrentAppointmentEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SlotBookedImplCopyWith<_$SlotBookedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SlotCancelledImplCopyWith<$Res> {
  factory _$$SlotCancelledImplCopyWith(
          _$SlotCancelledImpl value, $Res Function(_$SlotCancelledImpl) then) =
      __$$SlotCancelledImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SlotCancelledImplCopyWithImpl<$Res>
    extends _$CurrentAppointmentEventCopyWithImpl<$Res, _$SlotCancelledImpl>
    implements _$$SlotCancelledImplCopyWith<$Res> {
  __$$SlotCancelledImplCopyWithImpl(
      _$SlotCancelledImpl _value, $Res Function(_$SlotCancelledImpl) _then)
      : super(_value, _then);

  /// Create a copy of CurrentAppointmentEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SlotCancelledImpl implements _SlotCancelled {
  const _$SlotCancelledImpl();

  @override
  String toString() {
    return 'CurrentAppointmentEvent.slotCancelled()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SlotCancelledImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Slot slot) slotBooked,
    required TResult Function() slotCancelled,
  }) {
    return slotCancelled();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Slot slot)? slotBooked,
    TResult? Function()? slotCancelled,
  }) {
    return slotCancelled?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Slot slot)? slotBooked,
    TResult Function()? slotCancelled,
    required TResult orElse(),
  }) {
    if (slotCancelled != null) {
      return slotCancelled();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SlotBooked value) slotBooked,
    required TResult Function(_SlotCancelled value) slotCancelled,
  }) {
    return slotCancelled(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SlotBooked value)? slotBooked,
    TResult? Function(_SlotCancelled value)? slotCancelled,
  }) {
    return slotCancelled?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SlotBooked value)? slotBooked,
    TResult Function(_SlotCancelled value)? slotCancelled,
    required TResult orElse(),
  }) {
    if (slotCancelled != null) {
      return slotCancelled(this);
    }
    return orElse();
  }
}

abstract class _SlotCancelled implements CurrentAppointmentEvent {
  const factory _SlotCancelled() = _$SlotCancelledImpl;
}

/// @nodoc
mixin _$CurrentAppointmentState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Slot slot) appointmentExists,
    required TResult Function() noAppointment,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Slot slot)? appointmentExists,
    TResult? Function()? noAppointment,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Slot slot)? appointmentExists,
    TResult Function()? noAppointment,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AppointmentExists value) appointmentExists,
    required TResult Function(_NoAppointment value) noAppointment,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AppointmentExists value)? appointmentExists,
    TResult? Function(_NoAppointment value)? noAppointment,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AppointmentExists value)? appointmentExists,
    TResult Function(_NoAppointment value)? noAppointment,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CurrentAppointmentStateCopyWith<$Res> {
  factory $CurrentAppointmentStateCopyWith(CurrentAppointmentState value,
          $Res Function(CurrentAppointmentState) then) =
      _$CurrentAppointmentStateCopyWithImpl<$Res, CurrentAppointmentState>;
}

/// @nodoc
class _$CurrentAppointmentStateCopyWithImpl<$Res,
        $Val extends CurrentAppointmentState>
    implements $CurrentAppointmentStateCopyWith<$Res> {
  _$CurrentAppointmentStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CurrentAppointmentState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$AppointmentExistsImplCopyWith<$Res> {
  factory _$$AppointmentExistsImplCopyWith(_$AppointmentExistsImpl value,
          $Res Function(_$AppointmentExistsImpl) then) =
      __$$AppointmentExistsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Slot slot});
}

/// @nodoc
class __$$AppointmentExistsImplCopyWithImpl<$Res>
    extends _$CurrentAppointmentStateCopyWithImpl<$Res, _$AppointmentExistsImpl>
    implements _$$AppointmentExistsImplCopyWith<$Res> {
  __$$AppointmentExistsImplCopyWithImpl(_$AppointmentExistsImpl _value,
      $Res Function(_$AppointmentExistsImpl) _then)
      : super(_value, _then);

  /// Create a copy of CurrentAppointmentState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? slot = null,
  }) {
    return _then(_$AppointmentExistsImpl(
      null == slot
          ? _value.slot
          : slot // ignore: cast_nullable_to_non_nullable
              as Slot,
    ));
  }
}

/// @nodoc

class _$AppointmentExistsImpl implements _AppointmentExists {
  const _$AppointmentExistsImpl(this.slot);

  @override
  final Slot slot;

  @override
  String toString() {
    return 'CurrentAppointmentState.appointmentExists(slot: $slot)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppointmentExistsImpl &&
            (identical(other.slot, slot) || other.slot == slot));
  }

  @override
  int get hashCode => Object.hash(runtimeType, slot);

  /// Create a copy of CurrentAppointmentState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AppointmentExistsImplCopyWith<_$AppointmentExistsImpl> get copyWith =>
      __$$AppointmentExistsImplCopyWithImpl<_$AppointmentExistsImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Slot slot) appointmentExists,
    required TResult Function() noAppointment,
  }) {
    return appointmentExists(slot);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Slot slot)? appointmentExists,
    TResult? Function()? noAppointment,
  }) {
    return appointmentExists?.call(slot);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Slot slot)? appointmentExists,
    TResult Function()? noAppointment,
    required TResult orElse(),
  }) {
    if (appointmentExists != null) {
      return appointmentExists(slot);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AppointmentExists value) appointmentExists,
    required TResult Function(_NoAppointment value) noAppointment,
  }) {
    return appointmentExists(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AppointmentExists value)? appointmentExists,
    TResult? Function(_NoAppointment value)? noAppointment,
  }) {
    return appointmentExists?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AppointmentExists value)? appointmentExists,
    TResult Function(_NoAppointment value)? noAppointment,
    required TResult orElse(),
  }) {
    if (appointmentExists != null) {
      return appointmentExists(this);
    }
    return orElse();
  }
}

abstract class _AppointmentExists implements CurrentAppointmentState {
  const factory _AppointmentExists(final Slot slot) = _$AppointmentExistsImpl;

  Slot get slot;

  /// Create a copy of CurrentAppointmentState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AppointmentExistsImplCopyWith<_$AppointmentExistsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NoAppointmentImplCopyWith<$Res> {
  factory _$$NoAppointmentImplCopyWith(
          _$NoAppointmentImpl value, $Res Function(_$NoAppointmentImpl) then) =
      __$$NoAppointmentImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NoAppointmentImplCopyWithImpl<$Res>
    extends _$CurrentAppointmentStateCopyWithImpl<$Res, _$NoAppointmentImpl>
    implements _$$NoAppointmentImplCopyWith<$Res> {
  __$$NoAppointmentImplCopyWithImpl(
      _$NoAppointmentImpl _value, $Res Function(_$NoAppointmentImpl) _then)
      : super(_value, _then);

  /// Create a copy of CurrentAppointmentState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$NoAppointmentImpl implements _NoAppointment {
  const _$NoAppointmentImpl();

  @override
  String toString() {
    return 'CurrentAppointmentState.noAppointment()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$NoAppointmentImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Slot slot) appointmentExists,
    required TResult Function() noAppointment,
  }) {
    return noAppointment();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Slot slot)? appointmentExists,
    TResult? Function()? noAppointment,
  }) {
    return noAppointment?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Slot slot)? appointmentExists,
    TResult Function()? noAppointment,
    required TResult orElse(),
  }) {
    if (noAppointment != null) {
      return noAppointment();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AppointmentExists value) appointmentExists,
    required TResult Function(_NoAppointment value) noAppointment,
  }) {
    return noAppointment(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AppointmentExists value)? appointmentExists,
    TResult? Function(_NoAppointment value)? noAppointment,
  }) {
    return noAppointment?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AppointmentExists value)? appointmentExists,
    TResult Function(_NoAppointment value)? noAppointment,
    required TResult orElse(),
  }) {
    if (noAppointment != null) {
      return noAppointment(this);
    }
    return orElse();
  }
}

abstract class _NoAppointment implements CurrentAppointmentState {
  const factory _NoAppointment() = _$NoAppointmentImpl;
}
