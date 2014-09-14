library licensing_v1_api.browser;

import "package:google_oauth2_client/google_oauth2_browser.dart" as oauth;

import 'package:google_licensing_v1_api/src/browser_client.dart';
import "package:google_licensing_v1_api/licensing_v1_api_client.dart";

/** Licensing API to view and manage license for your domain. */
@deprecated
class Licensing extends Client with BrowserClient {

  final oauth.OAuth2 auth;

  Licensing([oauth.OAuth2 this.auth]);
}
