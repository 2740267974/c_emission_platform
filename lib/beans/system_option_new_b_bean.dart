class SystemOptionBean2{
  //燃料的CO2排放因子
  //燃料类型
  double clinker;
  double plaster;
  double mineral;

  SystemOptionBean2(
      this.clinker,
      this.plaster,
      this.mineral,);


  @override
  //toString()方法，用于将类的信息以字符串形式返回。
  String toString() {
  return 'SystemOptionBean2{clinker:$clinker,plaster:$plaster,mineral:$mineral}';
  }
}