import 'package:driver_flutter/features/payment_methods/domain/repositories/payment_methods_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:flutter_common/core/entities/payment_gateway.dart';
import 'package:flutter_common/core/entities/saved_payment_method.dart';

part 'payment_methods.state.dart';
part 'payment_methods.freezed.dart';

@lazySingleton
class PaymentMethodsBloc extends Cubit<PaymentMethodsState> {
  final PaymentMethodsRepository _repository;

  PaymentMethodsBloc(this._repository) : super(const PaymentMethodsState.initial());

  void load() async {
    emit(const PaymentMethodsState.loading());
    final result = await _repository.getSavedPaymentMethods();
    result.fold(
      (failure) => emit(PaymentMethodsState.error(failure.errorMessage)),
      (data) => emit(PaymentMethodsState.loaded(data)),
    );
  }
}
