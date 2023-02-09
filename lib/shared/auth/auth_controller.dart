import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:payflow/shared/models/user_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthController {
  UserModel? _user;

  UserModel? get user => _user;

  Future<void> setUser(BuildContext context, UserModel? user) async {
    if (user != null) {
      _user = user;
      await saveUser(user);
      Navigator.pushReplacementNamed(context, "/home");
      return;
    }
    Navigator.pushReplacementNamed(context, "/login");
  }

  Future<void> saveUser(UserModel user) async {
    final sharedPreferenceInstace = await SharedPreferences.getInstance();
    await sharedPreferenceInstace.setString(
      "user",
      user.toJson(),
    );
    return;
  }

  Future<void> currentUser(BuildContext context) async {
    await Future.delayed(
      const Duration(seconds: 2),
    );
    final sharedPreferenceInstace = await SharedPreferences.getInstance();
    if (sharedPreferenceInstace.containsKey("user")) {
      final userJson = sharedPreferenceInstace.get("user") as String;
      setUser(
        context,
        UserModel.fromJson(userJson),
      );
      return;
    }
    setUser(context, null);
  }
}
