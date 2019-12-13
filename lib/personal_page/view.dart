import 'package:fish_demo/personal_page/widget.dart';
import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';

import 'action.dart';
import 'state.dart';

Widget buildView(
    PersonalState state, Dispatch dispatch, ViewService viewService) {
  return Container(
    color: Color.fromRGBO(31, 36, 49, 1),
    child: CustomScrollView(
      slivers: <Widget>[
        SliverAppBar(
          expandedHeight: 200,
          // floating: true,
          // snap: true,
          pinned: true,
          flexibleSpace: FlexibleSpaceBar(
            centerTitle: true,
            background: Stack(
              children: <Widget>[
                Image.network(
                  'https://tva1.sinaimg.cn/large/006y8mN6gy1g72j6nk1d4j30u00k0n0j.jpg',
                  fit: BoxFit.fill,
                  width: MediaQuery.of(viewService.context).size.width,
                ),
                Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      ClipOval(
                        child: Image.network(
                          'https://tva1.sinaimg.cn/large/006y8mN6gy1g72j6nk1d4j30u00k0n0j.jpg',
                          fit: BoxFit.fill,
                          width: 80,
                          height: 80,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Text(
                          'hello',
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 5),
                        child: Text(
                          'hellohehhekfllll',
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                      )
                    ],
                  ),
                ),
                Positioned(
                  bottom: 10,
                  right: 10,
                  child: RaisedButton(
                    color: Colors.blue,
                    shape: StadiumBorder(),
                    onPressed: () {},
                    child: Text('发消息'),
                  ),
                )
              ],
            ),
            collapseMode: CollapseMode.none,
          ),
        ),
        SliverGrid.count(
          crossAxisCount: 3,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
          childAspectRatio: 2,
          children: <Widget>[
            _tapView(state, dispatch, 0, Icons.table_chart),
            _tapView(state, dispatch, 1, Icons.image),
            _tapView(state, dispatch, 2, Icons.videocam),
          ],
        ),
        MediaQuery.removePadding(
          context: viewService.context,
          removeTop: true,
          removeBottom: true,
          child: SliverToBoxAdapter(
            child: Container(
              child: _bottomView(state, dispatch),
            ),
          ),
        )
      ],
    ),
  );
}

Widget _tapView(
  PersonalState state,
  Dispatch dispatch,
  int index,
  IconData iconData,
) {
  return GestureDetector(
    onTap: () {
      dispatch(PersonalActionCreator.onChangeTab(index));
    },
    child: Container(
        child: Icon(
      iconData,
      size: 30,
      color: state.selectIndex == index ? Colors.blueAccent : Colors.white,
    )),
  );
}

Widget _bottomView(PersonalState state, Dispatch dispatch) {
  switch (state.selectIndex) {
    case 1:
      return PersonalImageView(images: state.personalInfo.images);
      break;
    case 2:
      return PersonalVideoView(
        videos: state.personalInfo.videos,
        dispatch: dispatch,
      );
      break;
    default:
      return PersonalInfoView(personalInfo: state.personalInfo);
      break;
  }
}
