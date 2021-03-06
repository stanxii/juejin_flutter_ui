import 'package:flutter/material.dart';
import 'item_panel_bottom_bar.dart';
import 'item_panel_head.dart';

class ItemPanel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xffffffff),
      margin: EdgeInsets.only(bottom: 12),
      child: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(left: 20, top: 18, right: 10),
            child: ItemPanelHead(),
          ),
          _renderContent(),
          Divider(
            height: 0,
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: ItemPanelBottomBar(),
          )
        ],
      ),
    );
  }

  Widget _renderContent() {
    return Padding(
      padding: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            child: Text(
              '用最基础的方法讲解 Redux 实现原理',
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: Color(0xff333333)),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 5),
            child: Text(
              '用最基础的方法讲解 Redux 实现原理？说白了其实是我能力有限，只能用最基础的方法来讲解，为了讲的更加清楚，文章可能比较拖沓。不过我相信，不是很了解 Redux 的同学，看完我今天分享的文章一定会有所收获',
              style: TextStyle(fontSize: 16, color: Color(0xff555555)),
              softWrap: true,
              // overflow: TextOverflow.ellipsis
            ),
          )
        ],
      ),
    );
  }
}
