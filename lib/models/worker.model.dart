class Worker
{
  int? id; 
  int? userid;
  String? password_hash;

  Worker(this.password_hash);

  Worker.fromMap(Map<dynamic, dynamic> map) {
    id = map['userid']; 
    password_hash = map['password_hash'];
  }

    Map<String, dynamic> toMap() {    
    return {
      'userid': id,
      'password_hash': password_hash
    };
  }
}