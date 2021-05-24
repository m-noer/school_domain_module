import 'dart:convert';

import 'package:equatable/equatable.dart';

class LoginBodyEntity extends Equatable {
  final String? identity;
  final String? password;

  LoginBodyEntity(this.identity, this.password);

  @override
  List<Object?> get props => [identity, password];

  Map<String, dynamic> toMap() {
    return {
      'identity': identity,
      'password': password,
    };
  }

  factory LoginBodyEntity.fromMap(Map<String, dynamic> map) {
    return LoginBodyEntity(
      map['identity'],
      map['password'],
    );
  }

  String toJson() => json.encode(toMap());

  factory LoginBodyEntity.fromJson(String source) =>
      LoginBodyEntity.fromMap(json.decode(source));
}
