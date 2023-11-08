import 'package:flutter/material.dart';
import 'package:flutter_custom_tabs/flutter_custom_tabs_lite.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Builder(
        builder: (context) => Scaffold(
          appBar: AppBar(
            backgroundColor: Theme.of(context).colorScheme.inversePrimary,
            title: const Text("Flutter Demo"),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              _launchUrl(context);
            },
            tooltip: 'Launch a URL',
            child: const Icon(Icons.add),
          ),
        ),
      ),
    );
  }

  Future<void> _launchUrl(BuildContext context) async {
    final theme = Theme.of(context);
    await launchUrl(
      Uri.parse("https://flutter.dev"),
      options: LaunchOptions(
        barColor: theme.colorScheme.inversePrimary,
      ),
    );
  }
}