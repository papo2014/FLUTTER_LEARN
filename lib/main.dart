import 'package:chi_phone_futter/RouterTestRoute.dart';
import 'package:chi_phone_futter/TipRoute.dart';
import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
import 'dart:async';
import 'package:flutter/services.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String _platformVersion = 'Unknown';

  @override
  void initState() {
    super.initState();
    initPlatformState();
  }

  // Platform messages are asynchronous, so we initialize in an async method.
  Future<void> initPlatformState() async {
    String platformVersion;
    // Platform messages may fail, so we use a try/catch PlatformException.
    try {
    } on PlatformException {
      platformVersion = 'Failed to get platform version.';
    }

    // If the widget was removed from the tree while the asynchronous platform
    // message was in flight, we want to discard the reply rather than calling
    // setState to update our non-existent appearance.
    if (!mounted) return;

    setState(() {
      _platformVersion = platformVersion;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Plugin example app'),
        ),
        body: Center(
          child: Text('Running on: $_platformVersion\n'),
        ),
      ),
    );
  }
}
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//    String platformVersion = await SseCore.platformVersion;
//     return MaterialApp(
//       title: 'Startup Name Generator',
//       initialRoute: "/",
//       theme: new ThemeData(primaryColor: Colors.white),
//       routes: {
//         "new_page":(context)=>TipRoute(text: await SseCore.platformVersion,),
//         "/":(context)=>RouterTestRoute(),
//       }
//       // home: new RouterTestRoute(),
//     );
//   }
// }
//
// class RandomWords extends StatefulWidget {
//   @override
//   State<StatefulWidget> createState() {
//     return new RandomWordsState();
//   }
// }
//
// class RandomWordsState extends State<RandomWords> {
//   //带下划线的是私有属性或方法
//   final _suggestions = <WordPair>[];
//   final _biggerFont = const TextStyle(fontSize: 18.0);
//   final _saved = new Set<WordPair>();
//
//   @override
//   Widget build(BuildContext context) {
//     return new Scaffold(
//       appBar: new AppBar(
//         title: new Text('Startup Name Generator'),
//         actions: <Widget>[
//           new IconButton(icon: new Icon(Icons.list), onPressed: _pushSaved),
//         ],
//       ),
//       body: _buildSuggestions(),
//     );
//   }
//
//   void _pushSaved() {
//     //路由，推入导航管理栈中
//     Navigator.of(context).push(
//       new MaterialPageRoute(
//         builder: (context) {
//           final tiles = _saved.map((pair) {
//             return new ListTile(
//               title: new Text(
//                 pair.asPascalCase,
//                 style: _biggerFont,
//               ),
//             );
//           });
//           final divided =
//               ListTile.divideTiles(tiles: tiles, context: context).toList();
//           return new Scaffold(
//             appBar: new AppBar(
//               title: new Text('Saved Suggestions'),
//             ),
//             body: new ListView(
//               children: divided,
//             ),
//           );
//         },
//       ),
//     );
//   }
//
//   Widget _buildSuggestions() {
//     return new ListView.builder(
//         padding: const EdgeInsets.all(16.0),
//         // 对于每个建议的单词对都会调用一次itemBuilder，然后将单词对添加到ListTile行中
//         // 在偶数行，该函数会为单词对添加一个ListTile row.
//         // 在奇数行，该函数会添加一个分割线widget，来分隔相邻的词对。
//         // 注意，在小屏幕上，分割线看起来可能比较吃力。
//         itemBuilder: (context, i) {
//           // 在每一列之前，添加一个1像素高的分隔线widget
//           if (i.isOdd) return new Divider();
//
//           // 语法 "i ~/ 2" 表示i除以2，但返回值是整形（向下取整），比如i为：1, 2, 3, 4, 5
//           // 时，结果为0, 1, 1, 2, 2， 这可以计算出ListView中减去分隔线后的实际单词对数量
//           final index = i ~/ 2;
//           // 如果是建议列表中最后一个单词对
//           if (index >= _suggestions.length) {
//             // ...接着再生成10个单词对，然后添加到建议列表
//             _suggestions.addAll(generateWordPairs().take(10));
//           }
//           return _buildRow(_suggestions[index]);
//         });
//   }
//
//   Widget _buildRow(WordPair pair) {
//     final alreadySaved = _saved.contains(pair);
//     return new ListTile(
//       title: new Text(
//         pair.asPascalCase,
//         style: _biggerFont,
//       ),
//       trailing: new Icon(alreadySaved ? Icons.favorite : Icons.favorite_border,
//           color: alreadySaved ? Colors.red : null),
//       onTap: () {
//         setState(() {
//           if (alreadySaved) {
//             _saved.remove(pair);
//           } else {
//             _saved.add(pair);
//           }
//         });
//       },
//     );
//   }
// }
