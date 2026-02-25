

/// 生料基本信息页面数据类
class SystemOptionBean3{
  // 含水率
  double waterPercent0;
  double mineralContent0;
  double waterPercent1;
  double mineralContent1;
  double waterPercent2;
  double mineralContent2;
  double waterPercent3;
  double mineralContent3;
  double waterPercent4;
  double mineralContent4;

  SystemOptionBean3(
      this.waterPercent0,
      this.mineralContent0,
      this.waterPercent1,
      this.mineralContent1,
      this.waterPercent2,
      this.mineralContent2,
      this.waterPercent3,
      this.mineralContent3,
      this.waterPercent4,
      this.mineralContent4);

  @override
  String toString() {
    return 'SystemOptionBean3{ waterPercent0: $waterPercent0, '
        'mineralContent0: $mineralContent0,'
        ' waterPercent1: $waterPercent1,'
        ' mineralContent1: $mineralContent1, '
        'waterPercent2: $waterPercent2, '
        'mineralContent2: $mineralContent2'
        ', waterPercent3: $waterPercent3,'
        ' mineralContent3: $mineralContent3, '
        'waterPercent4: $waterPercent4,'
        'mineralContent4: $mineralContent4}';
  }
}