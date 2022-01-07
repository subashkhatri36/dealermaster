import 'package:dealermaster/src/feature/authentication/data/auth_repositories.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final authProvider =
    ChangeNotifierProvider((ref) => AuthProvider(ref.watch(authRepoProvider)));

class AuthProvider extends ChangeNotifier {
  AuthProvider(this._authRepo);
  final AuthRepositories _authRepo;

  bool isloginSubmissionProgress = false;
  Future<String> loginFarmer(String email, String password) async {
    isloginSubmissionProgress = true;
    notifyListeners();

    String val = await _authRepo.login(email, password);

    isloginSubmissionProgress = false;
    notifyListeners();
    return val;
  }

  Future<String?> registerFarmer(
      String email, String password, String fullname, String repassword) async {
    isloginSubmissionProgress = true;
    notifyListeners();

    String? val =
        await _authRepo.register(email, password, repassword, fullname);

    isloginSubmissionProgress = false;
    notifyListeners();
    return val;
  }
}
