import 'package:dartz/dartz.dart';
import 'package:promilo/core/failures/failures.dart';
import 'package:promilo/features/authentication/domain/entities/user_entity.dart';
import 'package:promilo/features/authentication/domain/repositories/login_repo.dart';
import 'package:promilo/service_locator.dart';

/// [LoginUsecases] is a class that contains the usecase for login.
/// It uses [UserEntity] to get the user's email and password.
/// It uses [Failure] to handle errors.
/// It uses [locator] to get the instance of [LoginRepo].
/// It uses [Either] to return the result.
/// In this class, we have a method called [executeLogin] which takes [UserEntity] as a parameter and returns [Either<Failure, UserEntity>].
/// This method is used to login the user.
/// It will call the function present in the [LoginRepo] to login the user.
/// Behind the scenes, it will call the implementation of the [LoginRepo] to login the user.
class LoginUsecases {
  Future<Either<Failure, UserEntity>> executeLogin(UserEntity userEntity) {
    return locator<LoginRepo>().login(userEntity);
  }
}
