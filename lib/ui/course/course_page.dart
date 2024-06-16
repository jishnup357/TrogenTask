import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:trogentask/bloc/course/course_bloc.dart';
import 'package:trogentask/ui/course/course_header_widget.dart';

import 'package:trogentask/ui/course/session_list.dart';

class CoursePage extends StatefulWidget {
  const CoursePage({super.key});

  @override
  State<CoursePage> createState() => _CoursePageState();
}

class _CoursePageState extends State<CoursePage> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CourseBloc, CourseState>(
      builder: (context, state) {
        if (state is CourseErrorState) {
          return Scaffold(
            body: Center(
              child: Text("Something wrong"),
            ),
          );
        }
        if (state is CourseInitial) {
          BlocProvider.of<CourseBloc>(context).add(LoadCourseEvent());
          return Scaffold(
            body: Center(
              child: CircularProgressIndicator(
                color: Colors.red,
              ),
            ),
          );
        }
        if (state is CourseLoadedState) {
          return Scaffold(
            body: Column(
              children: [
                CourseHeaderWidget(),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset('assets/images/upgrade.png'),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Stack(
                    children: [
                      Image.asset('assets/images/whatsapp.png'),
                      Padding(
                        padding: EdgeInsets.only(left: 200, right: 20, top: 50),
                        child: Image.asset('assets/images/whatsappbutton.png'),
                      ),
                    ],
                  ),
                ),
                SessionList()
              ],
            ),
          );
        }
        return Center();
      },
    );
  }
}
