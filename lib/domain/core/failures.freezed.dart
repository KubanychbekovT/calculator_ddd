// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'failures.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ValueFailure<T> {
  T get failure => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failure) decimalCtaMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T failure)? decimalCtaMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failure)? decimalCtaMessage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DecimalCtaMessage<T> value) decimalCtaMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DecimalCtaMessage<T> value)? decimalCtaMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DecimalCtaMessage<T> value)? decimalCtaMessage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ValueFailureCopyWith<T, ValueFailure<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ValueFailureCopyWith<T, $Res> {
  factory $ValueFailureCopyWith(
          ValueFailure<T> value, $Res Function(ValueFailure<T>) then) =
      _$ValueFailureCopyWithImpl<T, $Res, ValueFailure<T>>;
  @useResult
  $Res call({T failure});
}

/// @nodoc
class _$ValueFailureCopyWithImpl<T, $Res, $Val extends ValueFailure<T>>
    implements $ValueFailureCopyWith<T, $Res> {
  _$ValueFailureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = freezed,
  }) {
    return _then(_value.copyWith(
      failure: freezed == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as T,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DecimalCtaMessageCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory _$$DecimalCtaMessageCopyWith(_$DecimalCtaMessage<T> value,
          $Res Function(_$DecimalCtaMessage<T>) then) =
      __$$DecimalCtaMessageCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({T failure});
}

/// @nodoc
class __$$DecimalCtaMessageCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res, _$DecimalCtaMessage<T>>
    implements _$$DecimalCtaMessageCopyWith<T, $Res> {
  __$$DecimalCtaMessageCopyWithImpl(_$DecimalCtaMessage<T> _value,
      $Res Function(_$DecimalCtaMessage<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = freezed,
  }) {
    return _then(_$DecimalCtaMessage<T>(
      failure: freezed == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$DecimalCtaMessage<T> implements DecimalCtaMessage<T> {
  const _$DecimalCtaMessage({required this.failure});

  @override
  final T failure;

  @override
  String toString() {
    return 'ValueFailure<$T>.decimalCtaMessage(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DecimalCtaMessage<T> &&
            const DeepCollectionEquality().equals(other.failure, failure));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(failure));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DecimalCtaMessageCopyWith<T, _$DecimalCtaMessage<T>> get copyWith =>
      __$$DecimalCtaMessageCopyWithImpl<T, _$DecimalCtaMessage<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failure) decimalCtaMessage,
  }) {
    return decimalCtaMessage(failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T failure)? decimalCtaMessage,
  }) {
    return decimalCtaMessage?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failure)? decimalCtaMessage,
    required TResult orElse(),
  }) {
    if (decimalCtaMessage != null) {
      return decimalCtaMessage(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DecimalCtaMessage<T> value) decimalCtaMessage,
  }) {
    return decimalCtaMessage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DecimalCtaMessage<T> value)? decimalCtaMessage,
  }) {
    return decimalCtaMessage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DecimalCtaMessage<T> value)? decimalCtaMessage,
    required TResult orElse(),
  }) {
    if (decimalCtaMessage != null) {
      return decimalCtaMessage(this);
    }
    return orElse();
  }
}

abstract class DecimalCtaMessage<T> implements ValueFailure<T> {
  const factory DecimalCtaMessage({required final T failure}) =
      _$DecimalCtaMessage<T>;

  @override
  T get failure;
  @override
  @JsonKey(ignore: true)
  _$$DecimalCtaMessageCopyWith<T, _$DecimalCtaMessage<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
