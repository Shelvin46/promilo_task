import 'dart:async';
import 'dart:io';

import 'package:promilo/core/failures/failures.dart';

class CustomExceptionHandler implements Exception {
  static Failure handleException(e) {
    if (e is TimeoutException) {
      return const CustomTimeoutException(
        message: "Timeout! Please try again later.",
      );
    } else if (e is FormatException) {
      return const ParsingException(
        message: "Parsing Error!",
      );
    } else if (e is HttpException) {
      return const APIException(
        message: "Invalid Request!",
      );
    } else if (e is SocketException) {
      return const NetworkException(
        message: "Check your internet connection",
      );
    } else {
      return const Failure(
        message: "An error occurred try again later.",
      );
    }
  }
}
