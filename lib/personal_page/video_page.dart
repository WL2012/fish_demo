import 'package:flutter/material.dart';
import 'package:mini_video_player/mini_video_player.dart';

class VideoPlayView extends StatefulWidget {
  final String url;
  VideoPlayView({
    Key key,
    this.url,
  })  : assert(url != null),
        super(key: key);
  @override
  _VideoPlayViewState createState() => _VideoPlayViewState();
}

class _VideoPlayViewState extends State<VideoPlayView> {
  MiniVideoPlayerController _controller;
  String get _url => widget.url;
  @override
  void dispose() {
    super.dispose();
    _controller.pause();
    _controller.dealloc();
  }

  @override
  void initState() {
    super.initState();
    // WidgetsBinding.instance.addPostFrameCallback((duration) {
    //   RenderBox box = widget._key1.currentContext.findRenderObject();
    //   print(box.size);
    //   if (_wight != box.size.width && _height != box.size.height) {
    //     setState(() {
    //       _wight = box.size.width;
    //       _height = box.size.height;
    //     });
    //   }
    // });
  }

  void onViewPlayerCreated(controller) {
    this._controller = controller;
    this._controller.loadUrl(_url);
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        GestureDetector(
          child: Container(
            child: MiniVideoPlayer(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              hiddenControlView: true,
              onCreated: onViewPlayerCreated,
            ),
          ),
        ),
        Positioned(
          top: MediaQuery.of(context).padding.top + 5,
          left: 15,
          child: GestureDetector(
            onTap: () {
              Navigator.of(context).pop();
            },
            child: Container(
              width: 40,
              height: 24,
              child: Icon(
                Icons.arrow_back_ios,
                color: Colors.white,
              ),
            ),
          ),
        )
      ],
    );
  }
}
