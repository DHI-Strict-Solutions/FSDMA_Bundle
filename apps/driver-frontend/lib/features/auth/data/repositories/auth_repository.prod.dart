import 'package:dartz/dartz.dart';
import 'package:driver_flutter/core/datasources/graphql_datasource.dart';
import 'package:driver_flutter/core/entities/profile.dart';
import 'package:driver_flutter/core/entities/profile.prod.dart';
import 'package:driver_flutter/core/entities/profile_full.dart';
import 'package:driver_flutter/core/entities/profile_full.prod.dart';
import 'package:driver_flutter/core/entities/vehicle_color.prod.dart';
import 'package:driver_flutter/core/entities/vehicle_model.prod.dart';
import 'package:driver_flutter/core/error/failure.dart';
import 'package:driver_flutter/core/graphql/documents/login.graphql.dart';
import 'package:driver_flutter/features/auth/data/models/verify_number_fragment.prod.dart';
import 'package:driver_flutter/features/auth/data/models/verify_otp_fragment.prod.dart';
import 'package:driver_flutter/features/auth/domain/entities/registration_remote_data.dart';
import 'package:flutter_common/core/enums/gender.dart';
import 'package:graphql/client.dart';
import 'package:injectable/injectable.dart';

import '../../domain/entities/verify_number_response.dart';
import '../../domain/entities/verify_otp_response.dart';
import '../../domain/repositories/auth_repository.dart';

@prod
@LazySingleton(as: AuthRepository)
class LoginRepositoryImpl implements AuthRepository {
  final GraphqlDatasource graphqlDatasource;

  LoginRepositoryImpl(this.graphqlDatasource);

  @override
  Future<Either<Failure, VerifyNumberResponse>> verifyNumber({
    required String mobileNumber,
    required String countryIsoCode,
  }) async {
    final result = await graphqlDatasource.mutate(
      Options$Mutation$VerifyNumber(
        fetchPolicy: FetchPolicy.noCache,
        variables: Variables$Mutation$VerifyNumber(
          countryIso: countryIsoCode,
          number: mobileNumber,
        ),
      ),
    );
    return result.map((r) => r.verifyNumber.toEntity);
  }

  @override
  Future<Either<Failure, VerifyOtpResponse>> verifyOtp(String hash, String otp) async {
    final result = await graphqlDatasource.mutate(
      Options$Mutation$VerifyOtp(
        fetchPolicy: FetchPolicy.noCache,
        variables: Variables$Mutation$VerifyOtp(
          hash: hash,
          code: otp,
        ),
      ),
    );
    return result.map((r) => r.verifyOtp.toEntity);
  }

  @override
  Future<Either<Failure, VerifyOtpResponse>> verifyPassword(String mobileNumber, String password) async {
    final result = await graphqlDatasource.mutate(
      Options$Mutation$VerifyPassword(
        fetchPolicy: FetchPolicy.noCache,
        variables: Variables$Mutation$VerifyPassword(
          mobileNumber: mobileNumber,
          password: password,
        ),
      ),
    );
    return result.map((r) => r.verifyPassword.toEntity);
  }

  @override
  Future<Either<Failure, VerifyNumberResponse>> resendOtp(String mobileNumber) async {
    final result = await graphqlDatasource.mutate(
      Options$Mutation$ResendOtp(
        fetchPolicy: FetchPolicy.noCache,
        variables: Variables$Mutation$ResendOtp(
          mobileNumber: mobileNumber,
        ),
      ),
    );
    return result.map((r) => r.verifyNumber.toEntity);
  }

  @override
  Future<Either<Failure, bool>> setPassword(String password) async {
    final result = await graphqlDatasource.mutate(
      Options$Mutation$SetPassword(
        fetchPolicy: FetchPolicy.noCache,
        variables: Variables$Mutation$SetPassword(
          password: password,
        ),
      ),
    );
    return result.map((r) => true);
  }

  @override
  Future<Either<Failure, ProfileEntity>> updateProfile({
    required String firstName,
    required String lastName,
    required Gender gender,
  }) async {
    final result = await graphqlDatasource.mutate(
      Options$Mutation$SetName(
        fetchPolicy: FetchPolicy.noCache,
        variables: Variables$Mutation$SetName(
          firstName: firstName,
          lastName: lastName,
        ),
      ),
    );
    return result.map((r) => r.updateOneDriver.toEntity);
  }

  @override
  Future<Either<Failure, RegistrationRemoteData>> getRegistrationData() async {
    final result = await graphqlDatasource.query(Options$Query$RegistrationData(
      fetchPolicy: FetchPolicy.noCache,
    ));
    return result.map(
      (r) {
        return RegistrationRemoteData(
          profile: r.driver.toEntity,
          vehicleModels: r.carModels.map((e) => e.toEntity).toList(),
          vehicleColors: r.carColors.map((e) => e.toEntity).toList(),
        );
      },
    );
  }

  @override
  Future<Either<Failure, ProfileEntity>> register({
    required ProfileFullEntity profile,
  }) async {
    final result = await graphqlDatasource.mutate(
      Options$Mutation$Register(
        fetchPolicy: FetchPolicy.noCache,
        variables: profile.toRegisterVariables,
      ),
    );
    return result.map((r) => r.updateOneDriver.toEntity);
  }
}
