part of 'home_bloc.dart';

@immutable
abstract class HomeState {}

class HomeLoading extends HomeState {}

class HomeInitial extends HomeState {}

class HomeLoadedState extends HomeState {
  HomeModel data;
  HomeLoadedState(this.data);
}

class HomeErrorState extends HomeState {}

class NavigateToCourseState extends HomeState {}
