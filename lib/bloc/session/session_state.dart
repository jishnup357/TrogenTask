part of 'session_bloc.dart';

@immutable
abstract class SessionState {}

class SessionInitial extends SessionState {}

class SessionLoadingState extends SessionState {}

class SessionLoadedState extends SessionState {
  SessionModel sessiondata;

  SessionLoadedState(this.sessiondata);
}

class SessionErrorState extends SessionState {}
