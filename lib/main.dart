import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:user_repo/user_repo.dart';
import 'app.dart';
import 'simple_bloc_observer.dart';

void main() async {
	WidgetsFlutterBinding.ensureInitialized();
	await Firebase.initializeApp();
	Bloc.observer = SimpleBlocObserver();
	SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  runApp(MyApp(FirebaseUserRepo()));
}