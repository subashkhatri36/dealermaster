// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'register_model.g.dart';
part 'register_model.freezed.dart';

@freezed
class RegisterModel with _$RegisterModel {
  const factory RegisterModel({
    @JsonKey(name: '_id') String? id,
    required String fullname,
    required String email,
    @Default(false) bool isActive,
    @Default("farmer") String role,
  }) = _RegisterModel;

  factory RegisterModel.fromJson(Map<String, dynamic> json) =>
      _$RegisterModelFromJson(json);
}
