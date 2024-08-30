import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:driver_flutter/core/router/nav_item.dart';

@lazySingleton
class RouteCubit extends Cubit<NavItem> {
  RouteCubit() : super(NavItem.home);

  void routeTo(NavItem navItem) {
    emit(navItem);
  }
}
