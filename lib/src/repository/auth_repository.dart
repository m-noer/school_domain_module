import 'package:core_module/core_module.dart';
import 'package:dartz/dartz.dart';
import 'package:school_domain_module/src/entity/request/login_body_entity.dart';
import 'package:school_domain_module/src/entity/response/login_entity.dart';

abstract class AuthRepository {
  Future<Either<Failure, LoginEntity>> requestLogin(LoginBodyEntity body);
}
