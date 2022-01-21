// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
part 'user_assign.g.dart';
part 'user_assign.freezed.dart';

@freezed
class UserAssign with _$UserAssign {
  const factory UserAssign({
    @JsonKey(name: '_id') String? id,
    String? compnayid,
    String? branchid,
    String? userid,
    String? remarks,
  }) = _UserAssign;

  factory UserAssign.fromJson(Map<String, dynamic> json) =>
      _$UserAssignFromJson(json);
}
