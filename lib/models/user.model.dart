class User
{
  int? id; 
  String? username;
  String? password_hash;

  User(this.username, this.password_hash);

  User.fromMap(Map<dynamic, dynamic> map) {
    id = map['id'];
    username = map['username'];
    password_hash = map['password_hash'];
  } 

    Map<String, dynamic> toMap() {    
    return {
      'id': id,
      'username': username,
      'password_hash': password_hash
    };
  }
}