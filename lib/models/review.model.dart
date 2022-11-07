class Review {
  int? id;
  int? stars;
  String? text_body;
  String? title;
  int? autor_id;
  int? worker_reviewed;

  Review(this.text_body, this.title);

  Review.fromMap(Map<dynamic, dynamic> map) {
    id = map['id'];
    stars = map['stars'];
    text_body = map['text_body'];
    title = map['title'];
    autor_id = map['autor_id'];
    worker_reviewed = map['worker_reviewed'];
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'stars': stars,
      'text_body': text_body,
      'title': title,
      'autor_id': autor_id,
      'worker_reviewed': worker_reviewed
    };
  }
}
