// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'steno.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Steno _$StenoFromJson(Map<String, dynamic> json) {
  return _Steno.fromJson(json);
}

/// @nodoc
mixin _$Steno {
  String get id => throw _privateConstructorUsedError;
  String get text => throw _privateConstructorUsedError;
  String get strokeImage => throw _privateConstructorUsedError;
  String get typingKeys => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StenoCopyWith<Steno> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StenoCopyWith<$Res> {
  factory $StenoCopyWith(Steno value, $Res Function(Steno) then) =
      _$StenoCopyWithImpl<$Res, Steno>;
  @useResult
  $Res call({String id, String text, String strokeImage, String typingKeys});
}

/// @nodoc
class _$StenoCopyWithImpl<$Res, $Val extends Steno>
    implements $StenoCopyWith<$Res> {
  _$StenoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? text = null,
    Object? strokeImage = null,
    Object? typingKeys = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      strokeImage: null == strokeImage
          ? _value.strokeImage
          : strokeImage // ignore: cast_nullable_to_non_nullable
              as String,
      typingKeys: null == typingKeys
          ? _value.typingKeys
          : typingKeys // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StenoImplCopyWith<$Res> implements $StenoCopyWith<$Res> {
  factory _$$StenoImplCopyWith(
          _$StenoImpl value, $Res Function(_$StenoImpl) then) =
      __$$StenoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String text, String strokeImage, String typingKeys});
}

/// @nodoc
class __$$StenoImplCopyWithImpl<$Res>
    extends _$StenoCopyWithImpl<$Res, _$StenoImpl>
    implements _$$StenoImplCopyWith<$Res> {
  __$$StenoImplCopyWithImpl(
      _$StenoImpl _value, $Res Function(_$StenoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? text = null,
    Object? strokeImage = null,
    Object? typingKeys = null,
  }) {
    return _then(_$StenoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      strokeImage: null == strokeImage
          ? _value.strokeImage
          : strokeImage // ignore: cast_nullable_to_non_nullable
              as String,
      typingKeys: null == typingKeys
          ? _value.typingKeys
          : typingKeys // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StenoImpl implements _Steno {
  const _$StenoImpl(
      {required this.id,
      required this.text,
      required this.strokeImage,
      required this.typingKeys});

  factory _$StenoImpl.fromJson(Map<String, dynamic> json) =>
      _$$StenoImplFromJson(json);

  @override
  final String id;
  @override
  final String text;
  @override
  final String strokeImage;
  @override
  final String typingKeys;

  @override
  String toString() {
    return 'Steno(id: $id, text: $text, strokeImage: $strokeImage, typingKeys: $typingKeys)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StenoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.strokeImage, strokeImage) ||
                other.strokeImage == strokeImage) &&
            (identical(other.typingKeys, typingKeys) ||
                other.typingKeys == typingKeys));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, text, strokeImage, typingKeys);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StenoImplCopyWith<_$StenoImpl> get copyWith =>
      __$$StenoImplCopyWithImpl<_$StenoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StenoImplToJson(
      this,
    );
  }
}

abstract class _Steno implements Steno {
  const factory _Steno(
      {required final String id,
      required final String text,
      required final String strokeImage,
      required final String typingKeys}) = _$StenoImpl;

  factory _Steno.fromJson(Map<String, dynamic> json) = _$StenoImpl.fromJson;

  @override
  String get id;
  @override
  String get text;
  @override
  String get strokeImage;
  @override
  String get typingKeys;
  @override
  @JsonKey(ignore: true)
  _$$StenoImplCopyWith<_$StenoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
