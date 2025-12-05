import 'package:aire_velo_bearings/infrastructure/current_user/current_user_response.dart';
import 'package:aire_velo_bearings/infrastructure/remember_dto/remember_dto.dart';
import 'dart:convert';
import 'package:aire_velo_bearings/core/constants/storage_constants.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future<void> setToken(String token) async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  prefs.setString(StorageConstants.token, token);
}

Future<String> getToken() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  return prefs.getString(StorageConstants.token) ?? '';
}

Future<void> setRememberToken(String token) async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  prefs.setString(StorageConstants.rememberToken, token);
}

Future<String> getRememberToken() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  return prefs.getString(StorageConstants.rememberToken) ?? '';
}

Future<void> setUserData(CurrentUserDTO userData) async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  prefs.setString(StorageConstants.userData, jsonEncode(userData.toJson()));
}

Future<CurrentUserDTO> getUserData() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  return CurrentUserDTO.fromJson(
    jsonDecode(prefs.getString(StorageConstants.userData) ?? '{}'),
  );
}

Future<void> setRememberLogin({required RememberDTO cred}) async {
  SharedPreferences prefs = await SharedPreferences.getInstance();

  prefs.setString(StorageConstants.remeberLogin, jsonEncode(cred.toJson()));
}

Future<RememberDTO> getRememberLogin() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  return RememberDTO.fromJson(
    jsonDecode(prefs.getString(StorageConstants.remeberLogin) ?? '{}'),
  );
}

Future<void> setFavoriteIds(int productId) async {
  final prefs = await SharedPreferences.getInstance();
  List<String> ids = prefs.getStringList(StorageConstants.favoriteIds) ?? [];
  final isContain = ids.contains(productId.toString());
  if (isContain) {
    ids.remove(productId.toString());
  } else {
    ids.add(productId.toString());
  }

  print("IsContain----> $isContain");
  prefs.setStringList(StorageConstants.favoriteIds, ids);
}

Future<List<int>> getFavouriteIds() async {
  final prefs = await SharedPreferences.getInstance();
  return prefs
          .getStringList(StorageConstants.favoriteIds)
          ?.map((e) => int.tryParse(e) ?? 0)
          .toList() ??
      [];
}

Future<void> clearLocalStorage() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  prefs.clear();
}
