import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:trogentask/bloc/course/course_bloc.dart';

class CourseHeaderWidget extends StatefulWidget {
  const CourseHeaderWidget({super.key});

  @override
  State<CourseHeaderWidget> createState() => _CourseHeaderWidgetState();
}

class _CourseHeaderWidgetState extends State<CourseHeaderWidget> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CourseBloc, CourseState>(
      builder: (context, state) {
        if (state is CourseLoadedState) {
          return Container(
            height: 250,
            // color: Colors.amber,
            child: Stack(
              children: [
                Container(
                  height: 174,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    gradient: LinearGradient(
                      begin: Alignment(0.164, -1.285),
                      end: Alignment(-0.195, 2.427),
                      colors: <Color>[Color(0xFF512E7E), Color(0xFFA073DA)],
                      stops: <double>[0.074, 0.99],
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(left: 19.0),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: SizedBox(
                        width: 239.2,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              margin: EdgeInsets.fromLTRB(0, 4, 0, 0),
                              width: 10.4,
                              height: 18,
                              child: SizedBox(
                                width: 10.4,
                                height: 18,
                                child: Icon(
                                  Icons.arrow_back_ios_new_rounded,
                                  color: Color(0xFFFFFFFF),
                                ),
                              ),
                            ),
                            Text(
                              'Course Name',
                              style: GoogleFonts.getFont(
                                'Inter',
                                fontWeight: FontWeight.w600,
                                fontSize: 18,
                                letterSpacing: -0.3,
                                color: Color(0xFFFFFFFF),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 120),
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: state.datas!.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Padding(
                        padding: EdgeInsets.only(left: 21.0),
                        child: Days(state.datas![index].day,
                            state.datas![index].isSelected),
                      );
                    },
                  ),
                ),
              ],
            ),
          );
        }
        return Center();
      },
    );
  }
}

class Days extends StatelessWidget {
  String day;
  bool isSelected;
  Days(this.day, this.isSelected);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        child: Column(
          children: [
            Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.white, // Set border color
                    width: 2.0, // Set border width
                    style: BorderStyle.solid, // Set border style
                  ),
                  color: isSelected ? Color(0xFF553283) : Color(0xFFF2E8F5),
                  borderRadius: BorderRadius.circular(100),
                ),
                child: Container(
                  child: Container(
                    padding: EdgeInsets.fromLTRB(15, 13, 15.2, 20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          margin: EdgeInsets.fromLTRB(4, 0, 4.8, 5),
                          child: Text(
                            'DAY',
                            style: GoogleFonts.getFont(
                              'Inter',
                              fontWeight: FontWeight.w400,
                              fontSize: 12,
                              letterSpacing: -0.2,
                              color:
                                  isSelected ? Colors.white : Color(0xFF553283),
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 0, 0.1, 5),
                          child: Text(
                            day,
                            style: GoogleFonts.getFont(
                              'Inter',
                              fontWeight: FontWeight.w600,
                              fontSize: 16,
                              letterSpacing: -0.2,
                              color:
                                  isSelected ? Colors.white : Color(0xFF553283),
                            ),
                          ),
                        ),
                        Text(
                          '01/04',
                          style: GoogleFonts.getFont(
                            'Inter',
                            fontWeight: FontWeight.w400,
                            fontSize: 12,
                            letterSpacing: -0.2,
                            color:
                                isSelected ? Colors.white : Color(0xFF553283),
                          ),
                        ),
                      ],
                    ),
                  ),
                )),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: isSelected
                  ? Icon(
                      Icons.circle_rounded,
                      size: 8,
                      color: Color(0xFF512E7E),
                    )
                  : Center(),
            )
          ],
        ),
      ),
      onTap: () {
        BlocProvider.of<CourseBloc>(context).add(CourseDayClickedEvent(day));
      },
    );
  }
}
