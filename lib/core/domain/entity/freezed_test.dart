import 'package:freezed_annotation/freezed_annotation.dart';

part 'freezed_test.freezed.dart';
part 'freezed_test.g.dart';

@freezed
class FreezedTest with _$FreezedTest {
  const factory FreezedTest({required String name, required int age}) =
      _FreezedTest;
  factory FreezedTest.fromJson(Map<String, dynamic> json) =>
      _$FreezedTestFromJson(json);
}

@freezed
class FreezedNestedTest with _$FreezedNestedTest {
  const factory FreezedNestedTest.add(int value) = _Add;
  const factory FreezedNestedTest.subtract(int value) = _Subtract;
}
