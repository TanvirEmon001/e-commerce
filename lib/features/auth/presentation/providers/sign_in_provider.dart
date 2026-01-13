import 'package:flutter/foundation.dart';
import '../../../../app/set_up_network_caller.dart';
import '../../../../app/urls.dart';
import '../../../../core/services/network_caller.dart';
import '../../data/models/sign_in_params.dart';
import '../../data/models/user_model.dart';
import 'auth_controller.dart';

class SignInProvider extends ChangeNotifier {
  bool _isSignInProgress = false;

  bool get isSignInProgress => _isSignInProgress;

  String? _errorMessage;

  String? get errorMessage => _errorMessage;

  Future<bool> signIn(SignInParams params) async {
    bool isSuccess = false;
    _isSignInProgress = true;
    notifyListeners();

    final NetworkResponse response = await getNetworkCaller().postRequest(
      url: Urls.signInUrl,
      body: params.toJson(),
    );

    if (response.isSuccess) {
      UserModel model = UserModel.fromJson(response.responseData['data']['user']);
      String accessToken = response.responseData['data']['token'];
      await AuthController.saveUserData(accessToken, model);

      isSuccess = true;
      _errorMessage = null;
    } else {
      _errorMessage = response.errorMessage;
    }

    _isSignInProgress = false;
    notifyListeners();

    return isSuccess;
  }
}
