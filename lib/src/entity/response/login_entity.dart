import 'package:equatable/equatable.dart';

class LoginEntity extends Equatable {
  final int status;
  final String message;
  final String token;

  LoginEntity(this.status, this.message, this.token);

  @override
  List<Object> get props => [status, message, token];
}
