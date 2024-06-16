import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class OptionsWidget extends StatelessWidget {
  const OptionsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            height: 86,
            width: 91,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color.fromARGB(255, 237, 97, 123),
                  Color.fromARGB(255, 242, 133, 155),
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Stack(
              children: [
                Align(
                    alignment: Alignment.center,
                    child: Image.asset('assets/images/exam.png', width: 34)),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    width: double.infinity,
                    height: 20, // Adjust the height as needed
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 237, 97, 123),
                      borderRadius: BorderRadius.only(
                        bottomLeft:
                            Radius.circular(8), 
                        bottomRight:
                            Radius.circular(8),
                      ),
                    ),
                    child: Center(
                      child: Text(
                        "Exam",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 86,
            width: 91,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Color(0xFFFFAF01), Color(0xFFECC07F)],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Stack(
              children: [
                Align(
                    alignment: Alignment.center,
                    child:
                        Image.asset('assets/images/practice.png', width: 34)),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    width: double.infinity,
                    height: 20, 
                    decoration: BoxDecoration(
                      color: Color(0xFFFFAF01),
                      borderRadius: BorderRadius.only(
                        bottomLeft:
                            Radius.circular(8), 
                        bottomRight:
                            Radius.circular(8), 
                      ),
                    ),
                    child: Center(
                      child: Text(
                        "Practice",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 86,
            width: 91,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Color(0xFF24AED2), Color(0xFF7BC9DD)],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Stack(
              children: [
                Align(
                    alignment: Alignment.center,
                    child: Image.asset('assets/images/exam.png', width: 34)),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    width: double.infinity,
                    height: 20, 
                    decoration: BoxDecoration(
                      color: Color(0xFF24AED2),
                      borderRadius: BorderRadius.only(
                        bottomLeft:
                            Radius.circular(8), 
                        bottomRight:
                            Radius.circular(8),
                      ),
                    ),
                    child: Center(
                      child: Text(
                        "Materials",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
