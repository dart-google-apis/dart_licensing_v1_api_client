library licensing_v1_api.console;

import "package:google_oauth2_client/google_oauth2_console.dart" as oauth2;

import 'package:google_licensing_v1_api/src/console_client.dart';

import "package:google_licensing_v1_api/licensing_v1_api_client.dart";

/** Licensing API to view and manage license for your domain. */
@deprecated
class Licensing extends Client with ConsoleClient {

  final oauth2.OAuth2Console auth;

  Licensing([oauth2.OAuth2Console this.auth]);
}
