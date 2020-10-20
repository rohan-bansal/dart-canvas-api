library canvas_api;

class Avatar {
  String type;
  String url;
  String token;
  String displayName;
  int id;
  String contentType;
  String filename;
  int size;

  Avatar(
      {this.type,
      this.url,
      this.token,
      this.displayName,
      this.id,
      this.contentType,
      this.filename,
      this.size});

  Avatar.fromJson(Map<String, dynamic> json) {
    type = json['type'];
    url = json['url'];
    token = json['token'];
    displayName = json['display_name'];
    id = json['id'];
    contentType = json['content-type'];
    filename = json['filename'];
    size = json['size'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['type'] = this.type;
    data['url'] = this.url;
    data['token'] = this.token;
    data['display_name'] = this.displayName;
    data['id'] = this.id;
    data['content-type'] = this.contentType;
    data['filename'] = this.filename;
    data['size'] = this.size;
    return data;
  }
}
