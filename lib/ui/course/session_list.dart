import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:trogentask/models/course_model.dart';
import 'package:trogentask/bloc/course/course_bloc.dart';
import 'package:trogentask/ui/session/session_page.dart';

class SessionList extends StatelessWidget {
  const SessionList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CourseBloc, CourseState>(
      builder: (context, state) {
        if (state is CourseLoadedState) {
          CourseModel? data;

          state.datas!.forEach(
            (element) {
              if (element.isSelected) {
                data = element;
              }
            },
          );
          return Expanded(
            child: ListView.builder(
              itemCount: data!.lessons.length,
              itemBuilder: (context, index) {
                return SessionCard(
                  data!.lessons[index]['thumbnail'],
                  data!.lessons[index]['level_id'],
                  data!.lessons[index]['id'],
                  data!.lessons[index]['title'],
                );
              },
            ),
          );
        }
        return Center();
      },
    );
  }
}

class SessionCard extends StatelessWidget {
  String thumbnail;

  String day;
  String lessons;
  String title;

  String baseUrl =
      'https://trogon.info/tutorpro/edspark/uploads/thumbnails/section_thumbnails/';
  SessionCard(this.thumbnail, this.day, this.lessons, this.title);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        height: 107,
        margin: EdgeInsets.fromLTRB(1, 0, 0, 17),
        decoration: BoxDecoration(
          border: Border.all(color: Color(0xFFECEAEA)),
          borderRadius: BorderRadius.circular(11),
          color: Color(0xFFFCFCFC),
          boxShadow: [
            BoxShadow(
              color: Color(0x1A000000),
              offset: Offset(0, 0),
              blurRadius: 2.75,
            ),
          ],
        ),
        child: Container(
          padding: EdgeInsets.fromLTRB(11, 12, 17, 13),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(
                        100.0),
                    child: Image.network(
                      baseUrl + thumbnail,
                      width: 80.0,
                      height: 80.0,
                      fit: BoxFit
                          .fill, 
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 107,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        margin: EdgeInsets.fromLTRB(0, 0, 6.6, 7),
                        child: Text(
                          'Day ${day} - Lesson ${lessons}',
                          style: GoogleFonts.getFont(
                            'Inter',
                            fontWeight: FontWeight.w500,
                            fontSize: 12,
                            height: 1.2,
                            letterSpacing: -0.2,
                            color: Color(0xFF553283),
                          ),
                        ),
                      ),
                      Text(
                        title,
                        style: GoogleFonts.getFont(
                          'Inter',
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                          height: 1.2,
                          letterSpacing: -0.2,
                          color: Color(0xFF000000),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => SessionPage()),
        );
      },
    );
  }
}
