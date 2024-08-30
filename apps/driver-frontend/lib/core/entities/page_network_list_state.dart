import 'package:freezed_annotation/freezed_annotation.dart';

part 'page_network_list_state.freezed.dart';

@freezed
class PageNetworkListState<T> with _$PageNetworkListState {
  const factory PageNetworkListState.initial() = _Initial;
  const factory PageNetworkListState.loading() = _Loading;
  const factory PageNetworkListState.loaded(List<T> data) = _Loaded;
  const factory PageNetworkListState.empty() = _Empty;
  const factory PageNetworkListState.error(String message) = _Error;
}
