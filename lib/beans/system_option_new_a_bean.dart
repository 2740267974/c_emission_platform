class SystemOptionBean1{
  //燃料的CO2排放因子
  //燃料类型
  double C2S;
  double C3S;
  double C4AF;
  double C3A;
  double C4A3;
  double fCaO;
  double CaSO4;
  double MgO;

  SystemOptionBean1(
      this.C2S,
      this.C3S,
      this.C4AF,
      this.C3A,
      this.C4A3,
      this.fCaO,
      this.CaSO4,
      this.MgO);


  @override
  //toString()方法，用于将类的信息以字符串形式返回。
  String toString() {
    return 'SystemOptionBean1{C2S:$C2S,C3S:$C3S,C4AF:$C4AF,C3A:$C3A,C4A3:$C4A3,fCaO:$fCaO,CaSO4:$CaSO4,MgO:$MgO}';
  }
}