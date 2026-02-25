import 'package:CEP/common/constants.dart';

/// 生料基本信息页面数据类
class OptionBean2{
  // 种类
  int type0;
  // 含水率
  double waterPercent0;
  // 矿物含量
  double mineralContent0;

  // 种类
  int type1;
  // 含水率
  double waterPercent1;
  // 矿物含量
  double mineralContent1;


  // 种类
  int type2;
  // 含水率
  double waterPercent2;
  // 矿物含量
  double mineralContent2;

  // 种类
  int type3;
  // 含水率
  double waterPercent3;
  // 矿物含量
  double mineralContent3;

  // 种类
  int type4;
  // 含水率
  double waterPercent4;
  // 矿物含量
  double mineralContent4;

  OptionBean2(
      this.type0,
      this.waterPercent0,
      this.mineralContent0,
      this.type1,
      this.waterPercent1,
      this.mineralContent1,
      this.type2,
      this.waterPercent2,
      this.mineralContent2,
      this.type3,
      this.waterPercent3,
      this.mineralContent3,
      this.type4,
      this.waterPercent4,
      this.mineralContent4);

  @override
  String toString() {
    return 'OptionBean2{type0: $type0, waterPercent0: $waterPercent0, mineralContent0: $mineralContent0, type1: $type1, waterPercent1: $waterPercent1, mineralContent1: $mineralContent1, type2: $type2, waterPercent2: $waterPercent2, mineralContent2: $mineralContent2, type3: $type3, waterPercent3: $waterPercent3, mineralContent3: $mineralContent3, type4: $type4, waterPercent4: $waterPercent4, mineralContent4: $mineralContent4}';
  }
}