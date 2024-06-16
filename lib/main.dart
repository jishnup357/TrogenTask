import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:trogentask/bloc/course/course_bloc.dart';
import 'package:trogentask/bloc/home/home_bloc.dart';
import 'package:trogentask/ui/home/home_page.dart';

import 'package:trogentask/bloc/session/session_bloc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);
  runApp(MultiBlocProvider(providers: [
    BlocProvider<HomeBloc>(
      create: (BuildContext context) => HomeBloc(),
    ),
    BlocProvider<CourseBloc>(
      create: (BuildContext context) => CourseBloc(),
    ),
    BlocProvider<SessionBloc>(
      create: (BuildContext context) => SessionBloc(),
    ),
  ], child: MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: HomePage());
  }
}
