import 'package:freezed_annotation/freezed_annotation.dart';

part 'page_network_single_state.freezed.dart';

@freezed
class FormSubmissionState<T> with _$FormSubmissionState {
  const factory FormSubmissionState.initial() = _Initial;
  const factory FormSubmissionState.loading() = _Loading;
  const factory FormSubmissionState.error(String message) = _Error;
  const factory FormSubmissionState.success(T data) = _Success;
}
