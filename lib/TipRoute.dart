import 'package:flutter/material.dart';

/**
 * 路由传值
 */
class TipRoute extends StatelessWidget {
  TipRoute({
    Key key,
    @required this.text, //接收一个text参数
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context).settings.arguments;
    print(args);
    return Scaffold(
      appBar: AppBar(
        title: Text("提示"),
      ),
      body: Padding(
        padding: EdgeInsets.all(18),
        child: Center(
          child: Column(
            children: [
              Text(text),
              RaisedButton(
                onPressed: () => Navigator.pop(context, "我是返回值"),
                child: Text("返回"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
