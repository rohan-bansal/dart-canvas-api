library canvas_api;

import 'package:canvas_api/courses/assignment.dart';
import 'package:canvas_api/courses/enrollment.dart';

class Course {
  int id;
  int sisCourseId;
  String uuid;
  int integrationId;
  int sisImportId;
  String name;
  String courseCode;
  String workflowState;
  int accountId;
  int rootAccountId;
  int enrollmentTermId;
  int gradingStandardId;
  String gradePassbackSetting;
  String createdAt;
  String startAt;
  String endAt;
  String locale;
  List<Enrollment> enrollments;
  int totalStudents;
  CalendarLink calendar;
  String defaultView;
  String syllabusBody;
  int needsGradingCount;
  Term term;
  CourseProgress courseProgress;
  bool applyAssignmentGroupWeights;
  Permissions permissions;
  bool isPublic;
  bool isPublicToAuthUsers;
  bool publicSyllabus;
  bool publicSyllabusToAuth;
  String publicDescription;
  int storageQuotaMb;
  int storageQuotaUsedMb;
  bool hideFinalGrades;
  String license;
  bool allowStudentAssignmentEdits;
  bool allowWikiComments;
  bool allowStudentForumAttachments;
  bool openEnrollment;
  bool selfEnrollment;
  bool restrictEnrollmentsToCourseDates;
  String courseFormat;
  bool accessRestrictedByDate;
  String timeZone;
  bool blueprint;
  BlueprintRestrictions blueprintRestrictions;
  BlueprintRestrictionsByObjectType blueprintRestrictionsByObjectType;

  Course(
      {this.id,
      this.sisCourseId,
      this.uuid,
      this.integrationId,
      this.sisImportId,
      this.name,
      this.courseCode,
      this.workflowState,
      this.accountId,
      this.rootAccountId,
      this.enrollmentTermId,
      this.gradingStandardId,
      this.gradePassbackSetting,
      this.createdAt,
      this.startAt,
      this.endAt,
      this.locale,
      this.enrollments,
      this.totalStudents,
      this.calendar,
      this.defaultView,
      this.syllabusBody,
      this.needsGradingCount,
      this.term,
      this.courseProgress,
      this.applyAssignmentGroupWeights,
      this.permissions,
      this.isPublic,
      this.isPublicToAuthUsers,
      this.publicSyllabus,
      this.publicSyllabusToAuth,
      this.publicDescription,
      this.storageQuotaMb,
      this.storageQuotaUsedMb,
      this.hideFinalGrades,
      this.license,
      this.allowStudentAssignmentEdits,
      this.allowWikiComments,
      this.allowStudentForumAttachments,
      this.openEnrollment,
      this.selfEnrollment,
      this.restrictEnrollmentsToCourseDates,
      this.courseFormat,
      this.accessRestrictedByDate,
      this.timeZone,
      this.blueprint,
      this.blueprintRestrictions,
      this.blueprintRestrictionsByObjectType});

  Course.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    sisCourseId = json['sis_course_id'];
    uuid = json['uuid'];
    integrationId = json['integration_id'];
    sisImportId = json['sis_import_id'];
    name = json['name'];
    courseCode = json['course_code'];
    workflowState = json['workflow_state'];
    accountId = json['account_id'];
    rootAccountId = json['root_account_id'];
    enrollmentTermId = json['enrollment_term_id'];
    gradingStandardId = json['grading_standard_id'];
    gradePassbackSetting = json['grade_passback_setting'];
    createdAt = json['created_at'];
    startAt = json['start_at'];
    endAt = json['end_at'];
    locale = json['locale'];
    if (json['enrollment'] != null) {
      enrollments = new List<Enrollment>();
      json['enrollments'].forEach((v) {
        enrollments.add(new Enrollment.fromJson(v));
      });
    }
    totalStudents = json['total_students'];
    calendar = json['calendar'] != null
        ? new CalendarLink.fromJson(json['calendar'])
        : null;
    defaultView = json['default_view'];
    syllabusBody = json['syllabus_body'];
    needsGradingCount = json['needs_grading_count'];
    term = json['term'] != null ? new Term.fromJson(json['term']) : null;
    courseProgress = json['course_progress'] != null
        ? new CourseProgress.fromJson(json['course_progress'])
        : null;
    applyAssignmentGroupWeights = json['apply_assignment_group_weights'];
    permissions = json['permissions'] != null
        ? new Permissions.fromJson(json['permissions'])
        : null;
    isPublic = json['is_public'];
    isPublicToAuthUsers = json['is_public_to_auth_users'];
    publicSyllabus = json['public_syllabus'];
    publicSyllabusToAuth = json['public_syllabus_to_auth'];
    publicDescription = json['public_description'];
    storageQuotaMb = json['storage_quota_mb'];
    storageQuotaUsedMb = json['storage_quota_used_mb'];
    hideFinalGrades = json['hide_final_grades'];
    license = json['license'];
    allowStudentAssignmentEdits = json['allow_student_assignment_edits'];
    allowWikiComments = json['allow_wiki_comments'];
    allowStudentForumAttachments = json['allow_student_forum_attachments'];
    openEnrollment = json['open_enrollment'];
    selfEnrollment = json['self_enrollment'];
    restrictEnrollmentsToCourseDates =
        json['restrict_enrollments_to_course_dates'];
    courseFormat = json['course_format'];
    accessRestrictedByDate = json['access_restricted_by_date'];
    timeZone = json['time_zone'];
    blueprint = json['blueprint'];
    blueprintRestrictions = json['blueprint_restrictions'] != null
        ? new BlueprintRestrictions.fromJson(json['blueprint_restrictions'])
        : null;
    blueprintRestrictionsByObjectType =
        json['blueprint_restrictions_by_object_type'] != null
            ? new BlueprintRestrictionsByObjectType.fromJson(
                json['blueprint_restrictions_by_object_type'])
            : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['sis_course_id'] = this.sisCourseId;
    data['uuid'] = this.uuid;
    data['integration_id'] = this.integrationId;
    data['sis_import_id'] = this.sisImportId;
    data['name'] = this.name;
    data['course_code'] = this.courseCode;
    data['workflow_state'] = this.workflowState;
    data['account_id'] = this.accountId;
    data['root_account_id'] = this.rootAccountId;
    data['enrollment_term_id'] = this.enrollmentTermId;
    data['grading_standard_id'] = this.gradingStandardId;
    data['grade_passback_setting'] = this.gradePassbackSetting;
    data['created_at'] = this.createdAt;
    data['start_at'] = this.startAt;
    data['end_at'] = this.endAt;
    data['locale'] = this.locale;
    if (this.enrollments != null) {
      data['enrollments'] = this.enrollments.map((v) => v.toJson()).toList();
    }
    data['total_students'] = this.totalStudents;
    if (this.calendar != null) {
      data['calendar'] = this.calendar.toJson();
    }
    data['default_view'] = this.defaultView;
    data['syllabus_body'] = this.syllabusBody;
    data['needs_grading_count'] = this.needsGradingCount;
    if (this.term != null) {
      data['term'] = this.term.toJson();
    }
    if (this.courseProgress != null) {
      data['course_progress'] = this.courseProgress.toJson();
    }
    data['apply_assignment_group_weights'] = this.applyAssignmentGroupWeights;
    if (this.permissions != null) {
      data['permissions'] = this.permissions.toJson();
    }
    data['is_public'] = this.isPublic;
    data['is_public_to_auth_users'] = this.isPublicToAuthUsers;
    data['public_syllabus'] = this.publicSyllabus;
    data['public_syllabus_to_auth'] = this.publicSyllabusToAuth;
    data['public_description'] = this.publicDescription;
    data['storage_quota_mb'] = this.storageQuotaMb;
    data['storage_quota_used_mb'] = this.storageQuotaUsedMb;
    data['hide_final_grades'] = this.hideFinalGrades;
    data['license'] = this.license;
    data['allow_student_assignment_edits'] = this.allowStudentAssignmentEdits;
    data['allow_wiki_comments'] = this.allowWikiComments;
    data['allow_student_forum_attachments'] = this.allowStudentForumAttachments;
    data['open_enrollment'] = this.openEnrollment;
    data['self_enrollment'] = this.selfEnrollment;
    data['restrict_enrollments_to_course_dates'] =
        this.restrictEnrollmentsToCourseDates;
    data['course_format'] = this.courseFormat;
    data['access_restricted_by_date'] = this.accessRestrictedByDate;
    data['time_zone'] = this.timeZone;
    data['blueprint'] = this.blueprint;
    if (this.blueprintRestrictions != null) {
      data['blueprint_restrictions'] = this.blueprintRestrictions.toJson();
    }
    if (this.blueprintRestrictionsByObjectType != null) {
      data['blueprint_restrictions_by_object_type'] =
          this.blueprintRestrictionsByObjectType.toJson();
    }
    return data;
  }
}

class Permissions {
  bool createDiscussionTopic;
  bool createAnnouncement;

  Permissions({this.createDiscussionTopic, this.createAnnouncement});

  Permissions.fromJson(Map<String, dynamic> json) {
    createDiscussionTopic = json['create_discussion_topic'];
    createAnnouncement = json['create_announcement'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['create_discussion_topic'] = this.createDiscussionTopic;
    data['create_announcement'] = this.createAnnouncement;
    return data;
  }
}

class BlueprintRestrictions {
  bool content;
  bool points;
  bool dueDates;
  bool availabilityDates;

  BlueprintRestrictions(
      {this.content, this.points, this.dueDates, this.availabilityDates});

  BlueprintRestrictions.fromJson(Map<String, dynamic> json) {
    content = json['content'];
    points = json['points'];
    dueDates = json['due_dates'];
    availabilityDates = json['availability_dates'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['content'] = this.content;
    data['points'] = this.points;
    data['due_dates'] = this.dueDates;
    data['availability_dates'] = this.availabilityDates;
    return data;
  }
}

class BlueprintRestrictionsByObjectType {
  Assignment assignment;
  WikiPage wikiPage;

  BlueprintRestrictionsByObjectType({this.assignment, this.wikiPage});

  BlueprintRestrictionsByObjectType.fromJson(Map<String, dynamic> json) {
    assignment = json['assignment'] != null
        ? new Assignment.fromJson(json['assignment'])
        : null;
    wikiPage = json['wiki_page'] != null
        ? new WikiPage.fromJson(json['wiki_page'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.assignment != null) {
      data['assignment'] = this.assignment.toJson();
    }
    if (this.wikiPage != null) {
      data['wiki_page'] = this.wikiPage.toJson();
    }
    return data;
  }
}

class WikiPage {
  bool content;

  WikiPage({this.content});

  WikiPage.fromJson(Map<String, dynamic> json) {
    content = json['content'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['content'] = this.content;
    return data;
  }
}

class CourseProgress {
  int requirementCount;
  int requirementCompletedCount;
  String nextRequirementUrl;
  String completedAt;

  CourseProgress(
      {this.requirementCount,
      this.requirementCompletedCount,
      this.nextRequirementUrl,
      this.completedAt});

  CourseProgress.fromJson(Map<String, dynamic> json) {
    requirementCount = json['requirement_count'];
    requirementCompletedCount = json['requirement_completed_count'];
    nextRequirementUrl = json['next_requirement_url'];
    completedAt = json['completed_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['requirement_count'] = this.requirementCount;
    data['requirement_completed_count'] = this.requirementCompletedCount;
    data['next_requirement_url'] = this.nextRequirementUrl;
    data['completed_at'] = this.completedAt;
    return data;
  }
}

class Term {
  int id;
  String name;
  String startAt;
  Null endAt;

  Term({this.id, this.name, this.startAt, this.endAt});

  Term.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    startAt = json['start_at'];
    endAt = json['end_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['start_at'] = this.startAt;
    data['end_at'] = this.endAt;
    return data;
  }
}

class CalendarLink {
  String ics;

  CalendarLink({this.ics});

  CalendarLink.fromJson(Map<String, dynamic> json) {
    ics = json['ics'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['ics'] = this.ics;
    return data;
  }
}