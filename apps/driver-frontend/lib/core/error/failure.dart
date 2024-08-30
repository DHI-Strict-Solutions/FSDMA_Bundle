import 'package:driver_flutter/core/extensions/extensions.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:graphql/client.dart' as gql;

part 'failure.freezed.dart';
part 'failure.g.dart';

@freezed
sealed class Failure with _$Failure {
  const factory Failure({
    required String message,
  }) = _Failure;

  const factory Failure.error({
    String? message,
  }) = _OperationFailure;

  const factory Failure.connection({
    String? message,
  }) = _ConnectionFailure;

  const factory Failure.server({
    String? message,
  }) = _ServerFailure;

  const Failure._();

  String get errorMessage => map(
        (value) => value.message,
        error: (error) => error.message ?? 'Error',
        connection: (error) => error.message ?? 'Connectivity Error',
        server: (error) => error.message ?? 'Server Error',
      );

  String localizedMessage(BuildContext context) {
    final message = map(
      (value) => value.message,
      error: (error) => error.message ?? context.translate.error,
      connection: (error) => error.message ?? context.translate.connectionError,
      server: (error) => error.message ?? context.translate.serverError,
    );
    if (message == 'CANCEL_NOT_ALLOWED') {
      return context.translate.cancelNotAllowed;
    }
    return message;
  }

  static Failure parseOperationException(gql.OperationException exception) {
    if (exception.graphqlErrors.isNotEmpty) {
      return Failure.error(message: exception.graphqlErrors.first.message);
    }
    if (exception.linkException != null) {
      return Failure.server(message: exception.linkException.toString());
    }
    return const Failure.server();
  }

  factory Failure.fromJson(Map<String, dynamic> json) => _$FailureFromJson(json);
}
