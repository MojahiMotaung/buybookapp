abstract class UserRepo {
  Stream<MyUser> get user;

  Future<MyUser> signUp(MyUser myUser, String password);

  Future<void> setUserData(MyUser myUser);

  Future<void> signIn(MyUser myUser, String password);

  Future<void> logOut();

}