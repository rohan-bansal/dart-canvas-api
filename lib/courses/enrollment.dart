library canvas_api;

import 'package:canvas_api/courses/grade.dart';
import 'package:canvas_api/users/user.dart';

class Enrollment {
  int id;
  int courseId;
  String sisCourseId;
  String courseIntegrationId;
  int courseSectionId;
  String sectionIntegrationId;
  String sisAccountId;
  String sisSectionId;
  String sisUserId;
  String enrollmentState;
  bool limitPrivilegesToCourseSection;
  int sisImportId;
  int rootAccountId;
  String type;
  int userId;
  Null associatedUserId;
  String role;
  int roleId;
  String createdAt;
  String updatedAt;
  String startAt;
  String endAt;
  String lastActivityAt;
  String lastAttendedAt;
  int totalActivityTime;
  String htmlUrl;
  Grade grades;
  User user;
  String overrideGrade;
  double overrideScore;
  String unpostedCurrentGrade;
  String unpostedFinalGrade;
  String unpostedCurrentScore;
  String unpostedFinalScore;
  bool hasGradingPeriods;
  bool totalsForAllGradingPeriodsOption;
  String currentGradingPeriodTitle;
  int currentGradingPeriodId;
  String currentPeriodOverrideGrade;
  double currentPeriodOverrideScore;
  double currentPeriodUnpostedCurrentScore;
  double currentPeriodUnpostedFinalScore;
  String currentPeriodUnpostedCurrentGrade;
  String currentPeriodUnpostedFinalGrade;

  Enrollment(
      {this.id,
      this.courseId,
      this.sisCourseId,
      this.courseIntegrationId,
      this.courseSectionId,
      this.sectionIntegrationId,
      this.sisAccountId,
      this.sisSectionId,
      this.sisUserId,
      this.enrollmentState,
      this.limitPrivilegesToCourseSection,
      this.sisImportId,
      this.rootAccountId,
      this.type,
      this.userId,
      this.associatedUserId,
      this.role,
      this.roleId,
      this.createdAt,
      this.updatedAt,
      this.startAt,
      this.endAt,
      this.lastActivityAt,
      this.lastAttendedAt,
      this.totalActivityTime,
      this.htmlUrl,
      this.grades,
      this.user,
      this.overrideGrade,
      this.overrideScore,
      this.unpostedCurrentGrade,
      this.unpostedFinalGrade,
      this.unpostedCurrentScore,
      this.unpostedFinalScore,
      this.hasGradingPeriods,
      this.totalsForAllGradingPeriodsOption,
      this.currentGradingPeriodTitle,
      this.currentGradingPeriodId,
      this.currentPeriodOverrideGrade,
      this.currentPeriodOverrideScore,
      this.currentPeriodUnpostedCurrentScore,
      this.currentPeriodUnpostedFinalScore,
      this.currentPeriodUnpostedCurrentGrade,
      this.currentPeriodUnpostedFinalGrade});

  Enrollment.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    courseId = json['course_id'];
    sisCourseId = json['sis_course_id'];
    courseIntegrationId = json['course_integration_id'];
    courseSectionId = json['course_section_id'];
    sectionIntegrationId = json['section_integration_id'];
    sisAccountId = json['sis_account_id'];
    sisSectionId = json['sis_section_id'];
    sisUserId = json['sis_user_id'];
    enrollmentState = json['enrollment_state'];
    limitPrivilegesToCourseSection = json['limit_privileges_to_course_section'];
    sisImportId = json['sis_import_id'];
    rootAccountId = json['root_account_id'];
    type = json['type'];
    userId = json['user_id'];
    associatedUserId = json['associated_user_id'];
    role = json['role'];
    roleId = json['role_id'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    startAt = json['start_at'];
    endAt = json['end_at'];
    lastActivityAt = json['last_activity_at'];
    lastAttendedAt = json['last_attended_at'];
    totalActivityTime = json['total_activity_time'];
    htmlUrl = json['html_url'];
    grades =
        json['grades'] != null ? new Grade.fromJson(json['grades']) : null;
    user = json['user'] != null ? new User.fromJson(json['user']) : null;
    overrideGrade = json['override_grade'];
    overrideScore = json['override_score'];
    unpostedCurrentGrade = json['unposted_current_grade'];
    unpostedFinalGrade = json['unposted_final_grade'];
    unpostedCurrentScore = json['unposted_current_score'];
    unpostedFinalScore = json['unposted_final_score'];
    hasGradingPeriods = json['has_grading_periods'];
    totalsForAllGradingPeriodsOption =
        json['totals_for_all_grading_periods_option'];
    currentGradingPeriodTitle = json['current_grading_period_title'];
    currentGradingPeriodId = json['current_grading_period_id'];
    currentPeriodOverrideGrade = json['current_period_override_grade'];
    currentPeriodOverrideScore = json['current_period_override_score'];
    currentPeriodUnpostedCurrentScore =
        json['current_period_unposted_current_score'];
    currentPeriodUnpostedFinalScore =
        json['current_period_unposted_final_score'];
    currentPeriodUnpostedCurrentGrade =
        json['current_period_unposted_current_grade'];
    currentPeriodUnpostedFinalGrade =
        json['current_period_unposted_final_grade'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['course_id'] = this.courseId;
    data['sis_course_id'] = this.sisCourseId;
    data['course_integration_id'] = this.courseIntegrationId;
    data['course_section_id'] = this.courseSectionId;
    data['section_integration_id'] = this.sectionIntegrationId;
    data['sis_account_id'] = this.sisAccountId;
    data['sis_section_id'] = this.sisSectionId;
    data['sis_user_id'] = this.sisUserId;
    data['enrollment_state'] = this.enrollmentState;
    data['limit_privileges_to_course_section'] =
        this.limitPrivilegesToCourseSection;
    data['sis_import_id'] = this.sisImportId;
    data['root_account_id'] = this.rootAccountId;
    data['type'] = this.type;
    data['user_id'] = this.userId;
    data['associated_user_id'] = this.associatedUserId;
    data['role'] = this.role;
    data['role_id'] = this.roleId;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    data['start_at'] = this.startAt;
    data['end_at'] = this.endAt;
    data['last_activity_at'] = this.lastActivityAt;
    data['last_attended_at'] = this.lastAttendedAt;
    data['total_activity_time'] = this.totalActivityTime;
    data['html_url'] = this.htmlUrl;
    if (this.grades != null) {
      data['grades'] = this.grades.toJson();
    }
    if (this.user != null) {
      data['user'] = this.user.toJson();
    }
    data['override_grade'] = this.overrideGrade;
    data['override_score'] = this.overrideScore;
    data['unposted_current_grade'] = this.unpostedCurrentGrade;
    data['unposted_final_grade'] = this.unpostedFinalGrade;
    data['unposted_current_score'] = this.unpostedCurrentScore;
    data['unposted_final_score'] = this.unpostedFinalScore;
    data['has_grading_periods'] = this.hasGradingPeriods;
    data['totals_for_all_grading_periods_option'] =
        this.totalsForAllGradingPeriodsOption;
    data['current_grading_period_title'] = this.currentGradingPeriodTitle;
    data['current_grading_period_id'] = this.currentGradingPeriodId;
    data['current_period_override_grade'] = this.currentPeriodOverrideGrade;
    data['current_period_override_score'] = this.currentPeriodOverrideScore;
    data['current_period_unposted_current_score'] =
        this.currentPeriodUnpostedCurrentScore;
    data['current_period_unposted_final_score'] =
        this.currentPeriodUnpostedFinalScore;
    data['current_period_unposted_current_grade'] =
        this.currentPeriodUnpostedCurrentGrade;
    data['current_period_unposted_final_grade'] =
        this.currentPeriodUnpostedFinalGrade;
    return data;
  }
}