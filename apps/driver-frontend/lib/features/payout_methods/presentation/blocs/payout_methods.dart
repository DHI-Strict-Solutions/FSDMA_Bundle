import 'package:driver_flutter/features/payout_methods/domain/entitites/payout_method.dart';
import 'package:driver_flutter/features/payout_methods/domain/repositories/payout_methods_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'payout_methods.state.dart';
part 'payout_methods.freezed.dart';

@LazySingleton()
class PayoutMethodsBloc extends Cubit<PayoutMethodsState> {
  final PayoutMethodsRepository _repository;

  PayoutMethodsBloc(this._repository) : super(const PayoutMethodsState.initial()) {
    load();
  }

  load() async {
    emit(const PayoutMethodsState.loading());
    final result = await _repository.getAvailablePayoutMethods();
    result.fold(
      (failure) => emit(PayoutMethodsState.error(failure.errorMessage)),
      (methods) {
        if (methods.isEmpty) {
          emit(const PayoutMethodsState.empty());
        } else {
          emit(PayoutMethodsState.loaded(methods));
        }
      },
    );
  }
}
