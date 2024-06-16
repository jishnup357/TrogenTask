import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:trogentask/models/session_model.dart';

import 'package:trogentask/services/api.dart';

part 'session_event.dart';
part 'session_state.dart';

class SessionBloc extends Bloc<SessionEvent, SessionState> {
  SessionBloc() : super(SessionInitial()) {
    on<SessionEvent>((event, emit) async {
      if (event is SessionLoadEvent) {
        try {
          SessionModel? data = await getSessionData();
          emit(SessionLoadedState(data!));
        } catch (e) {
          emit(SessionErrorState());
        }
      }
    });
  }
}
