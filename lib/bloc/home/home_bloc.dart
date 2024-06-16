import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';
import 'package:trogentask/models/home_model.dart';
import 'package:trogentask/services/api.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(HomeInitial()) {
    HomeModel? data;
    on<HomeEvent>((event, emit) async {
      print("EVENT" + event.toString());

      if (event is LoadHomeData) {
        try {
          data = await getHomeData();
        } catch (e) {
          emit(HomeErrorState());
        }

        if (data != null) {
          emit(HomeLoadedState(data!));
        } else {
          emit(HomeErrorState());
        }
      }
      if (event is CourseButtonClickEvent) {
        print("couse button clicked");
        emit(NavigateToCourseState());
      }
      // TODO: implement event handler
    });
  }
}
