import 'package:get_it/get_it.dart';
import 'package:school_domain_module/school_domain_module.dart';

final inject = GetIt.instance;

Future<void> init() async {
  // Usecase
  inject.registerFactory(() => RequestLogin(inject()));
}
