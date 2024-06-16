import 'package:curved_labeled_navigation_bar/curved_navigation_bar.dart';
import 'package:curved_labeled_navigation_bar/curved_navigation_bar_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:trogentask/ui/course/Course_Page.dart';

import 'package:trogentask/ui/home/header_widget.dart';
import 'package:trogentask/ui/home/options_widget.dart';

import 'package:trogentask/ui/home/ads_wiget.dart';
import 'package:trogentask/bloc/home/home_bloc.dart';
import 'package:trogentask/ui/home/courses_widget.dart';


class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        animationDuration: Duration(milliseconds: 250),
        index: 2,
        backgroundColor: Colors.transparent,
        buttonBackgroundColor: Color.fromARGB(255, 81, 46, 126),
        items: [
          CurvedNavigationBarItem(
            child: Icon(_selectedIndex == 0 ? Icons.home : Icons.home_outlined,
                color: _selectedIndex == 0
                    ? Color.fromARGB(
                        255,
                        249,
                        185,
                        60,
                      )
                    : Colors.black),
            label: _selectedIndex == 0 ? '' : 'Home',
          ),
          CurvedNavigationBarItem(
            child: Icon(
                _selectedIndex == 1
                    ? Icons.my_library_books_rounded
                    : Icons.my_library_books_outlined,
                color: _selectedIndex == 1
                    ? Color.fromARGB(
                        255,
                        249,
                        185,
                        60,
                      )
                    : Colors.black),
            label: _selectedIndex == 1 ? '' : 'My course',
          ),
          CurvedNavigationBarItem(
            child: Icon(
                _selectedIndex == 2
                    ? Icons.emoji_events
                    : Icons.emoji_events_outlined,
                color: _selectedIndex == 2
                    ? Color.fromARGB(
                        255,
                        249,
                        185,
                        60,
                      )
                    : Colors.black),
            label: _selectedIndex == 2 ? '' : '',
          ),
          CurvedNavigationBarItem(
            child: Icon(
                _selectedIndex == 3
                    ? Icons.menu_book
                    : Icons.menu_book_outlined,
                color: _selectedIndex == 3
                    ? Color.fromARGB(
                        255,
                        249,
                        185,
                        60,
                      )
                    : Colors.black),
            label: _selectedIndex == 3 ? '' : 'Analysis',
          ),
          CurvedNavigationBarItem(
            child:
                Icon(_selectedIndex == 5 ? Icons.person : Icons.person_outline,
                    color: _selectedIndex == 4
                        ? Color.fromARGB(
                            255,
                            249,
                            185,
                            60,
                          )
                        : Colors.black),
            label: _selectedIndex == 4 ? '' : 'Profile',
          ),
        ],
        onTap: (index) {
          if (index == 1) {
            _selectedIndex = 2;
            setState(() {});

            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => CoursePage()),
            );
          } else {
            _selectedIndex = index;
            setState(() {});
          }
         
        },
      ),
      body: BlocBuilder<HomeBloc, HomeState>(
        builder: (context, state) {
          if (state is HomeInitial) {
            BlocProvider.of<HomeBloc>(context).add(LoadHomeData());
            return Center(
                child: CircularProgressIndicator(
              color: Colors.red,
            ));
          }
          if (state is HomeLoading) {
            return Center(
                child: CircularProgressIndicator(
              color: Colors.red,
            ));
          }
          if (state is HomeLoadedState) {
            return SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min, // Added this line
                children: [
                  Header_widget(),
                  OptionsWidget(),
                  courses_widget(),
                  adsWidget(),
                  SizedBox(
                    height: 50,
                  )
                ],
              ),
            );
          }
          if (state is HomeErrorState) {
            return Center(
              child: Text("Something wrong"),
            );
          }
          return Center();
        },
      ),
    );
  }
}
