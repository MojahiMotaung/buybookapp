part of 'authentication_bloc.dart';

enum AuthenticationStatus { autheticated, unauthenticated, unknown}

class AuthenticationState extends Equatable {

  final AuthenticationStatus status;
  final MyUser? user;

  const AuthenticationState._({
    this.status = AuthenticationStatus.unknown,
    this.user
  });

  const AuthenticationState.unknown() : this._();

  const AuthenticationState.autheticated(MyUser myUser) :
    this._(status: AuthenticationStatus.autheticated, user: myUser);

  const AuthenticationState.unauthenticated() :
    this._(status: AuthenticationStatus.unauthenticated);

  @override
  List<Object?> get props => [status, user];

}
