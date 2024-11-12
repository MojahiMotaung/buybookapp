export 'user.dart';

class MyUser{
  String userID;
  String email;
  String name;
  bool hasActiveCart

  MyUser({
    required this.userID,
    required this.email,
    required this.name,
    required this.hasActiveCart,
  })
}