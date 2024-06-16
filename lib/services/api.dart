import 'package:http/http.dart' as http;
import 'package:trogentask/models/course_model.dart';
import 'package:trogentask/models/session_model.dart';
import 'dart:convert';

import 'package:trogentask/models/home_model.dart';

String baseUrl = 'https://trogon.info/tutorpro/edspark/api/';
String token =
    'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpZCI6IjIiLCJ1c2VyX2lkIjoiMiIsInJvbGVfaWQiOiIyIiwicm9sZV9sYWJlbCI6IlVzZXIiLCJwaG9uZSI6Ijk5NDY4MDExMDAifQ.BcHZkDQ_VPPQ-jnOtS4Tnwx_4GqQ9761q7BUOjPpML8';

Future<HomeModel?> getHomeData() async {
  final url = Uri.parse(baseUrl + 'my_course?auth_token=' + token);
  final response = await http.get(
    url,
  );

  if (response.statusCode == 200) {
    final jsonData = jsonDecode(response.body);
    return HomeModel.fromJson(jsonData);
  } else {}
}

Future<List<CourseModel>?> getCourseData() async {
  final url = Uri.parse(baseUrl +
      'levels_by_course?auth_token=' +
      token +
      '&course_id=1&section_id=1');
  final response = await http.get(
    url,
  );

  if (response.statusCode == 200) {
    final jsonData = jsonDecode(response.body);
    List datas = jsonData['data'];

    List<CourseModel> CourseList = [];
    int count = 0;

    for (var data in datas) {
      CourseList.add(CourseModel(
          day: data['id'], lessons: data['sections'], isSelected: count == 0));
      count++;
    }

    return CourseList;
  } else {}
}

Future<SessionModel?> getSessionData() async {
  final url = Uri.parse(
      baseUrl + 'get_lesson_videos?auth_token=' + token + '&lesson_id=1');
  final response = await http.get(
    url,
  );

  if (response.statusCode == 200) {
    final jsonData = jsonDecode(response.body);

    SessionModel data = SessionModel.fromJson(jsonData);
    print(data.url);
    return data;
  } else {

  }
}
