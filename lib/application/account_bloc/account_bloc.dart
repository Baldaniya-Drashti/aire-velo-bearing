import 'package:aire_velo_bearings/domain/auth/i_auth_facade.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'account_event.dart';
part 'account_state.dart';
part 'account_bloc.freezed.dart';

@injectable
class AccountBloc extends Bloc<AccountEvent, AccountState> {
  final IAuthFacade _authFacade;

  AccountBloc(this._authFacade) : super(AccountState.initial()) {
    on<AccountEvent>((event, emit) async {
      await event.map(
        getAccountDetailEvent: (e) async {
          await _authFacade.getCurrentUser();

          print("this getAccountDetailEvent event is called ---> ");
          final isLoggedIn = await _authFacade.checkAuthenticated();

          emit(state.copyWith(authenticated: isLoggedIn));
          print("User authenticate Check---> ${state.authenticated}");
        },
      );
    });
  }
}
