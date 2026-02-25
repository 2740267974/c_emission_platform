

/// 生料相关信息页面数据类
class SystemOptionBean7 {
  // 窑尾高温风机
  double yaoweiagowen_kw;
  double yaoweigaowen_product;

  //一次风机
  double yici_kw;
  double yici_product;

  //窑尾废弃排放机
  double yaoweifeiqi_kw;
  double yaoweifeiqi_product;

  //冷却机
  double lengyue_kw;
  double lengyue_product;

  //皮带输送机
  double meimo_kw;
  double meimo_product;

  SystemOptionBean7(this.yaoweiagowen_kw,
      this.yaoweigaowen_product,
      this.yici_kw,
      this.yici_product,
      this.yaoweifeiqi_kw,
      this.yaoweifeiqi_product,
      this.lengyue_kw,
      this.lengyue_product,
      this.meimo_kw,
      this.meimo_product,);

  @override
  String toString() {
    return 'SystemOptionBean7{yaoweiagowen_kw: $yaoweiagowen_kw, '
        'yaoweigaowen_product: $yaoweigaowen_product,'
        ' yici_kw: $yici_kw,'
        ' yici_product: $yici_product'
        ' yaoweifeiqi_kw:$yaoweifeiqi_kw'
        'yaoweifeiqi_product:$yaoweifeiqi_product'
        'lengyue_kw:$lengyue_kw'
        'lengyue_product:$lengyue_product'
        'meimo_kw:$meimo_kw'
        'meimo_product:$meimo_product}';
  }
}