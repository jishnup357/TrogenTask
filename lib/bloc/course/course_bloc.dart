import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import 'package:trogentask/models/course_model.dart';

import 'package:trogentask/services/api.dart';

part 'course_event.dart';
part 'course_state.dart';

class CourseBloc extends Bloc<CourseEvent, CourseState> {
  List<CourseModel>? datas;

  CourseBloc() : super(CourseInitial()) {
    on<CourseEvent>((event, emit) async {
      if (event is LoadCourseEvent) {
        try {
          datas = await getCourseData();
          emit(CourseLoadedState(datas));
        } catch (e) {
          emit(CourseErrorState());
        }
      }
      if (event is CourseDayClickedEvent) {
        datas!.forEach(
          (element) {
            if (event.day == element.day) {
              element.isSelected = true;
            } else {
              element.isSelected = false;
            }
          },
        );

        emit(CourseLoadedState(datas));
      }


    });
  }
}
