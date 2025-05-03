// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'internet_checker_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$InternetCheckerState {
  InternetCheckerStatus get status => throw _privateConstructorUsedError;
  InternetCheckerStatus get oldStatus => throw _privateConstructorUsedError;

  /// Create a copy of InternetCheckerState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $InternetCheckerStateCopyWith<InternetCheckerState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InternetCheckerStateCopyWith<$Res> {
  factory $InternetCheckerStateCopyWith(
    InternetCheckerState value,
    $Res Function(InternetCheckerState) then,
  ) = _$InternetCheckerStateCopyWithImpl<$Res, InternetCheckerState>;
  @useResult
  $Res call({InternetCheckerStatus status, InternetCheckerStatus oldStatus});
}

/// @nodoc
class _$InternetCheckerStateCopyWithImpl<
  $Res,
  $Val extends InternetCheckerState
>
    implements $InternetCheckerStateCopyWith<$Res> {
  _$InternetCheckerStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of InternetCheckerState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? status = null, Object? oldStatus = null}) {
    return _then(
      _value.copyWith(
            status:
                null == status
                    ? _value.status
                    : status // ignore: cast_nullable_to_non_nullable
                        as InternetCheckerStatus,
            oldStatus:
                null == oldStatus
                    ? _value.oldStatus
                    : oldStatus // ignore: cast_nullable_to_non_nullable
                        as InternetCheckerStatus,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $InternetCheckerStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
    _$InitialImpl value,
    $Res Function(_$InitialImpl) then,
  ) = __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({InternetCheckerStatus status, InternetCheckerStatus oldStatus});
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$InternetCheckerStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
    _$InitialImpl _value,
    $Res Function(_$InitialImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of InternetCheckerState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? status = null, Object? oldStatus = null}) {
    return _then(
      _$InitialImpl(
        status:
            null == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                    as InternetCheckerStatus,
        oldStatus:
            null == oldStatus
                ? _value.oldStatus
                : oldStatus // ignore: cast_nullable_to_non_nullable
                    as InternetCheckerStatus,
      ),
    );
  }
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl({
    this.status = InternetCheckerStatus.offline,
    this.oldStatus = InternetCheckerStatus.offline,
  });

  @override
  @JsonKey()
  final InternetCheckerStatus status;
  @override
  @JsonKey()
  final InternetCheckerStatus oldStatus;

  @override
  String toString() {
    return 'InternetCheckerState(status: $status, oldStatus: $oldStatus)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.oldStatus, oldStatus) ||
                other.oldStatus == oldStatus));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, oldStatus);

  /// Create a copy of InternetCheckerState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);
}

abstract class _Initial implements InternetCheckerState {
  const factory _Initial({
    final InternetCheckerStatus status,
    final InternetCheckerStatus oldStatus,
  }) = _$InitialImpl;

  @override
  InternetCheckerStatus get status;
  @override
  InternetCheckerStatus get oldStatus;

  /// Create a copy of InternetCheckerState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
