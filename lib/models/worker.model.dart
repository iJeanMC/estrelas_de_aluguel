class Worker {
  int? id;
  int? userid;
  String? password_hash;

  Worker(this.password_hash, this.userid);

  Worker.fromMap(Map<dynamic, dynamic> map) {
    id = map['id'];
    userid = map['userid'];
    password_hash = map['password_hash'];
  }

  Map<String, dynamic> toMap() {
    return {'id': id, 'userid': userid, 'password_hash': password_hash};
  }
}
