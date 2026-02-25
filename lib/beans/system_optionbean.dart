class SystemOptionBean {
  //燃料的CO2排放因子
  //燃料类型
  double CO2EmissionFactorOfFuelvar1;
  double CO2EmissionFactorOfFuelvar2;
  double CO2EmissionFactorOfFuelvar3;
  double CO2EmissionFactorOfFuelvar4;
  double CO2EmissionFactorOfFuelvar5;
  double CO2EmissionFactorOfFuelvar6;
  double CO2EmissionFactorOfFuelvar7;
  //电能Co2排放因子
  double ElectricityCo2EmissionFactorvar1;
  //比热值
  double C_CO2_chuyureji;
  double CshiwenCO2;
  double CshiwenO2;
  double Chu_lengqueji_shuliao;
  double C_raw_450;
  double C_raw_450_900;
  double C_raw_900;
  double C_H2O_450;
  //参考值
  double ReferenceValuevar1;
  double t0;
  double T_CO2_chuyureji;
  double T_Chu_lengqueji_shuliao;
  double ReferenceValuevar5;
  double ReferenceValuevar6;
  double ReferenceValuevar7;
  double qH2O;
  double t;

//这段代码是一个构造函数。它用于创建一个新的SystemOptionBean对象，并设置其所有成员变量。在这个构造函数中，所有的成员变量都被初始化为特定的值。
  SystemOptionBean(
      this.CO2EmissionFactorOfFuelvar1,
      this.CO2EmissionFactorOfFuelvar2,
      this.CO2EmissionFactorOfFuelvar3,
      this.CO2EmissionFactorOfFuelvar4,
      this.CO2EmissionFactorOfFuelvar5,
      this.CO2EmissionFactorOfFuelvar6,
      this.CO2EmissionFactorOfFuelvar7,
      this.ElectricityCo2EmissionFactorvar1,
      this.C_CO2_chuyureji,
      this.CshiwenCO2,
      this.CshiwenO2,
      this.Chu_lengqueji_shuliao,
      this.C_raw_450,
      this.C_raw_450_900,
      this.C_raw_900,
      this.C_H2O_450,
      this.ReferenceValuevar1,
      this.t0,
      this.T_CO2_chuyureji,
      this.T_Chu_lengqueji_shuliao,
      this.ReferenceValuevar5,
      this.ReferenceValuevar6,
      this.ReferenceValuevar7,
      this.qH2O,
      this.t);

  @override
  String toString() {
    return 'SystemOptionBean{CO2EmissionFactorOfFuelvar1: $CO2EmissionFactorOfFuelvar1,'
        ' CO2EmissionFactorOfFuelvar2: $CO2EmissionFactorOfFuelvar2,'
        ' CO2EmissionFactorOfFuelvar3: $CO2EmissionFactorOfFuelvar3,'
        ' CO2EmissionFactorOfFuelvar4: $CO2EmissionFactorOfFuelvar4,'
        ' CO2EmissionFactorOfFuelvar5: $CO2EmissionFactorOfFuelvar5,'
        ' CO2EmissionFactorOfFuelvar6: $CO2EmissionFactorOfFuelvar6,'
        ' CO2EmissionFactorOfFuelvar7: $CO2EmissionFactorOfFuelvar7,'
        ' ElectricityCo2EmissionFactorvar1: $ElectricityCo2EmissionFactorvar1,'
        ' CO2_chuyureji: $C_CO2_chuyureji, '
        'CshiwenCO2: $CshiwenCO2, '
        'CshiwenO2: $CshiwenO2, '
        'SpecificHeatValuevar4: $Chu_lengqueji_shuliao,'
        ' C_raw_450: $C_raw_450, '
        'C_raw_450_900: $C_raw_450_900,'
        ' C_raw_900: $C_raw_900,'
        ' C_H2O_450: $C_H2O_450,'
        ' ReferenceValuevar1: $ReferenceValuevar1,'
        ' t0: $t0,'
        ' T_CO2_chuyureji: $T_CO2_chuyureji,'
        ' T_Chu_lengqueji_shuliao: $T_Chu_lengqueji_shuliao,'
        ' ReferenceValuevar5: $ReferenceValuevar5,'
        ' ReferenceValuevar6: $ReferenceValuevar6,'
        ' ReferenceValuevar7: $ReferenceValuevar7, '
        'qH2O: $qH2O, '
        'ReferenceValuevar9: $t}';
  }
}
