import 'package:CEP/utils/utils.dart';
import 'package:flutter/material.dart';

import 'sys_options_setting.dart';
import 'sys_options_setting_new_a.dart';
import 'sys_options_setting_new_b.dart';
import 'sys_options_setting_new_c.dart';
import 'sys_options_setting_new_d.dart';
import 'sys_options_setting_new_e.dart';
import 'sys_options_setting_new_f.dart';
import 'sys_options_setting_new_g.dart';
import 'sys_options_setting_new_h.dart';
import 'sys_options_setting_new_i.dart';
import 'sys_options_setting_new_j.dart';
import 'sys_options_setting_new_l.dart';

final _listNames = {
  '系统设置': ['参数设置'],
  '生产概况': ['熟料矿物组成', '水泥组成'],
  '生料制备': ['生料基本信息录入', '生料相关信息输入'],
  '熟料生产': ['运输设备', '煅烧设备', '冷却设备'],
  '燃烧处理': ['燃料基本信息录入', '燃料粉磨设备'],
  '水泥生产': ['粉磨设备'],
  '输出结果': ['水泥生产碳排放'],
};

// 程序入口
void main() {
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '水泥生产碳排放计算软件',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a blue toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      // //定义了一个名为MyHomePage的页面，标题为'水泥生产碳排放计算软件'。
      home: const MyHomePage(title: '水泥生产碳排放计算软件'),
      routes: <String, WidgetBuilder>{

        // 然后，定义了一个路由表，其中包含一个名为SysOptionSettingPage的路由。
        // 当应用程序的路由为SysOptionSettingPage.sysOptionSettingPageRouterName时，
        // 将显示SysOptionSettingPage页面。
        SysOptionSettingPage.sysOptionSettingPageRouterName: (cts) =>
            const SysOptionSettingPage(),
        SysOptionSettingPage2.sysOptionSettingPageRouterName: (cts) =>
        const SysOptionSettingPage2(),
        SysOptionSettingPage3.sysOptionSettingPageRouterName: (cts) =>
        const SysOptionSettingPage3(),
        SysOptionSettingPage4.sysOptionSettingPageRouterName: (cts) =>
        const SysOptionSettingPage4(),
        SysOptionSettingPage5.sysOptionSettingPageRouterName: (cts) =>
        const SysOptionSettingPage5(),
        SysOptionSettingPage6.sysOptionSettingPageRouterName: (cts) =>
        const SysOptionSettingPage6(),
        SysOptionSettingPage7.sysOptionSettingPageRouterName: (cts) =>
        const SysOptionSettingPage7(),
        SysOptionSettingPage8.sysOptionSettingPageRouterName: (cts) =>
        const SysOptionSettingPage8(),
        SysOptionSettingPage9.sysOptionSettingPageRouterName: (cts) =>
        const SysOptionSettingPage9(),
        SysOptionSettingPage10.sysOptionSettingPageRouterName: (cts) =>
        const SysOptionSettingPage10(),
        SysOptionSettingPage11.sysOptionSettingPageRouterName: (cts) =>
        const SysOptionSettingPage11(),
        SysOptionSettingPage12.sysOptionSettingPageRouterName: (cts) =>
        const SysOptionSettingPage12(),

      }, // 路由注册
    );
  }
}

// home主页
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

// homePage
class _MyHomePageState extends State<MyHomePage> {
  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
    });
  }
  final List<String> options = ['Option 1', 'Option 2', 'Option 3'];
  String? selectedOption;

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // TRY THIS: Try changing the color here to a specific color (to
        // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
        // change color while the other colors stay the same.
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget{

  @override
  _HomePageState createState() =>_HomePageState();

  HomePage({super.key});
}

const APPBAR_SCROLL_OFFSET=100;

class _HomePageState extends State<HomePage> {
  double appBarAlpha = 0;
  late int counter;

  _onScroll(offset) {
    double alpha = offset / APPBAR_SCROLL_OFFSET;
    if (alpha < 0) {
      alpha = 0;
    } else if (alpha > 1) {
      alpha = 1;
    }
    setState(() {
      appBarAlpha = alpha;
    });
    print(appBarAlpha);
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  List<Widget> _buildList(BuildContext context) {
    List<Widget> widgets = [];
    _listNames.keys.forEach((key) {
      widgets.add(_item(context, key, _listNames[key]!));
    });
    return widgets;
  }

  Widget _item(BuildContext context, String title, List<String> subTitles) {
    return ExpansionTile(
        title: Text(
          title,
          style: const TextStyle(
            color: Colors.black54,
            fontSize: 20,
          ),
        ),
        children: subTitles
            .map((subTitle) => _buildSub(context, title, subTitle))
            .toList());
  }

  Widget _buildSub(BuildContext context, String title, String subTitle) {
    return FractionallySizedBox(
      widthFactor: 1,
      child: Container(
        height: 40,
        margin: const EdgeInsets.only(bottom: 5, left: 12),
        //decoration: BoxDecoration(color: Colors.grey),
        child: GestureDetector(
          onTap: () {
            onClickItem(context, title, subTitle);
          },
          child: Text(
            subTitle,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 800,
        color: Colors.white,
        child: ListView(
          children: _buildList(context),
        ),
      ),
    );
  }
}

// public methods
/// 二级子项点击事件
void onClickItem(BuildContext context, String title, String subTitle) {

  //获取_listNames的键（keys）列表，然后将该列表转换为List类型
  //接着，它查找title在键列表中的索引，并将结果赋值给firstLevelIndex。
  int firstLevelIndex = _listNames.keys.toList().indexOf(title);

  //_listNames[title]获取与title对应的值列表，
  //如果title不存在于_listNames中，那么将返回null。接着，代码将该列表转换为List类型，并查找subTitle在该列表中的索引。
  int? subLeveIndex = _listNames[title]?.toList().indexOf(subTitle);
  String path = "$title->$subTitle";
  switch (firstLevelIndex) {
    case 0:
      switch (subLeveIndex) {
        case 0:
          path = SysOptionSettingPage.sysOptionSettingPageRouterName;
          break;
        case 1:
          break;
      }
      break;
    case 1:
      switch (subLeveIndex) {
        case 0:
          path = SysOptionSettingPage2.sysOptionSettingPageRouterName;
          break;

        case 1:
          path = SysOptionSettingPage3.sysOptionSettingPageRouterName;
          break;
        case 2:
          break;
      }
      break;
    case 2:
      switch (subLeveIndex) {
        case 0:
          path = SysOptionSettingPage4.sysOptionSettingPageRouterName;
          break;
        case 1:
          path = SysOptionSettingPage5.sysOptionSettingPageRouterName;
          break;
        case 2:
          break;
      }
      break;
    case 3:
      switch (subLeveIndex) {
        case 0:
          path = SysOptionSettingPage6.sysOptionSettingPageRouterName;
          break;
        case 1:
          path = SysOptionSettingPage7.sysOptionSettingPageRouterName;
          break;
        case 2:
          path = SysOptionSettingPage8.sysOptionSettingPageRouterName;
          break;
        case 3:
          break;

      }
      break;
    case 4:
      switch (subLeveIndex) {
        case 0:
          path = SysOptionSettingPage9.sysOptionSettingPageRouterName;
          break;
        case 1:
          path = SysOptionSettingPage10.sysOptionSettingPageRouterName;
          break;
        case 2:
          break;
      }
      break;
    case 5:
      switch (subLeveIndex) {
        case 0:
          path = SysOptionSettingPage11.sysOptionSettingPageRouterName;
          break;
        case 1:
          break;
          }
      break;
    case 6:
      switch (subLeveIndex) {
        case 0:
          path = SysOptionSettingPage12.sysOptionSettingPageRouterName;
          break;
        case 1:
          break;
      }
      break;
  }
  if (path.startsWith("/")) {
    //Navigator.pushNamed是一个Flutter方法，它用于将用户导航到应用中的特定路由。
    //在这个例子中，context是构建当前路由的上下文，path是要导航到的路由的名称。
    Navigator.pushNamed(context, path); // 实际页面跳转
  } else {
    Utils.showToast(context!, path);
  }
}
