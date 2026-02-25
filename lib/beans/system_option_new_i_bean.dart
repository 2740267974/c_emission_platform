
/// 生料相关信息页面数据类
class SystemOptionBean10{
  // 煤磨
  double meimo_kw;
  double meimo_product;

  //选粉机
  double xuanfenji_kw;
  double xuanfenji_product;

  SystemOptionBean10(
      this.meimo_kw,
      this.meimo_product,
      this.xuanfenji_kw,
      this.xuanfenji_product,);

  @override
  String toString() {
    return 'SystemOptionBean10{ meimo_kw: $meimo_kw, '
        'meimo_product: $meimo_product,'
        ' xuanfenji_kw: $xuanfenji_kw,'
        ' xuanfenji_product: $xuanfenji_product }';
  }
}