import 'package:dio/dio.dart';

abstract class Failure {
  final String errorMessage;

  const Failure({required this.errorMessage});
}

class ServerFailure extends Failure {
  ServerFailure({required super.errorMessage});

  factory ServerFailure.fromDioException(DioException dioException) {
    switch (dioException.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure(
          errorMessage: 'Connection Timeout with ApiServer',
        );
      case DioExceptionType.badResponse:
        return ServerFailure.fromBadResponse(
            dioException.response!.statusCode!, dioException.response!.data);
      case DioExceptionType.receiveTimeout:
        return ServerFailure(
          errorMessage: 'Receive Timeout with ApiServer',
        );
      case DioExceptionType.sendTimeout:
        return ServerFailure(
          errorMessage: 'Send Timeout with ApiServer',
        );
      case DioExceptionType.badCertificate:
        return ServerFailure(
          errorMessage: 'Bad Certificate',
        );
      case DioExceptionType.cancel:
        return ServerFailure(
          errorMessage: 'Request to ApiServer was cancelled',
        );
      case DioExceptionType.connectionError:
        return ServerFailure(
          errorMessage: 'Connection Error',
        );
      case DioExceptionType.unknown:
        if (dioException.message!.contains('SocketException')) {
          return ServerFailure(
            errorMessage: 'No Internet Connection',
          );
        } else {
          return ServerFailure(
            errorMessage: 'Unexpected Error With ApiServer',
          );
        }
      default:
        return ServerFailure(
          errorMessage: 'Oops Something Went Wrong',
        );
    }
  }

  factory ServerFailure.fromBadResponse(int statusCode, dynamic response) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return ServerFailure(
        errorMessage: response['error']['message'],
      );
    } else if (statusCode == 404) {
      return ServerFailure(
          errorMessage: 'Your Request Not Found Please Try Later');
    } else if (statusCode == 500) {
      return ServerFailure(errorMessage: 'Internal Server Error');
    } else {
      return ServerFailure(errorMessage: 'Oops Something Went Wrong');
    }
  }
}
