import 'package:fish_demo/filter_page/page.dart';
import 'package:fish_demo/list_page/page.dart';
import 'package:fish_demo/store/state.dart';
import 'package:fish_demo/store/store.dart';
import 'package:fish_demo/tabbar_page/page.dart';
import 'package:flutter/material.dart';
import 'package:fish_redux/fish_redux.dart';
import 'entrance_page/page.dart';
import 'grid_page/page.dart';
import 'personal_page/page.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final AbstractRoutes routes = PageRoutes(
        pages: <String, Page<Object, dynamic>>{
          'tabbar_page': TabbarPage(),
          'entrance_page': EntrancePage(),
          'grid_page': GridPage(),
          'list_page': ListPage(),
          'filter_page': FilterPage(),
          'personal_page': PersonalPage(),
        },
        visitor: (String path, Page<Object, dynamic> page) {
          page.connectExtraStore(GlobalStore.globalStore,
              (Object pageState, GlobalState globalState) {
            final GlobalBaseState baseState = pageState;
            if (baseState.themeColor != globalState.themeColor) {
              if (pageState is Cloneable) {
                final Object copy = pageState.clone();
                final GlobalBaseState newState = copy;
                newState.themeColor = globalState.themeColor;
                return newState;
              }
            }
            return pageState;
          });
        });
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: routes.buildPage('tabbar_page', null),
      onGenerateRoute: (RouteSettings settings) {
        return MaterialPageRoute(builder: (BuildContext context) {
          return routes.buildPage(settings.name, settings.arguments);
        });
      },
    );
  }
}
