import 'package:core_module/core_module.dart';
import 'package:dartz/dartz.dart';
import 'package:school_domain_module/src/entity/request/login_body_entity.dart';
import 'package:school_domain_module/src/entity/response/login_entity.dart';
import 'package:school_domain_module/src/repository/auth_repository.dart';

class RequestLogin extends Usecase<LoginEntity, LoginBodyEntity> {
  final AuthRepository _repository;

  RequestLogin(this._repository);

  @override
  Future<Either<Failure, LoginEntity>> call(LoginBodyEntity params) {
    return _repository.requestLogin(params);
  }
}
