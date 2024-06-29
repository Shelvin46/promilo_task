import 'package:dartz/dartz.dart';
import 'package:promilo/core/failures/failures.dart';
import 'package:promilo/features/authentication/domain/entities/user_entity.dart';

abstract class LoginRepo {
  Future<Either<Failure, UserEntity>> login(UserEntity userEntity);
}
