import 'dart:io';

import 'package:equatable/equatable.dart';

class AppError extends Equatable {
  final AppErrorType appErrorType;
  final String? e;

  const AppError(this.appErrorType, {this.e = ''});

  @override
  List<Object> get props => [appErrorType];

  factory AppError.database() =>
      const AppError(AppErrorType.database, e: 'database error');

  factory AppError.api({String? message}) =>
      AppError(AppErrorType.api, e: message ?? 'server error');

  factory AppError.network({String? message}) =>
      AppError(AppErrorType.network, e: message ?? 'internet connection error');

  factory AppError.unknown() =>
      const AppError(AppErrorType.unknown, e: 'unexpected error');

  factory AppError.fromException(Object? e) {
    //todo
    if (e is SocketException) {
      return AppError.network();
    } else {
      return AppError.unknown();
    }
  }

  @override
  String toString() => e ?? '';
}

enum AppErrorType {
  device,
  api,
  network,
  database,
  unauthorized,
  sessionDenied,
  permission,
  unknown
}
