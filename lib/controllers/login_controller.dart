import 'package:flutter/material.dart';
import 'package:projeto_maquiagem/services/prefs_service.dart';

class LoginController {
  ValueNotifier<bool> inLoader = ValueNotifier<bool>(false);

  String? _login;
  setLogin(String value) => _login = value;

  String? _senha;
  setPass(String value) => _senha = value;

  Future<bool> auth() async {
    // auth de autenticação
    inLoader.value = true;
    await Future.delayed(const Duration(seconds: 3));
    inLoader.value = false;
    if (_login == 'Andressa' && _senha == '123') {
      PrefsService.save(_login!);
      return true;
    }
    return false;
  }
}
