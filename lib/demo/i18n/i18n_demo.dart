import 'package:flutter/material.dart';
// import 'package:hello_world/demo/i18n/map/zeeyang_demo_localizations.dart';
import 'package:hello_world/demo/i18n/intl/zeeyang_demo_localizations.dart';

class I18nDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Locale locale = Localizations.localeOf(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('I18nDemo'),
        elevation: 0.0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(locale.toString()),
            Text(
              // Localizations.of(context, ZeeyangDemoLocalizations).title,
              ZeeyangDemoLocalizations.of(context).greet('zeeyang'),
              style: Theme.of(context).textTheme.title,
            ),
          ],
        ),
      ),
    );
  }
}

class I18nDemoHome extends StatefulWidget {
  @override
  _I18nDemoHomeState createState() => _I18nDemoHomeState();
}

class _I18nDemoHomeState extends State<I18nDemoHome> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
