import 'package:chi_phone_futter/TipRoute.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RouterTestRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: RaisedButton(
        onPressed: () async {
          var result = await Navigator.of(context).pushNamed("new_page", arguments: "hi");

          print("路由返回值：$result");
        },
        child: Text("打开展示页"),
      ),
    );
  }
}
