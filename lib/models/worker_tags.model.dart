class Worker_tags {
  int? id;
  String? tag_name;

  Worker_tags(this.tag_name);

  Worker_tags.fromMap(Map<dynamic, dynamic> map) {
    id = map['id'];
    tag_name = map['tag_name'];
  }

  Map<String, dynamic> toMap() {
    return {'id': id, 'tag_name': tag_name};
  }
}
