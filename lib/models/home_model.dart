class HomeModel {
  String name;
  int coins;
  String selectedCourse;
  String profileImage;
  List<Map<String, dynamic>> subjects;

  HomeModel(this.name, this.coins, this.selectedCourse, this.profileImage,
      this.subjects);

  factory HomeModel.fromJson(Map<String, dynamic> json) {
    return HomeModel(
      json['data']['userdata']['first_name'] as String,
      json['data']['userdata']['coins'] as int,
      json['data']['userdata']['course_name'] as String,
      json['data']['userdata']['image'] as String,
      (json['data']['subjects'] as List<dynamic>)
          .map((subject) => Map<String, dynamic>.from(subject as Map))
          .toList(),
    );
  }
}
