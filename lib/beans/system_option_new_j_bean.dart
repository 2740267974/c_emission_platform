class SystemOptionBean10{
  //燃料的CO2排放因子
  //燃料类型
  double silver_press_kw;
  double silver_press_product;
  double cement_mill_kw;
  double cement_mill_product;
  double choose_powder_kw;
  double choose_powder_product;



  SystemOptionBean10(
      this.silver_press_kw,
      this.silver_press_product,
      this.cement_mill_kw,
      this.cement_mill_product,
      this.choose_powder_kw,
      this.choose_powder_product,

      );


  @override
  //toString()方法，用于将类的信息以字符串形式返回。
  String toString() {
    return 'SystemOptionBean{silver_press_kw:$silver_press_kw,'
        'Coal_mill_product:$silver_press_product,'
        'cement_mill_kw:$cement_mill_kw,'
        'cement_mill_product:$cement_mill_product,'
        'choose_powder_kw:$choose_powder_kw,'
        'choose_powder_product:$choose_powder_product'

    ;

  }
}