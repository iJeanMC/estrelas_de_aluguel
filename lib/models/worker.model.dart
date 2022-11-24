class Worker {
  int? id;
  int? userid;
  String? password_hash;
  String? funcao;

  Worker(this.password_hash, this.userid, this.funcao);

  Worker.fromMap(Map<dynamic, dynamic> map) {
    id = map['id'];
    userid = map['userid'];
    password_hash = map['password_hash'];
    funcao = map['funcao'];
  }

  Map<String, dynamic> toMap() {
    return {'id': id, 'userid': userid, 'password_hash': password_hash, 'funcao':funcao};
  }
}
