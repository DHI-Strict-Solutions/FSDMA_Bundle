import 'package:driver_flutter/features/earnings/domain/entities/earnings_dataset.dart';
import 'package:driver_flutter/features/earnings/domain/enums/earnings_timeframe.dart';
import 'package:driver_flutter/features/earnings/domain/repositories/earnings_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'earnings.state.dart';
part 'earnings.freezed.dart';

@lazySingleton
class EarningsBloc extends Cubit<EarningsState> {
  final EarningsRepository _repository;

  EarningsBloc(this._repository) : super(EarningsState.initial());

  void load() async {
    emit(state.copyWith(
      pageState: const EarningsPageState.loading(),
    ));

    final result = await _repository.getEarningsDataset(
      timeFrame: state.timeframe,
      startDate: state.startDate,
      endDate: state.endDate,
    );

    result.fold(
      (failure) => emit(state.copyWith(
        pageState: EarningsPageState.error(
          errorMessage: failure.toString(),
        ),
      )),
      (dataset) => emit(state.copyWith(
        pageState:
            dataset.datapoints.isEmpty ? const EarningsPageState.empty() : EarningsPageState.loaded(dataset: dataset),
      )),
    );
  }

  void setTimeFrame(EarningsTimeFrame timeFrame) {
    emit(state.copyWith(
      timeframe: timeFrame,
      endDate: DateTime.now(),
      startDate: DateTime.now().subtract(
        Duration(days: timeFrame == EarningsTimeFrame.daily ? 7 : 180),
      ),
    ));
    load();
  }

  void previousTimeframe() {
    emit(state.copyWith(
      endDate: state.startDate,
      startDate: state.startDate.subtract(
        Duration(days: state.timeframe == EarningsTimeFrame.daily ? 7 : 180),
      ),
    ));
    load();
  }

  void nextTimeframe() {
    emit(state.copyWith(
      startDate: state.endDate,
      endDate: state.endDate.add(
        Duration(days: state.timeframe == EarningsTimeFrame.daily ? 7 : 180),
      ),
    ));
    load();
  }
}
