

/// 生料相关信息页面数据类
class SystemOptionBean4{
  // 汽油运输距离
  double qiyou_Fe;
  double qiyou_shiago;
  double qiyou_shayan;
  double qiyou_niantu;
  double qiyou_shihuishi;
  // 柴油运输距离
  double chaiyou_Fe;
  double chaiyou_shiago;
  double chaiyou_shayan;
  double chaiyou_niantu;
  double chaiyou_shihuishi;
  //石灰石破碎机
  double shihuishipocuiji_kw;
  double shihuishipocuiji_product;
  //生料磨
  double shengliaomo_kw;
  double shengliaomo_product;
  //粉碎机
  double fencuiji_kw;
  double fencuiji_product;

  SystemOptionBean4(
      this.qiyou_Fe,
      this.qiyou_shiago,
      this.qiyou_shayan,
      this.qiyou_niantu,
      this.qiyou_shihuishi,
      this.chaiyou_Fe,
      this.chaiyou_shiago,
      this.chaiyou_shayan,
      this.chaiyou_niantu,
      this.chaiyou_shihuishi,
  this.shihuishipocuiji_kw,
  this.shihuishipocuiji_product,
  this.shengliaomo_kw,
      this.shengliaomo_product,
  this.fencuiji_kw,
  this.fencuiji_product,);

  @override
  String toString() {
    return 'SystemOptionBean4{ qiyou_Fe: $qiyou_Fe, '
        'qiyou_shiago: $qiyou_shiago,'
        ' qiyou_shayan: $qiyou_shayan,'
        ' qiyou_niantu: $qiyou_niantu, '
        'qiyou_shihuishi: $qiyou_shihuishi, '
        'chaiyou_Fe: $chaiyou_Fe'
        ',chaiyou_shiago: $chaiyou_shiago,'
        ' chaiyou_shayan: $chaiyou_shayan, '
        'chaiyou_niantu: $chaiyou_niantu,'
        'chaiyou_shihuishi: $chaiyou_shihuishi'
        'shihuishipocuiji_kw:$shihuishipocuiji_kw'
        'shihuishipocuiji_product:$shihuishipocuiji_product'
        'shengliaomo_kw:$shengliaomo_kw'
        'shengliaomo_product:$shengliaomo_product'
        'fencuiji_kw:$fencuiji_kw'
        'fencuiji_product:$fencuiji_product}';
  }
}