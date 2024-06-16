import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SessionActions extends StatelessWidget {
  const SessionActions({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                child: Container(
                  decoration: BoxDecoration(
                    color: Color(0xFFFFFFFF),
                    borderRadius: BorderRadius.circular(22.5),
                  ),
                  child: Container(
                    width: 45,
                    height: 45,
                    padding: EdgeInsets.fromLTRB(14, 13, 13, 11.4),
                    child: SizedBox(
                        width: 18,
                        height: 20.6,
                        child:
                            Image.asset('assets/images/sessiondocument.png')),
                  ),
                ),
              ),
              Text(
                'Document',
                style: GoogleFonts.getFont(
                  'Inter',
                  fontWeight: FontWeight.w500,
                  fontSize: 12,
                  color: Color(0xFF000000),
                ),
              ),
            ],
          ),
        ),
        Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                child: Container(
                  decoration: BoxDecoration(
                    color: Color(0xFFFFFFFF),
                    borderRadius: BorderRadius.circular(22.5),
                  ),
                  child: Container(
                    width: 45,
                    height: 45,
                    padding: EdgeInsets.fromLTRB(14, 13, 13, 11.4),
                    child: SizedBox(
                        width: 18,
                        height: 20.6,
                        child:
                            Image.asset('assets/images/sessiondownload.png')),
                  ),
                ),
              ),
              Text(
                'Dowload',
                style: GoogleFonts.getFont(
                  'Inter',
                  fontWeight: FontWeight.w500,
                  fontSize: 12,
                  color: Color(0xFF000000),
                ),
              ),
            ],
          ),
        ),
        Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                child: Container(
                  decoration: BoxDecoration(
                    color: Color(0xFFFFFFFF),
                    borderRadius: BorderRadius.circular(22.5),
                  ),
                  child: Container(
                    width: 45,
                    height: 45,
                    padding: EdgeInsets.fromLTRB(14, 13, 13, 11.4),
                    child: SizedBox(
                        width: 18,
                        height: 20.6,
                        child: Image.asset('assets/images/sessionshare.png')),
                  ),
                ),
              ),
              Text(
                'Share',
                style: GoogleFonts.getFont(
                  'Inter',
                  fontWeight: FontWeight.w500,
                  fontSize: 12,
                  color: Color(0xFF000000),
                ),
              ),
            ],
          ),
        ),
        Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                child: Container(
                  decoration: BoxDecoration(
                    color: Color(0xFFFFFFFF),
                    borderRadius: BorderRadius.circular(22.5),
                  ),
                  child: Container(
                    width: 45,
                    height: 45,
                    padding: EdgeInsets.fromLTRB(14, 13, 13, 11.4),
                    child: SizedBox(
                        width: 18,
                        height: 20.6,
                        child:
                            Image.asset('assets/images/sessionwhatsapp.png')),
                  ),
                ),
              ),
              Text(
                'Doubts',
                style: GoogleFonts.getFont(
                  'Inter',
                  fontWeight: FontWeight.w500,
                  fontSize: 12,
                  color: Color(0xFF000000),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
