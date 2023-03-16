// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'freezed_test.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FreezedTest _$FreezedTestFromJson(Map<String, dynamic> json) {
  return _FreezedTest.fromJson(json);
}

/// @nodoc
mixin _$FreezedTest {
  String get name => throw _privateConstructorUsedError;
  int get age => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FreezedTestCopyWith<FreezedTest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FreezedTestCopyWith<$Res> {
  factory $FreezedTestCopyWith(
          FreezedTest value, $Res Function(FreezedTest) then) =
      _$FreezedTestCopyWithImpl<$Res, FreezedTest>;
  @useResult
  $Res call({String name, int age});
}

/// @nodoc
class _$FreezedTestCopyWithImpl<$Res, $Val extends FreezedTest>
    implements $FreezedTestCopyWith<$Res> {
  _$FreezedTestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? age = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      age: null == age
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_FreezedTestCopyWith<$Res>
    implements $FreezedTestCopyWith<$Res> {
  factory _$$_FreezedTestCopyWith(
          _$_FreezedTest value, $Res Function(_$_FreezedTest) then) =
      __$$_FreezedTestCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, int age});
}

/// @nodoc
class __$$_FreezedTestCopyWithImpl<$Res>
    extends _$FreezedTestCopyWithImpl<$Res, _$_FreezedTest>
    implements _$$_FreezedTestCopyWith<$Res> {
  __$$_FreezedTestCopyWithImpl(
      _$_FreezedTest _value, $Res Function(_$_FreezedTest) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? age = null,
  }) {
    return _then(_$_FreezedTest(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      age: null == age
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FreezedTest implements _FreezedTest {
  const _$_FreezedTest({required this.name, required this.age});

  factory _$_FreezedTest.fromJson(Map<String, dynamic> json) =>
      _$$_FreezedTestFromJson(json);

  @override
  final String name;
  @override
  final int age;

  @override
  String toString() {
    return 'FreezedTest(name: $name, age: $age)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FreezedTest &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.age, age) || other.age == age));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, age);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FreezedTestCopyWith<_$_FreezedTest> get copyWith =>
      __$$_FreezedTestCopyWithImpl<_$_FreezedTest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FreezedTestToJson(
      this,
    );
  }
}

abstract class _FreezedTest implements FreezedTest {
  const factory _FreezedTest(
      {required final String name, required final int age}) = _$_FreezedTest;

  factory _FreezedTest.fromJson(Map<String, dynamic> json) =
      _$_FreezedTest.fromJson;

  @override
  String get name;
  @override
  int get age;
  @override
  @JsonKey(ignore: true)
  _$$_FreezedTestCopyWith<_$_FreezedTest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$FreezedNestedTest {
  int get value => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int value) add,
    required TResult Function(int value) subtract,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int value)? add,
    TResult? Function(int value)? subtract,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int value)? add,
    TResult Function(int value)? subtract,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Add value) add,
    required TResult Function(_Subtract value) subtract,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Add value)? add,
    TResult? Function(_Subtract value)? subtract,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Add value)? add,
    TResult Function(_Subtract value)? subtract,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FreezedNestedTestCopyWith<FreezedNestedTest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FreezedNestedTestCopyWith<$Res> {
  factory $FreezedNestedTestCopyWith(
          FreezedNestedTest value, $Res Function(FreezedNestedTest) then) =
      _$FreezedNestedTestCopyWithImpl<$Res, FreezedNestedTest>;
  @useResult
  $Res call({int value});
}

/// @nodoc
class _$FreezedNestedTestCopyWithImpl<$Res, $Val extends FreezedNestedTest>
    implements $FreezedNestedTestCopyWith<$Res> {
  _$FreezedNestedTestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_value.copyWith(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AddCopyWith<$Res>
    implements $FreezedNestedTestCopyWith<$Res> {
  factory _$$_AddCopyWith(_$_Add value, $Res Function(_$_Add) then) =
      __$$_AddCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int value});
}

/// @nodoc
class __$$_AddCopyWithImpl<$Res>
    extends _$FreezedNestedTestCopyWithImpl<$Res, _$_Add>
    implements _$$_AddCopyWith<$Res> {
  __$$_AddCopyWithImpl(_$_Add _value, $Res Function(_$_Add) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$_Add(
      null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_Add implements _Add {
  const _$_Add(this.value);

  @override
  final int value;

  @override
  String toString() {
    return 'FreezedNestedTest.add(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Add &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AddCopyWith<_$_Add> get copyWith =>
      __$$_AddCopyWithImpl<_$_Add>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int value) add,
    required TResult Function(int value) subtract,
  }) {
    return add(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int value)? add,
    TResult? Function(int value)? subtract,
  }) {
    return add?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int value)? add,
    TResult Function(int value)? subtract,
    required TResult orElse(),
  }) {
    if (add != null) {
      return add(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Add value) add,
    required TResult Function(_Subtract value) subtract,
  }) {
    return add(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Add value)? add,
    TResult? Function(_Subtract value)? subtract,
  }) {
    return add?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Add value)? add,
    TResult Function(_Subtract value)? subtract,
    required TResult orElse(),
  }) {
    if (add != null) {
      return add(this);
    }
    return orElse();
  }
}

abstract class _Add implements FreezedNestedTest {
  const factory _Add(final int value) = _$_Add;

  @override
  int get value;
  @override
  @JsonKey(ignore: true)
  _$$_AddCopyWith<_$_Add> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SubtractCopyWith<$Res>
    implements $FreezedNestedTestCopyWith<$Res> {
  factory _$$_SubtractCopyWith(
          _$_Subtract value, $Res Function(_$_Subtract) then) =
      __$$_SubtractCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int value});
}

/// @nodoc
class __$$_SubtractCopyWithImpl<$Res>
    extends _$FreezedNestedTestCopyWithImpl<$Res, _$_Subtract>
    implements _$$_SubtractCopyWith<$Res> {
  __$$_SubtractCopyWithImpl(
      _$_Subtract _value, $Res Function(_$_Subtract) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$_Subtract(
      null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_Subtract implements _Subtract {
  const _$_Subtract(this.value);

  @override
  final int value;

  @override
  String toString() {
    return 'FreezedNestedTest.subtract(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Subtract &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SubtractCopyWith<_$_Subtract> get copyWith =>
      __$$_SubtractCopyWithImpl<_$_Subtract>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int value) add,
    required TResult Function(int value) subtract,
  }) {
    return subtract(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int value)? add,
    TResult? Function(int value)? subtract,
  }) {
    return subtract?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int value)? add,
    TResult Function(int value)? subtract,
    required TResult orElse(),
  }) {
    if (subtract != null) {
      return subtract(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Add value) add,
    required TResult Function(_Subtract value) subtract,
  }) {
    return subtract(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Add value)? add,
    TResult? Function(_Subtract value)? subtract,
  }) {
    return subtract?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Add value)? add,
    TResult Function(_Subtract value)? subtract,
    required TResult orElse(),
  }) {
    if (subtract != null) {
      return subtract(this);
    }
    return orElse();
  }
}

abstract class _Subtract implements FreezedNestedTest {
  const factory _Subtract(final int value) = _$_Subtract;

  @override
  int get value;
  @override
  @JsonKey(ignore: true)
  _$$_SubtractCopyWith<_$_Subtract> get copyWith =>
      throw _privateConstructorUsedError;
}
