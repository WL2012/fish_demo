import 'package:fish_demo/personal_page/personal_info.dart';
import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';

import 'action.dart';

class PersonalInfoView extends StatelessWidget {
  final PersonalInfo personalInfo;
  const PersonalInfoView({Key key, @required this.personalInfo})
      : assert(personalInfo != null),
        super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        margin: EdgeInsets.all(10),
        color: Color.fromRGBO(37, 42, 54, 1),
        child: ListView(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          children: <Widget>[
            item(personalInfo.sex == 0 ? '女' : '男', '性别'),
            item(personalInfo.position, '工作行业'),
            item(personalInfo.salary, '月薪'),
            item(personalInfo.location, '籍贯'),
            item(personalInfo.city, '生活城市'),
            item(personalInfo.height, '身高'),
            item(personalInfo.character, '性格'),
            item(personalInfo.measurements, '三围'),
            item(personalInfo.car, '车子'),
            item(personalInfo.house, '房子'),
          ],
        ),
      ),
    );
  }

  Widget item(String title, String subTitle) {
    return Container(
      padding: EdgeInsets.only(left: 10, right: 10),
      height: 45,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            title ?? '',
            style: TextStyle(
                fontSize: 15,
                color: Colors.white,
                decoration: TextDecoration.none),
          ),
          Text(
            subTitle ?? '',
            style: TextStyle(
                fontSize: 15,
                color: Colors.white,
                decoration: TextDecoration.none),
          ),
        ],
      ),
    );
  }
}

class PersonalImageView extends StatelessWidget {
  final List<String> images;

  const PersonalImageView({Key key, @required this.images})
      : assert(images != null),
        super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      child: GridView.count(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        crossAxisCount: 3,
        crossAxisSpacing: 8,
        mainAxisSpacing: 8,
        childAspectRatio: 0.8,
        children: images
            .map<Widget>((url) => FadeInImage.assetNetwork(
                  placeholder: 'images/placeholder.png',
                  image: url,
                  fit: BoxFit.fill,
                ))
            .toList(),
      ),
    );
  }
}

class PersonalVideoView extends StatelessWidget {
  final List<String> videos;
  final Dispatch dispatch;

  const PersonalVideoView({
    Key key,
    @required this.videos,
    @required this.dispatch,
  })  : assert(videos != null),
        assert(dispatch != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      child: GridView.count(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        crossAxisCount: 3,
        crossAxisSpacing: 8,
        mainAxisSpacing: 8,
        childAspectRatio: 0.8,
        children: videos.map<Widget>((url) {
          return GestureDetector(
            onTap: () {
              dispatch(PersonalActionCreator.onSeeVideo(url));
            },
            child: Container(
              color: Colors.white,
              child: Stack(
                children: <Widget>[
                  FadeInImage.assetNetwork(
                    placeholder: 'images/placeholder.png',
                    image: url,
                    fit: BoxFit.fill,
                  ),
                  Center(
                    child: Icon(
                      Icons.play_circle_outline,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}
