import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'zeeyang_demomessages_all.dart';

class ZeeyangDemoLocalizations {
  static ZeeyangDemoLocalizations of(BuildContext context) {
    return Localizations.of<ZeeyangDemoLocalizations>(
      context,
      ZeeyangDemoLocalizations,
    );
  }

  static Future<ZeeyangDemoLocalizations> load(Locale locale) {
    final String name =
        locale.countryCode.isEmpty ? locale.languageCode : locale.toString();

    final String localeName = Intl.canonicalizedLocale(name);

    return initializeMessages(localeName).then((bool _) {
      Intl.defaultLocale = localeName;
      return ZeeyangDemoLocalizations();
    });
  }

  String get title => Intl.message(
        'hello',
        name: 'title',
        desc: 'demo localizations',
      );

  String greet(String name) => Intl.message(
        'hello $name',
        name: 'greet',
        desc: 'greet someone',
        args: [name],
      );
}

class ZeeyangDemoLocalizationsDelegate
    extends LocalizationsDelegate<ZeeyangDemoLocalizations> {
  ZeeyangDemoLocalizationsDelegate();

  @override
  Future<ZeeyangDemoLocalizations> load(Locale locale) {
    // TODO: implement load
    return ZeeyangDemoLocalizations.load(locale);
  }

  @override
  bool isSupported(Locale locale) {
    // TODO: implement isSupported
    return true;
  }

  @override
  bool shouldReload(LocalizationsDelegate<ZeeyangDemoLocalizations> old) {
    // TODO: implement shouldReload
    return false;
  }
}
