import 'package:fish_demo/personal_page/video_page.dart';
import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart' hide Action;
import 'action.dart';
import 'state.dart';

Effect<PersonalState> buildEffect() {
  return combineEffects(<Object, Effect<PersonalState>>{
    PersonalAction.action: _onAction,
    Lifecycle.initState: _onLoadPersonalInfo,
    PersonalAction.seeImage: _onSeeImage,
    PersonalAction.seeVideo: _onSeeVideo,
  });
}

void _onAction(Action action, Context<PersonalState> ctx) {}

void _onLoadPersonalInfo(Action action, Context<PersonalState> ctx) {
  ctx.dispatch(PersonalActionCreator.onLoadPersonalInfo());
}

void _onSeeVideo(Action action, Context<PersonalState> ctx) {
  Navigator.of(ctx.context).push(MaterialPageRoute(
      builder: (context) => VideoPlayView(url: action.payload)));
}

void _onSeeImage(Action action, Context<PersonalState> ctx) {
  Navigator.of(ctx.context).push(MaterialPageRoute(
      builder: (context) => VideoPlayView(url: action.payload)));
}
