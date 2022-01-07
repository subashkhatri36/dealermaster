import 'package:dealermaster/src/common/constant/enums.dart';
import 'package:dealermaster/src/common/widget/core/custom_scaffold.dart';
import 'package:flutter/material.dart';

class CompanyDetailRegisterPage extends StatelessWidget {
  final UserType userType;
  const CompanyDetailRegisterPage({Key? key, this.userType = UserType.staff})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      userType: UserType.staff,
      body: Container(),
    );
  }
}
