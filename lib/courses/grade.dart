library canvas_api;

class Grade {
  String htmlUrl;
  String currentGrade;
  String finalGrade;
  String currentScore;
  String finalScore;
  int currentPoints;
  String unpostedCurrentGrade;
  String unpostedFinalGrade;
  String unpostedCurrentScore;
  String unpostedFinalScore;
  int unpostedCurrentPoints;

  Grade(
      {this.htmlUrl,
      this.currentGrade,
      this.finalGrade,
      this.currentScore,
      this.finalScore,
      this.currentPoints,
      this.unpostedCurrentGrade,
      this.unpostedFinalGrade,
      this.unpostedCurrentScore,
      this.unpostedFinalScore,
      this.unpostedCurrentPoints});

  Grade.fromJson(Map<String, dynamic> json) {
    htmlUrl = json['html_url'];
    currentGrade = json['current_grade'];
    finalGrade = json['final_grade'];
    currentScore = json['current_score'];
    finalScore = json['final_score'];
    currentPoints = json['current_points'];
    unpostedCurrentGrade = json['unposted_current_grade'];
    unpostedFinalGrade = json['unposted_final_grade'];
    unpostedCurrentScore = json['unposted_current_score'];
    unpostedFinalScore = json['unposted_final_score'];
    unpostedCurrentPoints = json['unposted_current_points'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['html_url'] = this.htmlUrl;
    data['current_grade'] = this.currentGrade;
    data['final_grade'] = this.finalGrade;
    data['current_score'] = this.currentScore;
    data['final_score'] = this.finalScore;
    data['current_points'] = this.currentPoints;
    data['unposted_current_grade'] = this.unpostedCurrentGrade;
    data['unposted_final_grade'] = this.unpostedFinalGrade;
    data['unposted_current_score'] = this.unpostedCurrentScore;
    data['unposted_final_score'] = this.unpostedFinalScore;
    data['unposted_current_points'] = this.unpostedCurrentPoints;
    return data;
  }
}