import 'github_credentials.dart';

Uri buildAuthorizationUrl() {
  return Uri.https('github.com', '/login/oauth/authorize', {
    'scope': '(no scope)',
    'client_id': clientID,
  });
}
