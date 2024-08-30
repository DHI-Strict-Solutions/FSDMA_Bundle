import 'package:driver_flutter/core/graphql/documents/profile.graphql.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:injectable/injectable.dart';

import '../datasources/graphql_datasource.dart';
import 'firebase_repository.dart';

@prod
@LazySingleton(as: FirebaseRepository)
class FirebaseRepositoryImpl implements FirebaseRepository {
  final GraphqlDatasource _graphqlDatasource;

  FirebaseRepositoryImpl(this._graphqlDatasource);

  @override
  Future<void> retrieveAndUpdateFcmToken() async {
    FirebaseMessaging messaging = FirebaseMessaging.instance;
    NotificationSettings settings = await messaging.requestPermission(
      alert: true,
      announcement: true,
      badge: true,
      carPlay: true,
      criticalAlert: false,
      provisional: true,
      sound: true,
    );
    if (settings.authorizationStatus == AuthorizationStatus.authorized) {
      final token = await messaging.getToken(
        vapidKey: "",
      );
      if (token != null) {
        await _graphqlDatasource.mutate(
          Options$Mutation$UpdateFcmToken(
            variables: Variables$Mutation$UpdateFcmToken(token: token),
          ),
        );
      }
    }
  }
}
