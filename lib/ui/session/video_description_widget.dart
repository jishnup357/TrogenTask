import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class VideoDescription extends StatelessWidget {
  String title;
  String duration;
  VideoDescription(this.title, this.duration);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(21, 0, 0, 32),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.fromLTRB(0, 0, 21, 8),
            child: Align(
              alignment: Alignment.topLeft,
              child: Text(
                title,
                style: GoogleFonts.getFont(
                  'Inter',
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                  height: 1.3,
                  color: Color(0xFF000000),
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(0, 0, 21, 22),
            child: Align(
              alignment: Alignment.topLeft,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 0, 10.7, 0),
                    child: Text(
                      'Part - 01',
                      textAlign: TextAlign.start,
                      style: GoogleFonts.getFont(
                        'Inter',
                        fontWeight: FontWeight.w400,
                        fontSize: 16,
                        color: Color(0xFFADADAD),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 1, 9.5, 1),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Color(0xFFADADAD),
                      ),
                      child: Container(
                        width: 0.5,
                        height: 17,
                      ),
                    ),
                  ),
                  Text(
                    duration,
                    style: GoogleFonts.getFont(
                      'Inter',
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                      color: Color(0xFFADADAD),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(0, 0, 0, 12),
            child: Align(
              alignment: Alignment.topLeft,
              child: Text(
                'Topics Covered',
                style: GoogleFonts.getFont(
                  'Inter',
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                  height: 1.3,
                  color: Color(0xFF000000),
                ),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.fromLTRB(0, 0, 4, 0),
                decoration: BoxDecoration(
                  border: Border.all(color: Color(0xFFEFEFEF)),
                  borderRadius: BorderRadius.circular(129),
                  color: Color(0xFFFFFFFF),
                ),
                child: Container(
                  padding: EdgeInsets.fromLTRB(5, 4, 9.7, 4),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        margin: EdgeInsets.fromLTRB(0, 0, 9, 0),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Color(0x8017C3B2),
                            borderRadius: BorderRadius.circular(13.5),
                          ),
                          child: Container(
                            width: 27,
                            height: 27,
                            padding: EdgeInsets.fromLTRB(6, 8, 6, 6),
                            child: SizedBox(
                                width: 15,
                                height: 13,
                                child:
                                    Image.asset('assets/images/bookgreen.png')),
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(0, 3, 0, 3),
                        child: Text(
                          'White Critically',
                          style: GoogleFonts.getFont(
                            'Inter',
                            fontWeight: FontWeight.w400,
                            fontSize: 11,
                            height: 1.5,
                            color: Color(0xFF000000),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(0, 0, 4, 0),
                decoration: BoxDecoration(
                  border: Border.all(color: Color(0xFFEFEFEF)),
                  borderRadius: BorderRadius.circular(129),
                  color: Color(0xFFFFFFFF),
                ),
                child: Container(
                  padding: EdgeInsets.fromLTRB(5, 4, 9.9, 4),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        margin: EdgeInsets.fromLTRB(0, 0, 9, 0),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Color(0x80F4BFDB),
                            borderRadius: BorderRadius.circular(13.5),
                          ),
                          child: Container(
                            width: 27,
                            height: 27,
                            padding: EdgeInsets.fromLTRB(6, 8, 6, 6),
                            child: SizedBox(
                                width: 15,
                                height: 13,
                                child:
                                    Image.asset('assets/images/bookrose.png')),
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(0, 3, 0, 3),
                        child: Text(
                          'Recognize & Reinforce',
                          style: GoogleFonts.getFont(
                            'Inter',
                            fontWeight: FontWeight.w400,
                            fontSize: 11,
                            height: 1.5,
                            color: Color(0xFF000000),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
