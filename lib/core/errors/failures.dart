import 'package:dio/dio.dart';

abstract class Failure {
  final String errMessage;

  const Failure(this.errMessage);
}

class ServerFailure extends Failure {
  ServerFailure(super.errMessage);

  factory ServerFailure.fromDioError(DioException dioError) {
    switch (dioError.type) {
      // case DioException.connectTimeout:
      //   return ServerFailure('Connection timeout with ApiServer');

      case DioException.sendTimeout:
        return ServerFailure('Send timeout with ApiServer');

      case DioException.receiveTimeout:
        return ServerFailure('Receive timeout with ApiServer');

      // case DioException.response:
      //   return ServerFailure.fromResponse(
      //       dioError.response!.statusCode, dioError.response!.data);
      // case DioException.cancel:
      //   return ServerFailure('Request to ApiServer was canceld');

      // case DioException.other:
      //   if (dioError.message!.contains('SocketException')) {
      //     return ServerFailure('No Internet Connection');
      //   }
      // return ServerFailure('Unexpected Error, Please try again!');
      default:
        return ServerFailure('Opps There was an Error, Please try again');
    }
  }

  factory ServerFailure.fromResponse(int? statusCode, dynamic response) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return ServerFailure(response['error']['message']);
    } else if (statusCode == 404) {
      return ServerFailure('Your request not found, Please try later!');
    } else if (statusCode == 500) {
      return ServerFailure('Internal Server error, Please try later');
    } else {
      return ServerFailure('Opps There was an Error, Please try again');
    }
  }
}
