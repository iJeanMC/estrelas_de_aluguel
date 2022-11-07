class Comentarios {
  int? id;
  int? reviewed;
  int? userid;
  String? text_body;
  int? likes;
  int? deslikes;

  Comentarios(this.text_body);

  Comentarios.fromMap(Map<dynamic, dynamic> map) {
    id = map['id'];
    reviewed = map['reviewed'];
    userid = map['userid'];
    text_body = map['text_body'];
    likes = map['likes'];
    deslikes = map['deslikes'];
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'reviewed': reviewed,
      'userid': userid,
      'text_body': text_body,
      'likes': likes,
      'deslikes': deslikes
    };
  }
}
