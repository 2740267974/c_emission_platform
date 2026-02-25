
/// 生料相关信息页面数据类
class SystemOptionBean11{
  // 银压机
  double yinyaji_kw;
  double yinyaji_product;

  //水泥磨
  double shuinimo_kw;
  double shuinimo_product;

  //选粉机
  double xuanfenji_kw;
  double xuanfenji_product;

  SystemOptionBean11(
      this.yinyaji_kw,
      this.yinyaji_product,
      this.shuinimo_kw,
      this.shuinimo_product,
      this.xuanfenji_kw,
      this.xuanfenji_product);

  @override
  String toString() {
    return 'SystemOptionBean11{ yinyaji_kw: $yinyaji_kw, '
        'yinyaji_product: $yinyaji_product,'
        ' shuinimo_kw: $shuinimo_kw,'
        ' shuinimo_product: $shuinimo_product'
        'xuanfenji_kw:$xuanfenji_kw'
        'xuanfenji_product:$xuanfenji_product }';
  }
}