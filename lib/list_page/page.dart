import 'package:fish_demo/list_page/adapter.dart';
import 'package:fish_redux/fish_redux.dart' hide ListAdapter;

import 'effect.dart';
import 'reducer.dart';
import 'state.dart';
import 'view.dart';

class ListPage extends Page<ListState, Map<String, dynamic>> {
  ListPage()
      : super(
            initState: initState,
            effect: buildEffect(),
            reducer: buildReducer(),
            view: buildView,
            dependencies: Dependencies<ListState>(
                adapter: NoneConn<ListState>() + MylistAdapter(),
                slots: <String, Dependent<ListState>>{
                }),
            middleware: <Middleware<ListState>>[
            ],);

}
