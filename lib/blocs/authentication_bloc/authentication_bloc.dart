import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:user_repo/user_repo.dart';

part 'authentication_event.dart';
part 'authentication_state.dart';

class AuthenticationBloc extends Bloc<AuthenticationEvent, AuthenticationState> {
  final UserRepo userRepo;
  late final StreamSubscription<MyUser?> _userSubscription;

  AuthenticationBloc( {
    required this.userRepo
  }) : super(const AuthenticationState.unknown()) {
    _userSubscription = userRepo.user.listen((user) {
      add(AuthenticationUserChanged(user));
    });
    on<AuthenticationUserChanged>((event, emit) {
      if(event.user != MyUser.empty){
        emit(AuthenticationState.autheticated(event.user!));
      }else{
        emit(const AuthenticationState.unauthenticated());
      }
    });
  }

  @override
  Future<void> close() {
    _userSubscription.cancel();
    return super.close();
  }
}
