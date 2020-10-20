library canvas_api;

import 'package:canvas_api/courses/enrollment.dart';

class User {
  int id;
  String name;
  String sortableName;
  String shortName;
  String sisUserId;
  int sisImportId;
  String integrationId;
  String loginId;
  String avatarUrl;
  List<Enrollment> enrollments;
  String email;
  String locale;
  String lastLogin;
  String timeZone;
  String bio;

  User(
      {this.id,
      this.name,
      this.sortableName,
      this.shortName,
      this.sisUserId,
      this.sisImportId,
      this.integrationId,
      this.loginId,
      this.avatarUrl,
      this.enrollments,
      this.email,
      this.locale,
      this.lastLogin,
      this.timeZone,
      this.bio});

  User.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    sortableName = json['sortable_name'];
    shortName = json['short_name'];
    sisUserId = json['sis_user_id'];
    sisImportId = json['sis_import_id'];
    integrationId = json['integration_id'];
    loginId = json['login_id'];
    avatarUrl = json['avatar_url'];
    if (json['enrollments'] != null) {
      enrollments = new List<Enrollment>();
      json['enrollments'].forEach((v) {
        enrollments.add(new Enrollment.fromJson(v));
      });
    }
    email = json['email'];
    locale = json['locale'];
    lastLogin = json['last_login'];
    timeZone = json['time_zone'];
    bio = json['bio'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['sortable_name'] = this.sortableName;
    data['short_name'] = this.shortName;
    data['sis_user_id'] = this.sisUserId;
    data['sis_import_id'] = this.sisImportId;
    data['integration_id'] = this.integrationId;
    data['login_id'] = this.loginId;
    data['avatar_url'] = this.avatarUrl;
    if (this.enrollments != null) {
      data['enrollments'] = this.enrollments.map((v) => v.toJson()).toList();
    }
    data['email'] = this.email;
    data['locale'] = this.locale;
    data['last_login'] = this.lastLogin;
    data['time_zone'] = this.timeZone;
    data['bio'] = this.bio;
    return data;
  }
}
