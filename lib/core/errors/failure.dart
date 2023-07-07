import 'package:dio/dio.dart';

abstract class Failure {
  final String errorMessage;
  Failure(this.errorMessage);
}

class ServerFailure extends Failure {
  ServerFailure(super.errorMessage);

  factory ServerFailure.fromDioError(DioException dioError) {
    switch (dioError.type) {
      case DioException.connectionTimeout:
        return ServerFailure('Connection timeout');
      case DioException.sendTimeout:
        return ServerFailure('Send Timeout');
      case DioException.receiveTimeout:
        return ServerFailure('Receive Timeout');
      case DioException.badResponse:
        return ServerFailure.fromResponse(
            dioError.response!.statusCode!, dioError.response!.data);

      case DioException.connectionError:
        return ServerFailure('Connection Error,please try again!');

      default:
        return ServerFailure('Opps There Was An Error, please try again!');
    }
  }

  factory ServerFailure.fromResponse(int statusCode, dynamic response) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return ServerFailure(response['error']['message']);
    } else if (statusCode == 404) {
      return ServerFailure('Request Not Found,please try later!');
    } else if (statusCode == 500) {
      return ServerFailure('Internal Server Error,please try later!');
    } else {
      return ServerFailure('Opps There Was An Error, please try again!');
    }
  }
}
