class SessionModel {
  String title;
  String url;
  String duration;

  SessionModel(this.title, this.url, this.duration);

  factory SessionModel.fromJson(Map<String, dynamic> json) {
    return SessionModel(
      json['data']['video_list'][0]['title'] as String,
      json['data']['video_list'][0]['video_url'] as String,
      json['data']['video_list'][0]['duration'] as String,
    );
  }
}
