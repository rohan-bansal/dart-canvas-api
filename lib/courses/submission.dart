library canvas_api;

import 'package:canvas_api/courses/assignment.dart';
import 'package:canvas_api/courses/course.dart';
import 'package:canvas_api/users/user.dart';


class Submission {
  int assignmentId;
  Assignment assignment;
  Course course;
  int attempt;
  String body;
  String grade;
  bool gradeMatchesCurrentSubmission;
  String htmlUrl;
  String previewUrl;
  double score;
  SubmissionComments submissionComments;
  String submissionType;
  String submittedAt;
  String url;
  int userId;
  int graderId;
  String gradedAt;
  User user;
  bool lateb;
  bool assignmentVisible;
  bool excused;
  bool missing;
  String latePolicyStatus;
  double pointsDeducted;
  int secondsLate;
  String workflowState;
  int extraAttempts;
  String anonymousId;
  String postedAt;

  Submission(
      {this.assignmentId,
      this.assignment,
      this.course,
      this.attempt,
      this.body,
      this.grade,
      this.gradeMatchesCurrentSubmission,
      this.htmlUrl,
      this.previewUrl,
      this.score,
      this.submissionComments,
      this.submissionType,
      this.submittedAt,
      this.url,
      this.userId,
      this.graderId,
      this.gradedAt,
      this.user,
      this.lateb,
      this.assignmentVisible,
      this.excused,
      this.missing,
      this.latePolicyStatus,
      this.pointsDeducted,
      this.secondsLate,
      this.workflowState,
      this.extraAttempts,
      this.anonymousId,
      this.postedAt});

  Submission.fromJson(Map<String, dynamic> json) {
    assignmentId = json['assignment_id'];
    assignment = json['assignment'] != null
        ? new Assignment.fromJson(json['assignment'])
        : null;
    course =
        json['course'] != null ? new Course.fromJson(json['course']) : null;
    attempt = json['attempt'];
    body = json['body'];
    grade = json['grade'];
    gradeMatchesCurrentSubmission = json['grade_matches_current_submission'];
    htmlUrl = json['html_url'];
    previewUrl = json['preview_url'];
    score = json['score'];
    submissionComments = json['submission_comments'] != null
        ? new SubmissionComments.fromJson(json['submission_comments'])
        : null;
    submissionType = json['submission_type'];
    submittedAt = json['submitted_at'];
    url = json['url'];
    userId = json['user_id'];
    graderId = json['grader_id'];
    gradedAt = json['graded_at'];
    user = json['user'] != null ? new User.fromJson(json['user']) : null;
    lateb = json['late'];
    assignmentVisible = json['assignment_visible'];
    excused = json['excused'];
    missing = json['missing'];
    latePolicyStatus = json['late_policy_status'];
    pointsDeducted = json['points_deducted'];
    secondsLate = json['seconds_late'];
    workflowState = json['workflow_state'];
    extraAttempts = json['extra_attempts'];
    anonymousId = json['anonymous_id'];
    postedAt = json['posted_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['assignment_id'] = this.assignmentId;
    if (this.assignment != null) {
      data['assignment'] = this.assignment.toJson();
    }
    if (this.course != null) {
      data['course'] = this.course.toJson();
    }
    data['attempt'] = this.attempt;
    data['body'] = this.body;
    data['grade'] = this.grade;
    data['grade_matches_current_submission'] =
        this.gradeMatchesCurrentSubmission;
    data['html_url'] = this.htmlUrl;
    data['preview_url'] = this.previewUrl;
    data['score'] = this.score;
    if (this.submissionComments != null) {
      data['submission_comments'] = this.submissionComments.toJson();
    }
    data['submission_type'] = this.submissionType;
    data['submitted_at'] = this.submittedAt;
    data['url'] = this.url;
    data['user_id'] = this.userId;
    data['grader_id'] = this.graderId;
    data['graded_at'] = this.gradedAt;
    if (this.user != null) {
      data['user'] = this.user.toJson();
    }
    data['late'] = this.lateb;
    data['assignment_visible'] = this.assignmentVisible;
    data['excused'] = this.excused;
    data['missing'] = this.missing;
    data['late_policy_status'] = this.latePolicyStatus;
    data['points_deducted'] = this.pointsDeducted;
    data['seconds_late'] = this.secondsLate;
    data['workflow_state'] = this.workflowState;
    data['extra_attempts'] = this.extraAttempts;
    data['anonymous_id'] = this.anonymousId;
    data['posted_at'] = this.postedAt;
    return data;
  }
}

class SubmissionComments {
  int id;
  int authorId;
  String authorName;
  String author;
  String comment;
  String createdAt;
  String editedAt;
  MediaComment mediaComment;

  SubmissionComments(
      {this.id,
      this.authorId,
      this.authorName,
      this.author,
      this.comment,
      this.createdAt,
      this.editedAt,
      this.mediaComment});

  SubmissionComments.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    authorId = json['author_id'];
    authorName = json['author_name'];
    author = json['author'];
    comment = json['comment'];
    createdAt = json['created_at'];
    editedAt = json['edited_at'];
    mediaComment = json['media_comment'] != null
        ? new MediaComment.fromJson(json['media_comment'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['author_id'] = this.authorId;
    data['author_name'] = this.authorName;
    data['author'] = this.author;
    data['comment'] = this.comment;
    data['created_at'] = this.createdAt;
    data['edited_at'] = this.editedAt;
    if (this.mediaComment != null) {
      data['media_comment'] = this.mediaComment.toJson();
    }
    return data;
  }
}

class MediaComment {
  String contentType;
  String displayName;
  String mediaId;
  String mediaType;
  String url;

  MediaComment(
      {this.contentType,
      this.displayName,
      this.mediaId,
      this.mediaType,
      this.url});

  MediaComment.fromJson(Map<String, dynamic> json) {
    contentType = json['content-type'];
    displayName = json['display_name'];
    mediaId = json['media_id'];
    mediaType = json['media_type'];
    url = json['url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['content-type'] = this.contentType;
    data['display_name'] = this.displayName;
    data['media_id'] = this.mediaId;
    data['media_type'] = this.mediaType;
    data['url'] = this.url;
    return data;
  }
}