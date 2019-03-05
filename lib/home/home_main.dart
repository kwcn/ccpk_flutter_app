import 'package:flutter/material.dart';

class HomeMainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return new Scaffold(
      appBar: AppBar(
        title: Text('GWM APP HOME'),
        actions: <Widget>[
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, 'scan_bar_code');
            },
            child: Icon(Icons.settings_overscan),
          ),
          GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, 'locate_city');
              },
            child: Icon(Icons.map),
            ),
        ],
      ),
      body: Center(
          child: Text("Home Page"),),
    );

    //return Text(futureString.toString());
  }

//  Future<String> futureString = new QRCodeReader()
//      .setAutoFocusIntervalInMs(200) // default 5000
//      .setForceAutoFocus(true) // default false
//      .setTorchEnabled(true) // default false
//      .setHandlePermissions(true) // default true
//      .setExecuteAfterPermissionGranted(true) // default true
//      .scan();

}

class WholeScrollView extends StatefulWidget {
  @override
  WholeScrollViewState createState() => WholeScrollViewState();
}

class WholeScrollViewState extends State<WholeScrollView> {
  @override
  Widget build(BuildContext context) {

    return null;
  }
}

class UpdateNoticeDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text('发现新版本'),
      content: SingleChildScrollView(
        child: ListBody(
          children: <Widget>[
            Text('1.新增了违章代缴功能，可在线直接缴罚款。'),
            Text('2.新增了在线客服，答疑解惑更便捷。'),
            Text('3.优化服务商查询，附近服务站一键查询。'),
            Text('4.修复其他问题，提升客户感知。'),
          ],
        ),
      ),
      actions: <Widget>[
        FlatButton(
          child: Text('稍后再说'),
          onPressed: () {
            Scaffold.of(context).showSnackBar(new SnackBar(
              content: Text('取消弹框'),
              backgroundColor: Colors.yellow,
            ));
          },
        ),
        FlatButton(
          child: Text('下载更新'),
          onPressed: () {
            Scaffold.of(context).showSnackBar(new SnackBar(
              content: Text('下载更新逻辑待实现'),
              backgroundColor: Colors.redAccent,
            ));
          },
        )
      ],
    );
  }
}