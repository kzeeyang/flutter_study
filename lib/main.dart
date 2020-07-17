import 'package:flutter/material.dart';
import 'package:hello_world/demo/animation/animation_demo.dart';
import 'package:hello_world/demo/bloc/bloc_demo.dart';
import 'package:hello_world/demo/form_demo.dart';
import 'package:hello_world/demo/hello_demo.dart';
import 'package:hello_world/demo/http/http_demo.dart';
import 'package:hello_world/demo/i18n/i18n_demo.dart';
// import 'package:hello_world/demo/i18n/map/zeeyang_demo_localizations.dart';
import 'package:hello_world/demo/i18n/intl/zeeyang_demo_localizations.dart';
import 'package:hello_world/demo/rxdart/rxdart_demo.dart';
import 'package:hello_world/demo/state/stateManagement_demo.dart';
import 'package:hello_world/demo/stream/stream_demo.dart';
import 'demo/listview_demo.dart';
import 'demo/drawer_demo.dart';
import 'demo/bottomNavigationBar_demo.dart';
import 'demo/basic_demo.dart';
import 'demo/layout_demo.dart';
import 'demo/view_demo.dart';
import 'demo/sliver_demo.dart';
import 'demo/navigator_demo.dart';
import 'demo/form_demo.dart';
import 'demo/material_components.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      locale: Locale('en', 'US'),
      // locale: Locale('zh', 'CN'),
      // localeListResolutionCallback: (locales, supportedLocales) {
      //   return Locale('en', 'US');
      // },
      localizationsDelegates: [
        ZeeyangDemoLocalizationsDelegate(),
        GlobalMaterialLocalizations.delegate, //提供应用里本地化的字符串
        GlobalWidgetsLocalizations.delegate, //小部件文字默认的方向
      ],
      supportedLocales: [
        Locale('en', 'US'),
        Locale('zh', 'CN'),
      ],
      debugShowCheckedModeBanner: false,
      // home: NavigatorDemo(),
      initialRoute: '/i18n',
      routes: {
        '/': (context) => Home(),
        '/about': (context) => MyPage(title: 'About'),
        '/form': (context) => FormDemo(),
        '/mdc': (context) => MaterialCompents(),
        '/state-management': (context) => StateManagementDemo(),
        '/stream': (context) => StreamDemoHome(),
        '/rxdart': (context) => RxDartDemo(),
        '/bloc': (context) => BlodDemo(),
        '/http': (context) => HttpDemo(),
        '/animation': (context) => AnimationDemo(),
        '/i18n': (context) => I18nDemo(),
      },
      theme: ThemeData(
        primarySwatch: Colors.yellow,
        highlightColor: Color.fromRGBO(255, 255, 255, 0.5),
        splashColor: Colors.white70,
        accentColor: Color.fromRGBO(3, 54, 255, 1.0),
      ),
    );
  }
}

class Home extends StatelessWidget {
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        backgroundColor: Colors.grey[100],
        appBar: AppBar(
          title: Text('NINGHAO'),
          centerTitle: true, //标题居中
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.search),
              tooltip: 'Search',
              onPressed: () => debugPrint('Search button is pressed.'),
            ),
          ],
          elevation: 0.0,
          bottom: TabBar(
            unselectedLabelColor: Colors.black38,
            indicatorColor: Colors.black54,
            indicatorSize: TabBarIndicatorSize.label,
            tabs: <Widget>[
              Tab(
                icon: Icon(Icons.local_florist),
              ),
              Tab(
                icon: Icon(Icons.change_history),
              ),
              Tab(
                icon: Icon(Icons.directions_bike),
              ),
              Tab(
                icon: Icon(Icons.view_quilt),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            ListViewDemo(),
            BasicDemo(),
            LayoutDemo(),
            SliverDemo(),
          ],
        ),
        drawer: DrawerDeom(),
        bottomNavigationBar: BottomNavigationBarDemo(),
      ),
    );
  }
}

// class Home extends StatelessWidget {
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.grey[100],
//       appBar: AppBar(
//         leading: IconButton(
//           icon: Icon(Icons.menu),
//           tooltip: 'Navigration',
//           onPressed: () => debugPrint('Navigration button is pressed.'),
//         ),
//         title: Text('NINGHAO'),
//         actions: <Widget>[
//           IconButton(
//             icon: Icon(Icons.search),
//             tooltip: 'Search',
//             onPressed: () => debugPrint('Search button is pressed.'),
//           ),
//         ],
//         elevation: 0.0,
//       ),
//       body: null,
//     );
//   }
// }
