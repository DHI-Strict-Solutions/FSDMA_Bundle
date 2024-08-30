import 'package:injectable/injectable.dart';

import 'firebase_repository.dart';

@dev
@LazySingleton(as: FirebaseRepository)
class FirebaseRepositoryMock implements FirebaseRepository {
  @override
  Future<void> retrieveAndUpdateFcmToken() async {}
}
