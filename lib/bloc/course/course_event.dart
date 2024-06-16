part of 'course_bloc.dart';

@immutable
abstract class CourseEvent {}

class LoadCourseEvent extends CourseEvent {}

class CourseDayClickedEvent extends CourseEvent {
  String day;
  CourseDayClickedEvent(this.day);
}
