import 'package:fish_demo/personal_page/personal_info.dart';

import 'model.dart';

class Api {
  static Api _instance;
  factory Api() {
    return _getInstance();
  }

  static _getInstance() {
    if (_instance == null) {
      _instance = new Api._internal();
    }
    return _instance;
  }

  Api._internal() {
    //init Api instance
  }

  List<GridModel> getGridData() {
    return List<GridModel>.generate(
        10, (index) => GridModel(name: 'mode$index'));
  }

  PersonalInfo getPersonalInfo() {
    return PersonalInfo(
      sex: 0,
      position: 'UI设计师',
      salary: '10k',
      location: '上海市上海市',
      city: '北京市',
      height: '165cm',
      character: '外向',
      measurements: '胸围82cm 腿围84cm 臀围85cm',
      car: '奔驰',
      house: '有房（两室一厅）98平方米',
      images: [
        'https://tva1.sinaimg.cn/large/006y8mN6gy1g72j6nk1d4j30u00k0n0j.jpg',
        'https://tva1.sinaimg.cn/large/006y8mN6gy1g72j6nk1d4j30u00k0n0j.jpg',
        'https://tva1.sinaimg.cn/large/006y8mN6gy1g72j6nk1d4j30u00k0n0j.jpg',
        'https://tva1.sinaimg.cn/large/006y8mN6gy1g72j6nk1d4j30u00k0n0j.jpg',
        'https://tva1.sinaimg.cn/large/006y8mN6gy1g72j6nk1d4j30u00k0n0j.jpg',
        'https://tva1.sinaimg.cn/large/006y8mN6gy1g72j6nk1d4j30u00k0n0j.jpg',
        'https://tva1.sinaimg.cn/large/006y8mN6gy1g72j6nk1d4j30u00k0n0j.jpg',
        'https://tva1.sinaimg.cn/large/006y8mN6gy1g72j6nk1d4j30u00k0n0j.jpg',
        'https://tva1.sinaimg.cn/large/006y8mN6gy1g72j6nk1d4j30u00k0n0j.jpg',
        'https://tva1.sinaimg.cn/large/006y8mN6gy1g72j6nk1d4j30u00k0n0j.jpg',
        'https://tva1.sinaimg.cn/large/006y8mN6gy1g72j6nk1d4j30u00k0n0j.jpg',
        'https://tva1.sinaimg.cn/large/006y8mN6gy1g72j6nk1d4j30u00k0n0j.jpg',
        'https://tva1.sinaimg.cn/large/006y8mN6gy1g72j6nk1d4j30u00k0n0j.jpg',
        'https://tva1.sinaimg.cn/large/006y8mN6gy1g72j6nk1d4j30u00k0n0j.jpg',
        'https://tva1.sinaimg.cn/large/006y8mN6gy1g72j6nk1d4j30u00k0n0j.jpg',
        'https://tva1.sinaimg.cn/large/006y8mN6gy1g72j6nk1d4j30u00k0n0j.jpg',
        'https://tva1.sinaimg.cn/large/006y8mN6gy1g72j6nk1d4j30u00k0n0j.jpg',
        'https://tva1.sinaimg.cn/large/006y8mN6gy1g72j6nk1d4j30u00k0n0j.jpg',
        'https://tva1.sinaimg.cn/large/006y8mN6gy1g72j6nk1d4j30u00k0n0j.jpg',
        'https://tva1.sinaimg.cn/large/006y8mN6gy1g72j6nk1d4j30u00k0n0j.jpg',
      ],
      videos: [
        'http://xianshi.img-cn-shanghai.aliyuncs.com/bachelordom/1558858006627.mp4',
        'http://xianshi.img-cn-shanghai.aliyuncs.com/bachelordom/1558858006627.mp4',
        'http://xianshi.img-cn-shanghai.aliyuncs.com/bachelordom/1558858006627.mp4',
        'http://xianshi.img-cn-shanghai.aliyuncs.com/bachelordom/1558858006627.mp4',
      ],
    );
  }
}
