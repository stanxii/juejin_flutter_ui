import 'package:flutter/material.dart';

class ShareArticle extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _ShareArticle();
  }
}

class _ShareArticle extends State<ShareArticle> {
  List<Widget> _tags = [
    TagItem(text: '后端'),
    TagItem(text: '前端'),
    TagItem(text: 'Android'),
    TagItem(text: 'IOS'),
    TagItem(text: '人工智能'),
    TagItem(text: '工具开发'),
    TagItem(text: '代码人数'),
    TagItem(text: '阅读'),
  ];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Scaffold(
        appBar: AppBar(
          title: Text("分享文章"),
          actions: [
            FlatButton(
                padding: EdgeInsets.symmetric(horizontal: 4, vertical: 4),
                onPressed: () {},
                child: Text(
                  "发布",
                  style: TextStyle(color: Colors.blue[100], fontSize: 14),
                ))
          ],
        ),
        body: GestureDetector(
          onTap: () {
            FocusScope.of(context).requestFocus(FocusNode());
          },
          child: SingleChildScrollView(
            child: Column(
              children: [
                ListTile(
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                  leading: Icon(Icons.stars),
                  title: TextField(
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(vertical: 8),
                      labelText: "文章链接 (可自动识别粘贴板)",
                      labelStyle:
                          TextStyle(color: Color(0xff999999), fontSize: 14),
                      border: InputBorder.none,
                    ),
                    cursorColor: Colors.blue,
                  ),
                ),
                Divider(
                  height: 1,
                ),
                ListTile(
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                  leading: Icon(Icons.alarm_on),
                  title: TextField(
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(vertical: 8),
                      labelText: "标题",
                      labelStyle:
                          TextStyle(color: Color(0xff999999), fontSize: 14),
                      border: InputBorder.none,
                    ),
                    cursorColor: Colors.blue,
                  ),
                ),
                Divider(
                  height: 1,
                ),
                ListTile(
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                  leading: Icon(Icons.collections_bookmark),
                  title: TextField(
                    maxLines: 5,
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(vertical: 8),
                      labelText: "此刻你的想法",
                      labelStyle:
                          TextStyle(color: Color(0xff999999), fontSize: 14),
                      border: InputBorder.none,
                    ),
                    cursorColor: Colors.blue,
                  ),
                ),
                Divider(
                  height: 1,
                ),
                ListTile(
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                  leading: Icon(Icons.collections_bookmark),
                  title: Container(
                    margin: EdgeInsets.only(bottom: 15),
                    child: Text("选择分类"),
                  ),
                  subtitle: Wrap(
                    children: _tags,
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}

class TagItem extends StatelessWidget {
  final String text;

  TagItem({Key key, this.text});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GestureDetector(
      onTap: () {},
      child: Container(
        child: Text(text),
        margin: EdgeInsets.only(right: 10, bottom: 10),
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
            color: Color(0xffdddddd), borderRadius: BorderRadius.circular(4)),
      ),
    );
  }
}
