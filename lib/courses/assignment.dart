library canvas_api;

import 'package:canvas_api/courses/submission.dart';

class Assignment {
  int id;
  String name;
  String description;
  String createdAt;
  String updatedAt;
  String dueAt;
  String lockAt;
  String unlockAt;
  bool hasOverrides;
  String allDates;
  int courseId;
  String htmlUrl;
  String submissionsDownloadUrl;
  int assignmentGroupId;
  bool dueDateRequired;
  List<String> allowedExtensions;
  int maxNameLength;
  bool turnitinEnabled;
  bool vericiteEnabled;
  TurnitinSettings turnitinSettings;
  bool gradeGroupStudentsIndividually;
  ExternalToolTagAttributes externalToolTagAttributes;
  bool peerReviews;
  bool automaticPeerReviews;
  int peerReviewCount;
  String peerReviewsAssignAt;
  bool intraGroupPeerReviews;
  int groupCategoryId;
  int needsGradingCount;
  List<NeedsGradingCountBySection> needsGradingCountBySection;
  int position;
  bool postToSis;
  String integrationId;
  IntegrationData integrationData;
  int pointsPossible;
  List<String> submissionTypes;
  bool hasSubmittedSubmissions;
  String gradingType;
  int gradingStandardId;
  bool published;
  bool unpublishable;
  bool onlyVisibleToOverrides;
  bool lockedForUser;
  LockInfo lockInfo;
  String lockExplanation;
  int quizId;
  bool anonymousSubmissions;
  String discussionTopic;
  bool freezeOnCopy;
  bool frozen;
  List<String> frozenAttributes;
  Submission submission;
  bool useRubricForGrading;
  String rubricSettings;
  List<RubricRating> rubric;
  List<int> assignmentVisibility;
  List<AssignmentOverride> overrides;
  bool omitFromFinalGrade;
  bool moderatedGrading;
  int graderCount;
  int finalGraderId;
  bool graderCommentsVisibleToGraders;
  bool gradersAnonymousToGraders;
  bool graderNamesVisibleToFinalGrader;
  bool anonymousGrading;
  int allowedAttempts;
  bool postManually;
  ScoreStatistics scoreStatistics;
  bool canSubmit;

  Assignment(
      {this.id,
      this.name,
      this.description,
      this.createdAt,
      this.updatedAt,
      this.dueAt,
      this.lockAt,
      this.unlockAt,
      this.hasOverrides,
      this.allDates,
      this.courseId,
      this.htmlUrl,
      this.submissionsDownloadUrl,
      this.assignmentGroupId,
      this.dueDateRequired,
      this.allowedExtensions,
      this.maxNameLength,
      this.turnitinEnabled,
      this.vericiteEnabled,
      this.turnitinSettings,
      this.gradeGroupStudentsIndividually,
      this.externalToolTagAttributes,
      this.peerReviews,
      this.automaticPeerReviews,
      this.peerReviewCount,
      this.peerReviewsAssignAt,
      this.intraGroupPeerReviews,
      this.groupCategoryId,
      this.needsGradingCount,
      this.needsGradingCountBySection,
      this.position,
      this.postToSis,
      this.integrationId,
      this.integrationData,
      this.pointsPossible,
      this.submissionTypes,
      this.hasSubmittedSubmissions,
      this.gradingType,
      this.gradingStandardId,
      this.published,
      this.unpublishable,
      this.onlyVisibleToOverrides,
      this.lockedForUser,
      this.lockInfo,
      this.lockExplanation,
      this.quizId,
      this.anonymousSubmissions,
      this.discussionTopic,
      this.freezeOnCopy,
      this.frozen,
      this.frozenAttributes,
      this.submission,
      this.useRubricForGrading,
      this.rubricSettings,
      this.rubric,
      this.assignmentVisibility,
      this.overrides,
      this.omitFromFinalGrade,
      this.moderatedGrading,
      this.graderCount,
      this.finalGraderId,
      this.graderCommentsVisibleToGraders,
      this.gradersAnonymousToGraders,
      this.graderNamesVisibleToFinalGrader,
      this.anonymousGrading,
      this.allowedAttempts,
      this.postManually,
      this.scoreStatistics,
      this.canSubmit});

  Assignment.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    description = json['description'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    dueAt = json['due_at'];
    lockAt = json['lock_at'];
    unlockAt = json['unlock_at'];
    hasOverrides = json['has_overrides'];
    allDates = json['all_dates'];
    courseId = json['course_id'];
    htmlUrl = json['html_url'];
    submissionsDownloadUrl = json['submissions_download_url'];
    assignmentGroupId = json['assignment_group_id'];
    dueDateRequired = json['due_date_required'];
    allowedExtensions = json['allowed_extensions'].cast<String>();
    maxNameLength = json['max_name_length'];
    turnitinEnabled = json['turnitin_enabled'];
    vericiteEnabled = json['vericite_enabled'];
    turnitinSettings = json['turnitin_settings'] != null
        ? new TurnitinSettings.fromJson(json['turnitin_settings'])
        : null;
    gradeGroupStudentsIndividually = json['grade_group_students_individually'];
    externalToolTagAttributes = json['external_tool_tag_attributes'] != null
        ? new ExternalToolTagAttributes.fromJson(
            json['external_tool_tag_attributes'])
        : null;
    peerReviews = json['peer_reviews'];
    automaticPeerReviews = json['automatic_peer_reviews'];
    peerReviewCount = json['peer_review_count'];
    peerReviewsAssignAt = json['peer_reviews_assign_at'];
    intraGroupPeerReviews = json['intra_group_peer_reviews'];
    groupCategoryId = json['group_category_id'];
    needsGradingCount = json['needs_grading_count'];
    if (json['needs_grading_count_by_section'] != null) {
      needsGradingCountBySection = new List<NeedsGradingCountBySection>();
      json['needs_grading_count_by_section'].forEach((v) {
        needsGradingCountBySection
            .add(new NeedsGradingCountBySection.fromJson(v));
      });
    }
    position = json['position'];
    postToSis = json['post_to_sis'];
    integrationId = json['integration_id'];
    integrationData = json['integration_data'] != null
        ? new IntegrationData.fromJson(json['integration_data'])
        : null;
    pointsPossible = json['points_possible'];
    submissionTypes = json['submission_types'].cast<String>();
    hasSubmittedSubmissions = json['has_submitted_submissions'];
    gradingType = json['grading_type'];
    gradingStandardId = json['grading_standard_id'];
    published = json['published'];
    unpublishable = json['unpublishable'];
    onlyVisibleToOverrides = json['only_visible_to_overrides'];
    lockedForUser = json['locked_for_user'];
    lockInfo = json['lock_info'] != null
        ? new LockInfo.fromJson(json['lock_info'])
        : null;
    lockExplanation = json['lock_explanation'];
    quizId = json['quiz_id'];
    anonymousSubmissions = json['anonymous_submissions'];
    discussionTopic = json['discussion_topic'];
    freezeOnCopy = json['freeze_on_copy'];
    frozen = json['frozen'];
    frozenAttributes = json['frozen_attributes'].cast<String>();
    submission = json['submission'] != null
        ? new Submission.fromJson(json['submission'])
        : null;
    useRubricForGrading = json['use_rubric_for_grading'];
    rubricSettings = json['rubric_settings'];
    if (json['rubric'] != null) {
      rubric = new List<RubricRating>();
      json['rubric'].forEach((v) {
        rubric.add(new RubricRating.fromJson(v));
      });
    }
    assignmentVisibility = json['assignment_visibility'].cast<int>();
    if (json['overrides'] != null) {
      overrides = new List<AssignmentOverride>();
      json['overrides'].forEach((v) {
        overrides.add(new AssignmentOverride.fromJson(v));
      });
    }
    omitFromFinalGrade = json['omit_from_final_grade'];
    moderatedGrading = json['moderated_grading'];
    graderCount = json['grader_count'];
    finalGraderId = json['final_grader_id'];
    graderCommentsVisibleToGraders = json['grader_comments_visible_to_graders'];
    gradersAnonymousToGraders = json['graders_anonymous_to_graders'];
    graderNamesVisibleToFinalGrader =
        json['grader_names_visible_to_final_grader'];
    anonymousGrading = json['anonymous_grading'];
    allowedAttempts = json['allowed_attempts'];
    postManually = json['post_manually'];
    scoreStatistics = json['score_statistics'] != null
        ? new ScoreStatistics.fromJson(json['score_statistics'])
        : null;
    canSubmit = json['can_submit'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['description'] = this.description;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    data['due_at'] = this.dueAt;
    data['lock_at'] = this.lockAt;
    data['unlock_at'] = this.unlockAt;
    data['has_overrides'] = this.hasOverrides;
    data['all_dates'] = this.allDates;
    data['course_id'] = this.courseId;
    data['html_url'] = this.htmlUrl;
    data['submissions_download_url'] = this.submissionsDownloadUrl;
    data['assignment_group_id'] = this.assignmentGroupId;
    data['due_date_required'] = this.dueDateRequired;
    data['allowed_extensions'] = this.allowedExtensions;
    data['max_name_length'] = this.maxNameLength;
    data['turnitin_enabled'] = this.turnitinEnabled;
    data['vericite_enabled'] = this.vericiteEnabled;
    if (this.turnitinSettings != null) {
      data['turnitin_settings'] = this.turnitinSettings.toJson();
    }
    data['grade_group_students_individually'] =
        this.gradeGroupStudentsIndividually;
    if (this.externalToolTagAttributes != null) {
      data['external_tool_tag_attributes'] =
          this.externalToolTagAttributes.toJson();
    }
    data['peer_reviews'] = this.peerReviews;
    data['automatic_peer_reviews'] = this.automaticPeerReviews;
    data['peer_review_count'] = this.peerReviewCount;
    data['peer_reviews_assign_at'] = this.peerReviewsAssignAt;
    data['intra_group_peer_reviews'] = this.intraGroupPeerReviews;
    data['group_category_id'] = this.groupCategoryId;
    data['needs_grading_count'] = this.needsGradingCount;
    if (this.needsGradingCountBySection != null) {
      data['needs_grading_count_by_section'] =
          this.needsGradingCountBySection.map((v) => v.toJson()).toList();
    }
    data['position'] = this.position;
    data['post_to_sis'] = this.postToSis;
    data['integration_id'] = this.integrationId;
    if (this.integrationData != null) {
      data['integration_data'] = this.integrationData.toJson();
    }
    data['points_possible'] = this.pointsPossible;
    data['submission_types'] = this.submissionTypes;
    data['has_submitted_submissions'] = this.hasSubmittedSubmissions;
    data['grading_type'] = this.gradingType;
    data['grading_standard_id'] = this.gradingStandardId;
    data['published'] = this.published;
    data['unpublishable'] = this.unpublishable;
    data['only_visible_to_overrides'] = this.onlyVisibleToOverrides;
    data['locked_for_user'] = this.lockedForUser;
    if (this.lockInfo != null) {
      data['lock_info'] = this.lockInfo.toJson();
    }
    data['lock_explanation'] = this.lockExplanation;
    data['quiz_id'] = this.quizId;
    data['anonymous_submissions'] = this.anonymousSubmissions;
    data['discussion_topic'] = this.discussionTopic;
    data['freeze_on_copy'] = this.freezeOnCopy;
    data['frozen'] = this.frozen;
    data['frozen_attributes'] = this.frozenAttributes;
    if (this.submission != null) {
      data['submission'] = this.submission.toJson();
    }
    data['use_rubric_for_grading'] = this.useRubricForGrading;
    data['rubric_settings'] = this.rubricSettings;
    if (this.rubric != null) {
      data['rubric'] = this.rubric.map((v) => v.toJson()).toList();
    }
    data['assignment_visibility'] = this.assignmentVisibility;
    if (this.overrides != null) {
      data['overrides'] = this.overrides.map((v) => v.toJson()).toList();
    }
    data['omit_from_final_grade'] = this.omitFromFinalGrade;
    data['moderated_grading'] = this.moderatedGrading;
    data['grader_count'] = this.graderCount;
    data['final_grader_id'] = this.finalGraderId;
    data['grader_comments_visible_to_graders'] =
        this.graderCommentsVisibleToGraders;
    data['graders_anonymous_to_graders'] = this.gradersAnonymousToGraders;
    data['grader_names_visible_to_final_grader'] =
        this.graderNamesVisibleToFinalGrader;
    data['anonymous_grading'] = this.anonymousGrading;
    data['allowed_attempts'] = this.allowedAttempts;
    data['post_manually'] = this.postManually;
    if (this.scoreStatistics != null) {
      data['score_statistics'] = this.scoreStatistics.toJson();
    }
    data['can_submit'] = this.canSubmit;
    return data;
  }
}

class TurnitinSettings {
  String originalityReportVisibility;
  bool sPaperCheck;
  bool internetCheck;
  bool journalCheck;
  bool excludeBiblio;
  bool excludeQuoted;
  String excludeSmallMatchesType;
  int excludeSmallMatchesValue;

  TurnitinSettings(
      {this.originalityReportVisibility,
      this.sPaperCheck,
      this.internetCheck,
      this.journalCheck,
      this.excludeBiblio,
      this.excludeQuoted,
      this.excludeSmallMatchesType,
      this.excludeSmallMatchesValue});

  TurnitinSettings.fromJson(Map<String, dynamic> json) {
    originalityReportVisibility = json['originality_report_visibility'];
    sPaperCheck = json['s_paper_check'];
    internetCheck = json['internet_check'];
    journalCheck = json['journal_check'];
    excludeBiblio = json['exclude_biblio'];
    excludeQuoted = json['exclude_quoted'];
    excludeSmallMatchesType = json['exclude_small_matches_type'];
    excludeSmallMatchesValue = json['exclude_small_matches_value'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['originality_report_visibility'] = this.originalityReportVisibility;
    data['s_paper_check'] = this.sPaperCheck;
    data['internet_check'] = this.internetCheck;
    data['journal_check'] = this.journalCheck;
    data['exclude_biblio'] = this.excludeBiblio;
    data['exclude_quoted'] = this.excludeQuoted;
    data['exclude_small_matches_type'] = this.excludeSmallMatchesType;
    data['exclude_small_matches_value'] = this.excludeSmallMatchesValue;
    return data;
  }
}

class ExternalToolTagAttributes {
  String tesT;

  ExternalToolTagAttributes({this.tesT});

  ExternalToolTagAttributes.fromJson(Map<String, dynamic> json) {
    tesT = json['tesT'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['tesT'] = this.tesT;
    return data;
  }
}

class NeedsGradingCountBySection {
  String sectionId;
  int needsGradingCount;

  NeedsGradingCountBySection({this.sectionId, this.needsGradingCount});

  NeedsGradingCountBySection.fromJson(Map<String, dynamic> json) {
    sectionId = json['section_id'];
    needsGradingCount = json['needs_grading_count'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['section_id'] = this.sectionId;
    data['needs_grading_count'] = this.needsGradingCount;
    return data;
  }
}

class IntegrationData {
  String s5678;

  IntegrationData({this.s5678});

  IntegrationData.fromJson(Map<String, dynamic> json) {
    s5678 = json['5678'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['5678'] = this.s5678;
    return data;
  }
}

class LockInfo {
  String assetString;
  String unlockAt;
  String lockAt;
  String contextModule;
  bool manuallyLocked;

  LockInfo(
      {this.assetString,
      this.unlockAt,
      this.lockAt,
      this.contextModule,
      this.manuallyLocked});

  LockInfo.fromJson(Map<String, dynamic> json) {
    assetString = json['asset_string'];
    unlockAt = json['unlock_at'];
    lockAt = json['lock_at'];
    contextModule = json['context_module'];
    manuallyLocked = json['manually_locked'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['asset_string'] = this.assetString;
    data['unlock_at'] = this.unlockAt;
    data['lock_at'] = this.lockAt;
    data['context_module'] = this.contextModule;
    data['manually_locked'] = this.manuallyLocked;
    return data;
  }
}

class RubricRating {
  int points;
  String id;
  String description;
  String longDescription;

  RubricRating({this.points, this.id, this.description, this.longDescription});

  RubricRating.fromJson(Map<String, dynamic> json) {
    points = json['points'];
    id = json['id'];
    description = json['description'];
    longDescription = json['long_description'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['points'] = this.points;
    data['id'] = this.id;
    data['description'] = this.description;
    data['long_description'] = this.longDescription;
    return data;
  }
}


class AssignmentOverride {
  int id;
  int assignmentId;
  List<int> studentIds;
  int groupId;
  int courseSectionId;
  String title;
  String dueAt;
  bool allDay;
  String allDayDate;
  String unlockAt;
  String lockAt;

  AssignmentOverride(
      {this.id,
      this.assignmentId,
      this.studentIds,
      this.groupId,
      this.courseSectionId,
      this.title,
      this.dueAt,
      this.allDay,
      this.allDayDate,
      this.unlockAt,
      this.lockAt});

  AssignmentOverride.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    assignmentId = json['assignment_id'];
    studentIds = json['student_ids'].cast<int>();
    groupId = json['group_id'];
    courseSectionId = json['course_section_id'];
    title = json['title'];
    dueAt = json['due_at'];
    allDay = json['all_day'];
    allDayDate = json['all_day_date'];
    unlockAt = json['unlock_at'];
    lockAt = json['lock_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['assignment_id'] = this.assignmentId;
    data['student_ids'] = this.studentIds;
    data['group_id'] = this.groupId;
    data['course_section_id'] = this.courseSectionId;
    data['title'] = this.title;
    data['due_at'] = this.dueAt;
    data['all_day'] = this.allDay;
    data['all_day_date'] = this.allDayDate;
    data['unlock_at'] = this.unlockAt;
    data['lock_at'] = this.lockAt;
    return data;
  }
}

class ScoreStatistics {
  int min;
  int max;
  int mean;

  ScoreStatistics({this.min, this.max, this.mean});

  ScoreStatistics.fromJson(Map<String, dynamic> json) {
    min = json['min'];
    max = json['max'];
    mean = json['mean'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['min'] = this.min;
    data['max'] = this.max;
    data['mean'] = this.mean;
    return data;
  }
}
