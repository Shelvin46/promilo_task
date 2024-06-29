import 'package:get_it/get_it.dart';
import 'package:promilo/features/authentication/data/repositories/login_repo_implementaion.dart';
import 'package:promilo/features/authentication/domain/repositories/login_repo.dart';
import 'package:promilo/features/authentication/domain/usecases/login_usecases.dart';
import 'package:promilo/features/authentication/presentation/utils/form_validation.dart';

final locator = GetIt.instance;

///[ServiceLocator] is a class that is responsible for registering the dependencies into the get_it instance
class ServiceLocator {
  static void setupLocator() {
    locator.registerLazySingleton(() => FormFieldValidateClass());
    locator.registerSingleton<LoginRepo>(LoginRepoImplementation());
    locator.registerLazySingleton(() => LoginUsecases());
  }
}
// Dependency injections is an software designing pattern it deals with creation and management of dependencies into a class or module from outside
// for doing this approach on flutter application we can use get_it package we can create a instance from the get_it package and register the dependencies into it
/// what are the classes we registered on this get_it instance we can use those objects in anywhere in the application
/// we can register the classes as singleton, factory, lazy singleton
/// it will essential for making the code more testable and maintainable also for loose coupling