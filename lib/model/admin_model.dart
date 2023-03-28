import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first

class Admin {
  final String? name;
  final String? password;
  Admin({
    required this.name,
    required this.password,
  });

 

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'password': password,
    };
  }

  factory Admin.fromMap(Map<String, dynamic> map) {
    return Admin(
      name: map['name'] as String,
      password: map['password'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory Admin.fromJson(String source) => Admin.fromMap(json.decode(source) as Map<String, dynamic>);
}
