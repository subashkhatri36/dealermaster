import 'dart:async';

import 'package:dealermaster/src/feature/authentication/data/auth_repositories.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_state.dart';
part 'auth_state_notifier.freezed.dart';

final authStateProvider = StateNotifierProvider<AuthStateNotifier, AuthState>(
    (ref) => AuthStateNotifier(ref.watch(authRepoProvider)));

class AuthStateNotifier extends StateNotifier<AuthState> {
  AuthStateNotifier(this._authRepo) : super(const _Unknown()) {
    scheduleMicrotask(() => checkAuthState());
  }

  final AuthRepositories _authRepo;

  Future<void> checkAuthState() async {
    final result = await _authRepo.getUser();

    if (result == null) {
      state = const _Unauthenticated();
    } else {
      if (result.userassign == null) {
        state = const _Partiallyauthenticated();
      } else {
        state = const _Authenticated();
      }
    }
  }
}
