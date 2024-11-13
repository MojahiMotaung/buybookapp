import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:user_repo/user_repo.dart';

import 'app_view.dart';
import 'blocs/authentication_bloc/authentication_bloc.dart';

class MyApp extends StatelessWidget {
  final UserRepo userRepo;

  const MyApp(this.userRepo, {super.key});

  @override
  Widget build(BuildContext context) {

    return RepositoryProvider<AuthenticationBloc>(
      create: (context) => AuthenticationBloc(
        userRepo: userRepo
      ),
    
    child: MyAppView()
    );
    }
}