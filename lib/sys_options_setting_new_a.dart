import 'package:CEP/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'beans/system_option_new_a_bean.dart';
import 'common/data_provider.dart';

//全局上下文
BuildContext? myContext;
//输入框控制结合
//_controlers是一个列表，用于存储TextEditingController对象。TextEditingController是Flutter中用于控制文本输入框的控件
late List<TextEditingController> _controlers;
//  _controlers = List.generate(8, (_) => TextEditingController());
//输入框只能输入数字和小数点正则表达式
RegExp regExp = RegExp(r'^\d+\.?\d{0,10}');
//默认值
SystemOptionBean1? systemOptionBean1;

///系统设置-参数设置页
//定义一个名为SysOptionSettingPage的类，它继承自StatelessWidget类。
//StatelessWidget是Flutter框架中的一个类，用于构建不需要维护内部状态的UI控件（用户不能改变状态）
class SysOptionSettingPage2 extends StatelessWidget {

  //设置该页面路由名称字符串常量
  //路由是指路由器从一个接口上收到数据包，根据数据包的目的地址进行定向并转发到另一个接口的过程
  //定义一个静态常量sysOptionSettingPageRouterName，其值为字符串"/SysOptionSettingPage"
  static const sysOptionSettingPageRouterName = "/SysOptionSettingPage2";

  //SysOptionSettingPage类的构造函数，接受一个Key参数，并通过super.key传递给父类StatelessWidget的构造函数。
  //Key在Flutter中用于标识Widget的唯一性，以便在构建过程中跟踪和重用Widget。
  //Widget是构成用户界面的基础单元。它表示屏幕上的一个可见元素，如按钮、文本、图片等
  const SysOptionSettingPage2({super.key});

  //@override是一个注解，用来表示子类的方法、getter或setter将覆盖父类的同名方法、getter或setter。
  //这是一种明确的告诉编译器和阅读代码的人，你有意覆盖了父类的成员。
  @override

  Widget build(BuildContext context) {

    //Scaffold Widget，这是一个基本的布局Widget，它提供了默认的应用栏、标题和body属性。
    //build方法返回一个Widget，这是Flutter框架调用的方法，用于构建Widget树。
    //body属性是一个MySysOptionSettingPage Widget，这可能是你自定义的Widget，用于在这个页面上显示内容。
    return const Scaffold(
      body: MySysOptionSettingPage(),
    );
  }
}

//它继承了StatefulWidget类。这意味着MySysOptionSettingPage是一个有状态的widget，可以在用户交互时改变其内部状态。
class MySysOptionSettingPage extends StatefulWidget {
  @override
  //这行代码定义了一个名为createState的方法，该方法返回了一个新的_MySysOptionSettingState类的实例。
  //_MySysOptionSettingState是MySysOptionSettingPage类的一个内部类，用于管理MySysOptionSettingPage的状态
  _MySysOptionSettingState createState() => _MySysOptionSettingState();

  //定义了一个名为MySysOptionSettingPage的构造函数，它接收一个名为key的参数，并将该参数传递给父类StatefulWidget的构造函数
  const MySysOptionSettingPage({super.key});
}

//StatefulWidget是Flutter中用于定义有状态的widget的类。
class _MySysOptionSettingState extends State<MySysOptionSettingPage> {
  @override

  //initState方法是State类的一个方法，用于在创建StatefulWidget时初始化状态。在这个方法中，你可以初始化变量、设置初始状态等。
  void initState() {
    // TODO: implement

    //调用父类State的initState方法，以便在子类中初始化父类的状态。
    super.initState();

    //创建了一个长度为25的List，其中每个元素都是一个TextEditingController对象
    _controlers = List.generate(8, (_) => TextEditingController());
    //从DataProvider类的单例实例中获取系统选项Bean1的数据。

    ////是一个静态方法，用于获取DataProvider类的实例。
    // //当这个方法第一次被调用时，如果_instance还没有被初始化，那么它会创建一个新的DataProvider实例并将其赋值给_instance。
    // //这样，当getInstance()被多次调用时，它总是返回同一个DataProvider实例。
    //   static DataProvider? getInstance() {
    //     _instance ??= new DataProvider();
    //     return _instance;
    //   }

    //  //这个方法接受一个SystemOptionBean类型的参数systemOptionBean1，
    //   //然后使用getInstance()方法获取当前类的实例，并设置该实例的systemOptionBean属性为传入的参数。
    //   static void setSystemOptionBean1(SystemOptionBean1 systemOptionBean0) {
    //     getInstance()?.systemOptionBean1 = systemOptionBean0;
    //   }
    systemOptionBean1  =
        DataProvider.getInstance()?.systemOptionBean1;


    if(systemOptionBean1 != null){
      //systemOptionBean1不为null，那么将C2S属性的值转换为字符串并设置到_controlers[0]的文本中，否则不做任何操作
      _controlers[0].text =
      systemOptionBean1 ?.C2S.toString() as String;
      _controlers[1].text =
      systemOptionBean1?.C3S.toString() as String;
      _controlers[2].text =
      systemOptionBean1 ?.C4AF.toString() as String;
      _controlers[3].text =
      systemOptionBean1 ?.C3A.toString() as String;
      _controlers[4].text =
      systemOptionBean1 ?.C4A3.toString() as String;
      _controlers[5].text =
      systemOptionBean1 ?.fCaO.toString() as String;
      _controlers[6].text =
      systemOptionBean1 ?.CaSO4.toString() as String;
      _controlers[7].text =
      systemOptionBean1 ?.MgO.toString() as String;
    }
  }

  @override
  //void dispose()是一个生命周期方法，在_MySysOptionSettingState被销毁时调用。这个方法通常用于释放资源。
  void dispose() {
    for (var element in _controlers) {

      //为_controlers列表中的每个TextEditingController实例调用dispose()方法，以便释放资源。
      element.dispose();
    }

    //这行代码调用父类的dispose()方法，以便在销毁_MySysOptionSettingState之前完成父类的销毁。
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {

    //将当前页面的BuildContext赋值给myContext变量。BuildContext提供了访问当前页面的上下文信息，例如访问父级元素、查找子元素等
    myContext = context;

    //Scaffold：这是一个Flutter提供的Widget，用于构建页面的基本结构。
    //它包括appBar（顶部栏）、body（主体内容）和floatingActionButton（浮动操作按钮）等。
    return Scaffold(

      //AppBar：这是Scaffold的一部分，用于构建页面的顶部栏。它包括leading（左侧按钮）、title（标题）和actions（右侧按钮）等。
      appBar: AppBar(

        //leading：这是AppBar的一部分，用于构建顶部栏左侧的按钮。在这里，它使用了一个IconButton，点击时可以返回上一页面。
        leading: IconButton(
          icon: const Icon(Icons.arrow_back), onPressed: () =>Navigator.pop(context),
        ),

        //title：这是AppBar的一部分，用于设置顶部栏的标题。在这里，它使用了一个Text Widget，显示"参数设置"。
        title: const Text('熟料矿物组成'),
      ),

      //body：这是Scaffold的一部分，用于构建页面的主体内容。
      //Padding：这是一个Flutter提供的Widget，用于设置子Widget的边距。在这里，它设置了上下左右的边距为16像素
      body: Padding(
        padding: EdgeInsets.all(16.0),

        //SingleChildScrollView：这是一个Flutter提供的Widget，用于构建一个可以滚动的单个子Widget。
        // 在这里，它包含了一个Column Widget，用于构建纵向排列的布局
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [

              //const Text：这是一个Flutter提供的Widget，用于显示文本。
              //在这里，它用于显示"燃料的CO2排放因子"
              const Text(
                '熟料矿物组成',

                //TextStyle定义了文本的字体大小（fontSize）、颜色（color）和字体粗细（fontWeight）
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),

                //textAlign: TextAlign.center则是设置文本的对齐方式。TextAlign.center表示文本的对齐方式是居中对齐。
                textAlign: TextAlign.center,
              ),

              //const SizedBox：就是向下空出一条空白
              const SizedBox(
                height: 20,
              ),

              //Row：这是一个水平布局的组件，可以包含多个子组件
              //并可以通过mainAxisAlignment和crossAxisAlignment来设置子组件的排列方式
              const Row(

                //mainAxisAlignment: MainAxisAlignment.spaceBetween, 是指在 Row 布局中，子元素之间会保持相等的空间。
                //在这个例子中，"燃料类型"和"排放系数(kgCo2/kg)"这两个文本会在水平方向上保持相等的距离
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [

                  Text(
                    '矿物类型',
                    //TextAlign.lett表示文本的对齐方式是居左对齐。
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  Text(
                    '所占百分比',
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                //mainAxisAlignment: MainAxisAlignment.spaceBetween：设置主轴对齐方式为spaceBetween，即子元素在主轴上均匀分布，且空隙相等。
                mainAxisAlignment: MainAxisAlignment.spaceBetween,

                //crossAxisAlignment: CrossAxisAlignment.center：设置交叉轴对齐方式为center，即子元素在交叉轴上居中对齐。
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text(
                    'C2S',
                    textAlign: TextAlign.center,
                  ),

                  //SizedBox(..., child: ...)：创建一个具有特定宽度的盒子，其中包含一个文本输入框。
                  SizedBox(
                    width: 150,

                    //TextField(...)：创建一个文本输入框，其中包含键盘类型、输入格式器、对齐方式等信息。
                    child: TextField(
                      keyboardType:
                      const TextInputType.numberWithOptions(decimal: true),
                      inputFormatters: [
                        FilteringTextInputFormatter.allow(regExp),
                      ],
                      textAlignVertical: TextAlignVertical.center,
                      controller: _controlers[0],

                      //decoration: const InputDecoration(...)：设置文本输入框的装饰，包括填充颜色、边框样式等。
                      decoration: const InputDecoration(
                        contentPadding: EdgeInsets.symmetric(
                            vertical: 4.0, horizontal: 1.0),
                        border: OutlineInputBorder(),
                        hintText: '',
                        fillColor: Colors.grey,
                        filled: true,

                        /// 让文字垂直居中
                        //isCollapsed: true：设置文本输入框的装饰为折叠状态，即不显示下划线。
                        isCollapsed: true,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text(
                    'C3S',
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    width: 150,
                    child: TextField(
                      keyboardType:
                      const TextInputType.numberWithOptions(decimal: true),
                      inputFormatters: [
                        FilteringTextInputFormatter.allow(regExp),
                      ],
                      controller: _controlers[1],
                      textAlignVertical: TextAlignVertical.center,
                      decoration: const InputDecoration(
                        contentPadding: EdgeInsets.symmetric(
                            vertical: 4.0, horizontal: 1.0),
                        border: OutlineInputBorder(),
                        hintText: '',
                        fillColor: Colors.grey,
                        filled: true,

                        /// 让文字垂直居中
                        isCollapsed: true,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text(
                    'C4AF',
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    width: 150,
                    child: TextField(
                      keyboardType:
                      const TextInputType.numberWithOptions(decimal: true),
                      inputFormatters: [
                        FilteringTextInputFormatter.allow(regExp),
                      ],
                      controller: _controlers[2],
                      textAlignVertical: TextAlignVertical.center,
                      decoration: const InputDecoration(
                        contentPadding: EdgeInsets.symmetric(
                            vertical: 4.0, horizontal: 1.0),
                        border: OutlineInputBorder(),
                        hintText: '',
                        fillColor: Colors.grey,
                        filled: true,

                        /// 让文字垂直居中
                        isCollapsed: true,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text(
                    'C3A',
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    width: 150,
                    child: TextField(
                      keyboardType:
                      const TextInputType.numberWithOptions(decimal: true),
                      inputFormatters: [
                        FilteringTextInputFormatter.allow(regExp),
                      ],
                      controller: _controlers[3],
                      textAlignVertical: TextAlignVertical.center,
                      decoration: const InputDecoration(
                        contentPadding: EdgeInsets.symmetric(
                            vertical: 4.0, horizontal: 1.0),
                        border: OutlineInputBorder(),
                        hintText: '',
                        fillColor: Colors.grey,
                        filled: true,

                        /// 让文字垂直居中
                        isCollapsed: true,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text(
                    'C4A3',
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    width: 150,
                    child: TextField(
                      keyboardType:
                      const TextInputType.numberWithOptions(decimal: true),
                      inputFormatters: [
                        FilteringTextInputFormatter.allow(regExp),
                      ],
                      controller: _controlers[4],
                      textAlignVertical: TextAlignVertical.center,
                      decoration: const InputDecoration(
                        contentPadding: EdgeInsets.symmetric(
                            vertical: 4.0, horizontal: 1.0),
                        border: OutlineInputBorder(),
                        hintText: '',
                        fillColor: Colors.grey,
                        filled: true,

                        /// 让文字垂直居中
                        isCollapsed: true,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text(
                    'f-CaO',
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    width: 150,
                    child: TextField(
                      keyboardType:
                      const TextInputType.numberWithOptions(decimal: true),
                      inputFormatters: [
                        FilteringTextInputFormatter.allow(regExp),
                      ],
                      controller: _controlers[5],
                      textAlignVertical: TextAlignVertical.center,
                      decoration: const InputDecoration(
                        contentPadding: EdgeInsets.symmetric(
                            vertical: 4.0, horizontal: 1.0),
                        border: OutlineInputBorder(),
                        hintText: '',
                        fillColor: Colors.grey,
                        filled: true,

                        /// 让文字垂直居中
                        isCollapsed: true,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text(
                    'CaSO4',
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    width: 150,
                    child: TextField(
                      keyboardType:
                      const TextInputType.numberWithOptions(decimal: true),
                      inputFormatters: [
                        FilteringTextInputFormatter.allow(regExp),
                      ],
                      controller: _controlers[6],
                      textAlignVertical: TextAlignVertical.center,
                      decoration: const InputDecoration(
                        contentPadding: EdgeInsets.symmetric(
                            vertical: 4.0, horizontal: 1.0),
                        border: OutlineInputBorder(),
                        hintText: '',
                        fillColor: Colors.grey,
                        filled: true,

                        /// 让文字垂直居中
                        isCollapsed: true,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text(
                    'MgO',
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    width: 150,
                    child: TextField(
                      keyboardType:
                      const TextInputType.numberWithOptions(decimal: true),
                      inputFormatters: [
                        FilteringTextInputFormatter.allow(regExp),
                      ],
                      controller: _controlers[7],
                      textAlignVertical: TextAlignVertical.center,
                      decoration: const InputDecoration(
                        contentPadding: EdgeInsets.symmetric(
                            vertical: 4.0, horizontal: 1.0),
                        border: OutlineInputBorder(),
                        hintText: '',
                        fillColor: Colors.grey,
                        filled: true,

                        /// 让文字垂直居中
                        isCollapsed: true,
                      ),
                    ),
                  ),
                ],
              ),

              SizedBox(
                height: 15,
              ),
              ElevatedButton(
                onPressed: save,
                style: ButtonStyle(
                    backgroundColor:
                    MaterialStatePropertyAll<Color>(Colors.blue)),
                child: Text("保存"),
              ),
              SizedBox(
                height: 15,
              ),
              ElevatedButton(
                onPressed: getValue,
                style: ButtonStyle(
                    backgroundColor:
                    MaterialStatePropertyAll<Color>(Colors.blue)),
                child: Text("获取"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// 保存当前页面值
void save() {
  bool isFiledFill = true;
  // 判断是否完成填写，避免为空
  for (var element in _controlers) {
    if (element.text.isEmpty) {
      Utils.showToast(myContext!, "参数为填写，请先填写参数");
      isFiledFill = false;
      break;
    }
  }
  // 结束
  if (!isFiledFill) return;
  try {
    //SystemOptionBean systemOptionBean = SystemOptionBean(double.parse(_controlers[0].text),... 这行代码中，
    //您创建了一个 SystemOptionBean 类型的对象 systemOptionBean，并将 _controlers 列表中前八个文本编辑控制器的文本内容转换为 double 类型
    // ，作为 SystemOptionBean 对象的属性值。

    SystemOptionBean1 systemOptionBean1 = SystemOptionBean1(
      double.parse(_controlers[0].text),
      double.parse(_controlers[1].text),
      double.parse(_controlers[2].text),
      double.parse(_controlers[3].text),
      double.parse(_controlers[4].text),
      double.parse(_controlers[5].text),
      double.parse(_controlers[6].text),
      double.parse(_controlers[7].text),
    );
    //DataProvider的setSystemOptionBean方法，将systemOptionBean对象作为参数传入。
    DataProvider?.setSystemOptionBean1(systemOptionBean1);
  } catch (e) {
    // 处理异常的代码
    print('Error: $e');
  }
  Utils.showToast(myContext!, "保存成功");
}

void getValue() {
  String message =
  (DataProvider?.getSystemOptionBean() as SystemOptionBean1).toString();
  Utils.showToast(myContext!, message);
}