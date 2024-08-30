import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter_common/config/constants.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class Env {
  static final String serverUrl =
      dotenv.maybeGet('BASE_URL') ?? "http://${Constants.serverIp}:4002/";
  static final String gqlEndpoint = '${serverUrl}graphql';
  static bool isDemoMode = dotenv.maybeGet('DEMO_MODE') == 'true';
  static String appName = dotenv.maybeGet('APP_NAME') ?? "Ridy Driver";
  static String companyName = dotenv.maybeGet('COMPANY_NAME') ?? "Ridy";
}
