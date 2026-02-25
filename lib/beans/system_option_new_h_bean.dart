import 'package:CEP/common/constants.dart';
class SystemOptionBean8{
  // 燃烧种类
  int type;

  SystemOptionBean8(this.type);

  @override
  String toString() {
    return 'systemOptionBean8{type: ${fuelClass[type]},';
  }
}

class SystemOptionBean9{
  // 替代燃烧
  int type;

  SystemOptionBean9(this.type);

  @override
  String toString() {
    return 'systemOptionBean9{type: ${substituteFuel[type]},';
  }
}