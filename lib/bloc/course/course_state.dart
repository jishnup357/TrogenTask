part of 'course_bloc.dart';

@immutable
abstract class CourseState {}

class CourseInitial extends CourseState {}

class CourseLoadingState extends CourseState {}

class CourseLoadedState extends CourseState {
  List<CourseModel>? datas;

  CourseLoadedState(this.datas);
}

class CourseErrorState extends CourseState {}
