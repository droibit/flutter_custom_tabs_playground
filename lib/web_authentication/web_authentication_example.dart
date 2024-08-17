// import 'dart:async';

// import 'package:flutter/material.dart';
// import 'package:flutter_custom_tabs/flutter_custom_tabs.dart';

// import 'github.dart' as github;

// void main() => runApp(const WebAuthenticationExample());

// class WebAuthenticationExample extends StatelessWidget {
//   const WebAuthenticationExample({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Web Authentication Example',
//       home: Scaffold(
//         appBar: AppBar(
//           title: const Text('Web Authentication Example'),
//         ),
//         body: Center(
//           child: FilledButton.tonal(
//             onPressed: () => _startWebAuthentication(context),
//             child: const Text('Sign in with GitHub'),
//           ),
//         ),
//       ),
//     );
//   }
// }

// Future<void> _startWebAuthentication(BuildContext context) async {
//   final theme = Theme.of(context);

//   try {
//     final url = github.buildAuthorizationUrl();
//     debugPrint('url: $url');

//     final callbackUrl = await startWebAuthentication(
//       url,
//       callback: WebAuthenticationCallback.https(
//         'associated-domains-playgrounds.web.app',
//         'authorization',
//       ),
//       //.customScheme('fct-example'),
//       androidOptions: CustomTabsAuthenticationOptions(
//         colorSchemes: CustomTabsColorSchemes.defaults(
//           toolbarColor: theme.colorScheme.surface,
//         ),
//         urlBarHidingEnabled: true,
//         showTitle: true,
//       ),
//     );
//     debugPrint('Result: $callbackUrl');
//   } catch (e) {
//     if (e is WebAuthenticationCancellationException) {
//       debugPrint('User canceled the authentication process.');
//       return;
//     }
//     debugPrint(e.toString());
//   }
// }
