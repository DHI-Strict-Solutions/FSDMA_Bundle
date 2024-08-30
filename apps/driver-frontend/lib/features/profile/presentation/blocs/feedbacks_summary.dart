import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../data/models/feedbacks_summary.dart';
import '../../domain/repositories/profile_repository.dart';

part 'feedbacks_summary.state.dart';
part 'feedbacks_summary.freezed.dart';

@lazySingleton
class FeedbacksSummaryCubit extends Cubit<FeedbacksSummaryState> {
  final ProfileRepository _repository;
  FeedbacksSummaryCubit(this._repository) : super(const FeedbacksSummaryState.initial());

  void load() async {
    emit(const FeedbacksSummaryState.loading());

    final result = await _repository.getFeedbacksSummary();

    result.fold(
      (failure) => emit(FeedbacksSummaryState.error(errorMessage: failure.toString())),
      (summary) {
        if (summary.averageRating == null) {
          emit(const FeedbacksSummaryState.empty());
          return;
        }
        emit(
          FeedbacksSummaryState.loaded(
            summary: summary,
          ),
        );
      },
    );
  }
}
