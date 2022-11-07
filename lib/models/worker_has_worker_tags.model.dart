class Worker_has_worker_tags {
  int? tagid;
  int? workerid;

  Worker_has_worker_tags.fromMap(Map<dynamic, dynamic> map) {
    tagid = map['tagid'];
    workerid = map['workerid'];
  }

  Map<String, dynamic> toMap() {
    return {'tagid': tagid, 'workerid': workerid};
  }
}
