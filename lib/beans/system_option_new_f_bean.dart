

/// 生料相关信息页面数据类
class SystemOptionBean6{
  // 回转窑
  double huizhuan_kw;
  double huizhuan_product;


  SystemOptionBean6(
      this.huizhuan_kw,
      this.huizhuan_product,
);

  @override
  String toString() {
    return 'SystemOptionBean6{ huizhuan_kw: $huizhuan_kw, '
        'huizhuan_product: $huizhuan_product}';
  }
}