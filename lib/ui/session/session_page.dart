import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:trogentask/ui/session/session_actions_widget.dart';
import 'package:trogentask/ui/session/session_player_widget.dart';
import 'package:trogentask/ui/session/video_description_widget.dart';
import 'package:trogentask/bloc/session/session_bloc.dart';

class SessionPage extends StatelessWidget {
  const SessionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<SessionBloc, SessionState>(
        builder: (context, state) {
          if (state is SessionErrorState) {
            return Center(
              child: Text("Something wrong"),
            );
          }
          if (state is SessionInitial) {
            BlocProvider.of<SessionBloc>(context).add(SessionLoadEvent());
            return Center(child: CircularProgressIndicator());
          }
          if (state is SessionLoadedState) {
            return Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    height: 300,
                    color: Colors.amber,
                    child: PlayVideoFromNetwork(state.sessiondata.url),
                  ),
                  VideoDescription(
                      state.sessiondata.title, state.sessiondata.duration),
                  SessionActions()
                ]);
           
          }
          return Center();
        },
      ),
    );
  }
}
