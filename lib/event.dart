import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(home: MyApp(),));
}

/**
 * 指针事件处理与通知
 */
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text("事件处理与通知"),
      ),
      body: new EventHandler(),);
  }
}

class EventHandler extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new EventStatus();
  }
}

class EventStatus extends State<EventHandler> {
  PointerEvent _event;

  @override
  Widget build(BuildContext context) {
    // return Listener(
    //   // child: Container(
    //   //   alignment: Alignment.center,
    //   //   color: Colors.blue,
    //   //   width: 300.0,
    //   //   height: 150.0,
    //   //   child: Text(
    //   //     _event?.toString() ?? "",
    //   //     style: TextStyle(color: Colors.white),
    //   //   ),
    //   // ),
    //   // behavior: HitTestBehavior.deferToChild,
    //   // onPointerDown: (PointerDownEvent event) => setState(() => _event = event),
    //   // onPointerMove: (PointerMoveEvent event) => setState(() => _event = event),
    //   // onPointerUp: (PointerUpEvent event) => setState(() => _event = event),
    //     child: ConstrainedBox(
    //       constraints: BoxConstraints.tight(Size(300.0, 150.0)),
    //       child: Center(child: Text("Box A")),
    //     ),
    //     behavior: HitTestBehavior.opaque,
    //     onPointerDown: (event) => print("down A")
    // );
    // return Stack(
    //     children:<Widget> [
    //       Listener(
    //         child: ConstrainedBox(
    //           constraints: BoxConstraints.tight(Size(300.0,200.0)),
    //           child: DecoratedBox(
    //             decoration: BoxDecoration(color: Colors.blue),
    //           ),
    //         ),
    //         onPointerDown: (event)=>print("down0"),
    //       ),
    //       Listener(
    //         child: ConstrainedBox(
    //           constraints: BoxConstraints.tight(Size(200.0,100.0)),
    //           child: Center(child: Text("左上角200*100范围内非文本区域点击"),),
    //         ),
    //         onPointerDown: (event)=>print("down1"),
    //         behavior: HitTestBehavior.translucent,
    //       )
    //     ],
    // );
    //AbsorbPointer
    return Listener(
      child: IgnorePointer(
        child: Listener(
          child: Container(
            color: Colors.red,
            width: 200.0,
            height: 100.0,
          ),
          onPointerDown: (event)=>print("in"),
        ),
      ),
      onPointerDown: (event)=>print("up"),
    );
  }
}
