import 'dart:convert';

import 'package:crypto/crypto.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:promilo/core/exception/exception_handler.dart';
import 'package:promilo/core/failures/failures.dart';
import 'package:promilo/features/authentication/domain/entities/user_entity.dart';
import 'package:promilo/features/authentication/domain/repositories/login_repo.dart';
import 'package:http/http.dart' as http;

/// [LoginRepoImplementation] is a class that implements [LoginRepo] abstract class.
/// It is used to login the user.
/// It uses [UserEntity] to get the user's email and password.
/// It uses [Failure] to handle errors.
/// It uses [http] to make API calls.
/// It uses [sha256] to convert the password to SHA256.
/// It uses [CustomExceptionHandler] to handle exceptions.
/// It uses [debugPrint] to print the logs.
class LoginRepoImplementation implements LoginRepo {
  @override
  Future<Either<Failure, UserEntity>> login(UserEntity userEntity) async {
    try {
      // Convert Password to SHA256
      var bytes = utf8.encode(userEntity.password);
      var digest = sha256.convert(bytes);

      // Create the Login Function
      var response = await http.post(
        Uri.parse('https://apiv2stg.promilo.com/user/oauth/token'),
        headers: {
          'Content-Type': 'application/x-www-form-urlencoded',
          'Authorization': 'Basic UHJvbWlsbzpxNCE1NkBaeSN4MiRHQg==',
        },
        body:
            'username=${userEntity.email}&password=${digest.toString()}&grant_type=password',
      );

      // Handle API Response
      if (response.statusCode == 200) {
        return Right(userEntity);
      } else if (response.statusCode == 401) {
        // Handle error or invalid credentials
        return const Left(
          Failure(
            message: "User not found Please sign up",
          ),
        );
      } else {
        return const Left(
          Failure(
            message: "Something went wrong. Please try again later.",
          ),
        );
      }
    } catch (e) {
      return Left(
        CustomExceptionHandler.handleException(e),
      );
    } finally {
      debugPrint(
        "LoginRepoImplementation.login() executed",
      );
    }
  }
}
