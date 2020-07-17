import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class ZeeyangDemoLocalizations {
  final Locale locale;

  ZeeyangDemoLocalizations(this.locale);

  static ZeeyangDemoLocalizations of(context) {
    return Localizations.of<ZeeyangDemoLocalizations>(
      context,
      ZeeyangDemoLocalizations,
    );
  }

  static Map<String, Map<String, String>> _localized = {
    'en': {
      'title': 'hello',
    },
    'zh': {
      'title': '您好',
    }
  };

  String get title {
    return _localized[locale.languageCode]['title'];
  }
}

class ZeeyangDemoLocalizationsDelegate
    extends LocalizationsDelegate<ZeeyangDemoLocalizations> {
  ZeeyangDemoLocalizationsDelegate();

  @override
  Future<ZeeyangDemoLocalizations> load(Locale locale) {
    // TODO: implement load
    return SynchronousFuture<ZeeyangDemoLocalizations>(
      ZeeyangDemoLocalizations(locale),
    );
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
