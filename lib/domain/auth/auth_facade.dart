import 'package:aire_velo_bearings/core/network/api_service.dart';
import 'package:aire_velo_bearings/domain/auth/i_auth_facade.dart';
import 'package:aire_velo_bearings/core/database/local_preference.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: IAuthFacade)
class AuthFacade implements IAuthFacade {
  final ApiService apiService;

  AuthFacade(this.apiService);

  @override
  Future<bool> checkAuthenticated() async {
    final token = await getToken();
    return token.isNotEmpty;
  }
}
