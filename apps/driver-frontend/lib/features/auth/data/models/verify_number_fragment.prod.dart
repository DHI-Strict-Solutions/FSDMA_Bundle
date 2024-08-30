import 'package:driver_flutter/core/graphql/fragments/login.fragment.graphql.dart';

import '../../domain/entities/verify_number_response.dart';

extension $VerifyNumberResponseExtension on Fragment$VerifyNumberFragment {
  VerifyNumberResponse get toEntity => VerifyNumberResponse(
        isExistingUser: isExistingUser,
        hash: hash,
      );
}
