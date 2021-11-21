import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'generated/l10n.dart';

void main() {
  runApp(MaterialApp(localizationsDelegates: const [
    S.delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate
  ], supportedLocales: S.delegate.supportedLocales, home: const MyApp()));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(S.of(context).appBarTitle),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(S.of(context).bodyText),
            ElevatedButton(
                onPressed: () {
                  S.load(const Locale('en', 'US'));
                  setState(() {});
                },
                child: Text(S.of(context).english)),
            ElevatedButton(
                onPressed: () {
                  S.load(const Locale('tr', 'TR'));
                  setState(() {});
                },
                child: Text(S.of(context).turkish)),
            ElevatedButton(
                onPressed: () {
                  S.load(const Locale('fr', 'FR'));
                  setState(() {});
                },
                child: Text(S.of(context).french)),
          ],
        ),
      ),
    );
  }
}
