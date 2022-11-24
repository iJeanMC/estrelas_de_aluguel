class Worker_has_worker_tags {
  int? id;
  int? worker_tagid;

  Worker_has_worker_tags.fromMap(Map<dynamic, dynamic> map) {
    id = map['id'];
    worker_tagid = map['worker_tagid'];
  }

  Map<String, dynamic> toMap() {
    return {'tagid': id, 'worker_tagid': worker_tagid};
  }
}
