
import 'dart:ffi';

import '../beans/system_optionbean.dart';
import '../beans/system_option_new_a_bean.dart';
import '../beans/system_option_new_b_bean.dart';
import '../beans/system_option_new_c_bean.dart';
import '../beans/system_option_new_d_bean.dart';
import '../beans/system_option_new_e_bean.dart';
import '../beans/system_option_new_f_bean.dart';
import '../beans/system_option_new_g_bean.dart';
import '../beans/system_option_new_h_bean.dart';
import '../beans/system_option_new_i_bean.dart';
import '../beans/system_option_new_l_bean.dart';

class DataProvider {
  //这个变量是一个静态的DataProvider类型的变量，用于存储DataProvider类的一个实例。
  static DataProvider? _instance;

  //获取设置页面临时缓存数据，在app退出之后就失效
  late SystemOptionBean bean;

  // 系统设置-参数设置
  ////这行代码声明了一个名为 "systemOptionBean" 的变量，该变量类型为 "SystemOptionBean"。
  SystemOptionBean? systemOptionBean;

  SystemOptionBean1? systemOptionBean1; //水泥矿物组成
  SystemOptionBean2? systemOptionBean2; //水泥熟料，石膏，矿渣含量
  SystemOptionBean3? systemOptionBean3; //生料含量基本信息数据实体
  SystemOptionBean4? systemOptionBean4; //生料运输基本信息数据实体
  SystemOptionBean5? systemOptionBean5; //生料粉磨基本信息数据实体
  SystemOptionBean6? systemOptionBean6; //熟料运输基本信息数据实体
  SystemOptionBean7? systemOptionBean7; //燃烧设备基本信息数据实体
  SystemOptionBean8? systemOptionBean8; //冷却设备基本信息数据实体
  SystemOptionBean9? systemOptionBean9; //燃烧种类基本信息数据实体
  SystemOptionBean10? systemOptionBean10; //替代燃烧基本信息数据实体
  SystemOptionBean11? systemOptionBean11; //燃料粉磨基本信息数据实体

  //计算生料质量所需中间数据
  double Mshihuishi = 0.0;
  double Mniantu = 0.0;
  double Mshayan = 0.0;
  double Mshigao = 0.0;
  double Mtiefen = 0.0;
  double  Mshengliao = 0.0;

  double Mraw = 0.0;

  double MCaCO3 = 0.0;
  double MMgCO3 = 0.0;
  double MSiO2 = 0.0;
  double MAl2O3 = 0.0;
  double MFe2O3 = 0.0;
  double MCaSO4_2H2O = 0.0;

  int cement = 0;
  int CaCO3= 0;
  int MgCO3= 0;
  int iED2= 0;
  int rawExploit= 0;
  int rawTransport= 0;
  int fuel= 0;
  int electric= 0;
  int rawMill= 0;
  int fuelCrush= 0;
  int burn= 0;
  int transmit= 0;
  int cool= 0;
  int cementmill= 0;
  //熟料质量
  double Mclinker = 0.0;

  //CaCO3排放量
  double ECaCO3 = 0.0;

  //MgCO3排放量
  double EMgCO3 = 0.0;

  //生料分解排碳
  double Edecomposition = 0.0;

  //生料开采碳排放量
  double ErawExploit = 0.0;

  //生料运输碳排放量
  double ErawTransport = 0.0;

  //生料粉磨碳排放量
  double ErawMill = 0.0;

  //熟料形成热与其子数据
  double Qclinker = 0.0;
  double Q1 = 0.0;
  double Q2 = 0.0;
  double Q3 = 0.0;
  double Q4 = 0.0;
  double Q5 = 0.0;
  double Q6 = 0.0;
  double QH2O = 0.0;
  double Qliquid = 0.0;
  double Qmineral = 0.0; //不知道怎么算
  //燃料燃烧碳排放与其子数据
  double Qfuel = 0.0;
  double Qraw = 0.0;
  double Qair = 0.0;
  double QCO2 = 0.0;
  double Qcool = 0.0;
  double Qkiln = 0.0;
  double Mfuel = 0.0;
  double Craw = 0.0;
  double u = 0.0; //燃料含碳率
  double W = 0.0; //生料含水率
  double q = 0.0; //燃料热值
  double diwei = 0.0;
  double Wf = 0.0; //燃料含水率 先设为0
  double Efuel = 0.0; //燃料燃烧排碳
  //燃料粉磨排碳
  double EfuelCrush = 0.0;


  //熟料，石膏，ESCMs运输碳排放
  double Etransmit = 0.0;

  //水泥粉磨与其子数据
  double Mplaster = 0.0;
  double Ecementmill = 0.0;

  //熟料冷却
  double Ecool = 0.0;

  //熟料煅烧
  double Eburn = 0.0;

  //燃料燃烧总量
  double ED2 = 0.0;

  //最终结果
  double Ecement = 0.0;

  //电能消耗总量
  double Eelectric = 0.0;

  //计算CaCO3碳排放的方法
  DataProvider? get_ECgCO3() {
    if (systemOptionBean1 != null) {
      MCaCO3 = (systemOptionBean1!.C2S * 1.163 +
              systemOptionBean1!.C3S * 1.316 +
              systemOptionBean1!.C4AF * 0.823 +
              systemOptionBean1!.C3A * 1.111 +
              systemOptionBean1!.C4A3 * 0.656 +
              systemOptionBean1!.fCaO * 1.786) *
          10 * systemOptionBean2!.clinker * 0.01; //所需CaCO3质量
      ECaCO3 = MCaCO3 * 0.44 ; //CaCO3排放量
    }
    //函数返回this，表示返回当前对象。
    return this;
  }

  //计算MgCO3碳排放的方法
  DataProvider? get_EMgCO3() {
    MMgCO3 = (systemOptionBean1!.MgO * 84 / 40) * 10 *  systemOptionBean2!.clinker * 0.01; //所需CaCO3质量
    EMgCO3 = MMgCO3 * 0.5238; //CaCO3排放量
    return this;
  }

  //计算生料开采碳排放量
  DataProvider? get_ErawExploit() {
    MCaCO3 = (systemOptionBean1!.C2S * 1.163 +
        systemOptionBean1!.C3S * 1.316 +
        systemOptionBean1!.C4AF * 0.823 +
        systemOptionBean1!.C3A * 1.111 +
        systemOptionBean1!.C4A3 * 0.656 +
        systemOptionBean1!.fCaO * 1.786) *
        10 * systemOptionBean2!.clinker * 0.01; //所需CaCO3质量
    MSiO2 = (systemOptionBean1!.C2S * 0.349 + systemOptionBean1!.C3S * 0.263) *
        10*systemOptionBean2!.clinker * 0.01;
    //所需Al2O3质量(kg)
    MAl2O3 = (systemOptionBean1!.C4AF * 0.21 +
        systemOptionBean1!.C3A * 0.378 +
        systemOptionBean1!.C4A3 * 0.502) *
        10*systemOptionBean2!.clinker * 0.01;
    //所需Fe2O3质量(kg)
    MFe2O3 = (systemOptionBean1!.C4AF * 160 / 486) * 10*systemOptionBean2!.clinker * 0.01;
    //所需生料质量(kg)
    MCaSO4_2H2O = (systemOptionBean1!.CaSO4*204/168+systemOptionBean1!.C4A3*204/610)*10*systemOptionBean2!.clinker * 0.01;

    Mraw = (MCaCO3 + MMgCO3 + MSiO2 + MAl2O3 + MFe2O3 + MCaSO4_2H2O)  ;
    //所需矿物质量
    Mshihuishi = MCaCO3/systemOptionBean3!.mineralContent4*100* 56/100/1000;
    Mniantu = 0.0/1000;
    Mshayan = MSiO2/systemOptionBean3!.mineralContent2*100/1000;
    Mshigao = 10 * systemOptionBean2!.plaster / systemOptionBean3!.mineralContent1 *100/1000;
    Mtiefen = MFe2O3/systemOptionBean3!.mineralContent0*100/1000     *systemOptionBean2!.clinker/100;


    ErawExploit = (Mtiefen *  9.09 * 0.1  * 1000 +
        Mshigao *   1.38 * 0.1  * 1000 +
        Mshayan * 1.42 * 0.01   * 1000 +
        Mshihuishi *  1.72 *  0.01  * 1000 );
    return this;
  }

  DataProvider? get_ErawTransport() {
    ErawTransport = (Mtiefen / 100 *
                    systemOptionBean4!.qiyou_Fe +
        Mniantu / 100  *
                    systemOptionBean4!.qiyou_niantu +
        Mshayan / 100  *
                    systemOptionBean4!.qiyou_shayan +
        Mshigao / 100  *
                    systemOptionBean4!.qiyou_shiago +
        Mshihuishi / 100  *
                    systemOptionBean4!.qiyou_shihuishi) *
            22.8 +
        (Mtiefen / 100 *
            systemOptionBean4!.chaiyou_Fe +
            Mniantu / 100 *
                    systemOptionBean4!.chaiyou_niantu +
            Mshayan / 100 *
                    systemOptionBean4!.chaiyou_shayan +
            Mshigao / 100 *
                    systemOptionBean4!.chaiyou_shiago +
            Mshihuishi / 100 *
                    systemOptionBean4!.chaiyou_shihuishi) *
            19.5;
    return this;
  }

  DataProvider? get_ErawMill() {
    //所需矿物质量

        //systemOptionBean!.ElectricityCo2EmissionFactorvar1;

    return this;
  }

  DataProvider? get_Ecementmill() {
    Mclinker = systemOptionBean2!.clinker/100;
    Mplaster = systemOptionBean2!.plaster/100;
    Ecementmill =
        (Mclinker *
            systemOptionBean11!.yinyaji_kw /
            systemOptionBean11!.yinyaji_product ) +
        (Mplaster *
            systemOptionBean4!.shihuishipocuiji_kw /
            systemOptionBean4!.shihuishipocuiji_product ) +
        (1 *
            (systemOptionBean11!.xuanfenji_kw /
            systemOptionBean11!.xuanfenji_product  +
            systemOptionBean11!.shuinimo_kw /
            systemOptionBean11!.shuinimo_product
                ))*0.581;

    return this;
  }

  DataProvider? get_Qclinker_and_Fuel() {
    MCaCO3 = (systemOptionBean1!.C2S * 1.163 +
        systemOptionBean1!.C3S * 1.316 +
        systemOptionBean1!.C4AF * 0.823 +
        systemOptionBean1!.C3A * 1.111 +
        systemOptionBean1!.C4A3 * 0.656 +
        systemOptionBean1!.fCaO * 1.786) *
        10 * systemOptionBean2!.clinker * 0.01; //所需CaCO3质量

    MSiO2 = (systemOptionBean1!.C2S * 0.349 + systemOptionBean1!.C3S * 0.263) *
    10 * systemOptionBean2!.clinker * 0.01 ;

    MAl2O3 = (systemOptionBean1!.C4AF * 0.21 +
        systemOptionBean1!.C3A * 0.378 +
        systemOptionBean1!.C4A3 * 0.502) *
        10 * systemOptionBean2!.clinker * 0.01;

    MFe2O3 = (systemOptionBean1!.C4AF * 160 / 486) * 10  * systemOptionBean2!.clinker * 0.01;

    MCaSO4_2H2O = (systemOptionBean1!.CaSO4*204/168+systemOptionBean1!.C4A3*204/610)*10
        * systemOptionBean2!.clinker * 0.01;

    MMgCO3 = (systemOptionBean1!.MgO * 84 / 40) * 10 *  systemOptionBean2!.clinker * 0.01; //所需CaCO3质量

    Mraw = (MCaCO3 + MMgCO3 + MSiO2 + MAl2O3 + MFe2O3 + MCaSO4_2H2O);

    EMgCO3 = MMgCO3 * 0.5238;

    ECaCO3 = MCaCO3 * 0.44 ;


    Mshihuishi = MCaCO3/systemOptionBean3!.mineralContent4*100* 56/100/1000;
    Mniantu = 0.0/1000;
    Mshayan = MSiO2/systemOptionBean3!.mineralContent2*100/1000;
    Mshigao = 10 * systemOptionBean2!.plaster / systemOptionBean3!.mineralContent1 *100/1000;
    Mtiefen = MFe2O3/systemOptionBean3!.mineralContent0*100/1000     *systemOptionBean2!.clinker/100;

    Mshengliao = Mshihuishi + Mshayan + Mtiefen + Mshigao + Mniantu;

    //生料粉磨
    ErawMill = ((Mshihuishi + Mshayan ) * (systemOptionBean4!.fencuiji_kw/systemOptionBean4!.fencuiji_product) +
        (Mshihuishi + Mshayan + Mtiefen) * (systemOptionBean4!.shengliaomo_kw/systemOptionBean4!.shengliaomo_product) +
        (Mshihuishi + Mshayan + Mtiefen) * (systemOptionBean4!.fencuiji_kw/systemOptionBean4!.fencuiji_product)
    ) * 0.581 ;

     Qliquid = 0.0;

     Edecomposition = EMgCO3 + ECaCO3;

     Mclinker = 1000 * systemOptionBean2!.clinker;

     Q1 = (Mraw)* systemOptionBean!.C_raw_450 * (450 - systemOptionBean!.t0);
     Q2 = (Mraw - MAl2O3 * 36 / 102 - MCaSO4_2H2O * 36 / 204) *
         systemOptionBean!.C_raw_450_900 *
         (900 - 450);
     Q3 = (Mraw - MAl2O3 * 36 / 102 - MCaSO4_2H2O * 36 / 204 - Edecomposition) *
         systemOptionBean!.C_raw_900 *
         (systemOptionBean!.t - 900);
    Q4 = Mclinker *
        systemOptionBean!.Chu_lengqueji_shuliao * 0.01 *
        (systemOptionBean!.t - systemOptionBean!.t0);
     Q5 = Edecomposition *
         systemOptionBean!.CshiwenCO2 *
         (900 -systemOptionBean!.t0);
     Q6 = (MAl2O3 * 36 / 102 + MCaSO4_2H2O * 36 / 204) *
         (systemOptionBean!.C_H2O_450 * (450 - systemOptionBean!.t0) +
             systemOptionBean!.qH2O);
     QH2O = (MAl2O3 * 36 / 102 * systemOptionBean!.ReferenceValuevar6 +
         MCaSO4_2H2O * 36 / 204 * systemOptionBean!.ReferenceValuevar7);
     Qclinker = Q1 + Q2 + Q3 + Qliquid + Qmineral + QH2O - Q4 - Q5 - Q6;



    // if (systemOptionBean8!.type == 0) {
    //   u = 19.570 * 26.1 * 0.001 * 0.98;
    //   q = 26.1 * 0.001;//燃料热值
    // }
    // if (systemOptionBean8!.type == 1) {
    //   u = 26.7 * 27.4 * 0.001 * 0.98;
    //   q = 27.4 * 0.001;
    // }
    // if (systemOptionBean8!.type == 2) {
    //   u = 19.570 * 26.1 * 0.001 * 0.95;
    //   q = 26.1 * 0.001;
    // }
    // if (systemOptionBean8!.type == 3) {
    //   u = 43.07 * 18.9 * 0.001 * 0.99;
    //   q = 18.9 * 0.001;
    // }
    // if (systemOptionBean8!.type == 4) {
    //   u = 42.652 * 20.2 * 0.001 * 0.99;
    //   q = 20.2 * 0.001;
    // }
    // if (systemOptionBean8!.type == 5) {
    //   u = 44.2 * 17.3 * 0.001 * 0.995;
    //   q = 17.3 * 0.001;
    // }
    // if (systemOptionBean8!.type == 6) {
    //   u = 44.2 * 17.2 * 0.001 * 0.98;
    //   q = 17.2 * 0.001;
    // }
    //
    // if (systemOptionBean9!.type == 0) {
    //   u = 40.2 * 0.074 * 12 / 44;
    //   q = 0.074 * 12 / 44; //默认碳氧化率为1
    // }
    // if (systemOptionBean9!.type == 1) {
    //   u = 50.8 * 0.075 * 12 / 44;
    //   q = 0.075 * 12 / 44;
    // }
    // if (systemOptionBean9!.type == 2) {
    //   u = 29 * 0.11 * 12 / 44;
    //   q = 0.11 * 12 / 44;
    // }
    // if (systemOptionBean9!.type == 3) {
    //   u = 15.6 * 0.11 * 12 / 44;
    //   q = 0.11 * 12 / 44;
    // }
    // if (systemOptionBean9!.type == 4) {
    //   u = 11.6 * 0.1 * 12 / 44;
    //   q = 0.1 * 12 / 44;
    // }
    // if (systemOptionBean9!.type == 5) {
    //   u = 11.6 * 0.11 * 12 / 44;
    //   q = 0.11 * 12 / 44;
    // }


    //调试参数
    u = 19.570 *0.0261 * 0.98;//燃料含碳率
    q = 26.1 * 0.001;//燃料热值(单位热值含碳量)
    diwei = 19.570;
    Wf = 0.01;


    Craw = (0.88 + 2.93 * 0.0001 * systemOptionBean!.t0) * (1 - W) + 4.1816 * W; //wei

    Qraw = Mraw * Craw * systemOptionBean!.t0; //wei
    Qcool  = 10 * systemOptionBean2!.clinker *
        systemOptionBean!.Chu_lengqueji_shuliao *
        systemOptionBean!.T_Chu_lengqueji_shuliao;
    QCO2 = (MCaCO3 * 44 / 100  + MMgCO3 * 44 / 84 ) *
        systemOptionBean!.C_CO2_chuyureji *
        systemOptionBean!.T_CO2_chuyureji;
    Qkiln = systemOptionBean!.ReferenceValuevar1 *1000;


    Mfuel = (Qclinker + Qcool - Qraw + QCO2 + Qkiln ) /
        (                               diwei * 1000 * (1 - Wf)     +
                         u * 32 / 12 * systemOptionBean!.t0 * systemOptionBean!.CshiwenO2                                              );

    Efuel = 44 / 12 * u * Mfuel;
//总量

    ED2 = Efuel + ErawExploit + ErawTransport;

//燃料粉磨

    EfuelCrush = (systemOptionBean10!.meimo_kw *
            Mfuel /

            systemOptionBean10!.meimo_product *
            systemOptionBean!.ElectricityCo2EmissionFactorvar1 +

        systemOptionBean10!.xuanfenji_kw *

            Mfuel /
            systemOptionBean10!.xuanfenji_product *
            systemOptionBean!.ElectricityCo2EmissionFactorvar1)/100;
//孰料运输
    Etransmit = (systemOptionBean5!.ruyao_kw  /
            systemOptionBean5!.ruyao_product *
        0.581
            //systemOptionBean!.ElectricityCo2EmissionFactorvar1
        +
        systemOptionBean5!.pidai_kw  /
            systemOptionBean5!.pidai_product *
            0.581) * systemOptionBean2!.clinker/100;
    ;
    //systemOptionBean!.ElectricityCo2EmissionFactorvar1;
//熟料冷却
    Ecool = (
            systemOptionBean7!.meimo_kw /
            systemOptionBean7!.meimo_product *
            systemOptionBean!.ElectricityCo2EmissionFactorvar1 )
        *   Mfuel / 100

        +

        (systemOptionBean7!.lengyue_kw /
            systemOptionBean7!.lengyue_product *
            systemOptionBean!.ElectricityCo2EmissionFactorvar1 +

            systemOptionBean7!.yaoweiagowen_kw /
            systemOptionBean7!.yaoweigaowen_product *
            systemOptionBean!.ElectricityCo2EmissionFactorvar1 +

            systemOptionBean7!.yaoweifeiqi_kw /
            systemOptionBean7!.yaoweifeiqi_product *
            systemOptionBean!.ElectricityCo2EmissionFactorvar1 +

            systemOptionBean7!.yici_kw /
            systemOptionBean7!.yici_product *
            systemOptionBean!.ElectricityCo2EmissionFactorvar1

    )   * systemOptionBean2!.clinker/100
    ;
//熟料煅烧
    Eburn = systemOptionBean2!.clinker  /100*
        systemOptionBean6!.huizhuan_kw /
        systemOptionBean6!.huizhuan_product *
    0.581
        //systemOptionBean!.ElectricityCo2EmissionFactorvar1
    ;

    Eelectric = Ecementmill + Etransmit + ErawMill + EfuelCrush + Eburn + Ecool;

    //我最后修改的地方
    Ecement = get_ECgCO3()!.ECaCO3 +
        EMgCO3 +
        Ecementmill +
        Efuel +
        EfuelCrush +
        ErawMill +
        ErawTransport +
        ErawExploit +
        Etransmit +
        Ecool +
        Eburn;



    return this;

  }
  // 系统设置页计算结果
  //static double computeSettingData(){
  //double sum = 0.0;
  // 获取设置页面临时缓存数据，在app退出之后就失效
  //SystemOptionBean bean =
  //(DataProvider?.getSystemOptionBean() as SystemOptionBean);
  // 判断设置页面是否填写(简单判断，如果需要更精准判断，就加一个全局标记类)
  //if (bean == null) showToast("设置页数据尚未输入，请输入后开始计算");
  // 通过获取的临时缓存数据对象计算结果,此处为案例计算，实际以算法为准
  //sum = 0;
  // 返回此阶段中间计算值，根据实际情况使用
  //return sum;
  //}

//是一个静态方法，用于获取DataProvider类的实例。
//当这个方法第一次被调用时，如果_instance还没有被初始化，那么它会创建一个新的DataProvider实例并将其赋值给_instance。
//这样，当getInstance()被多次调用时，它总是返回同一个DataProvider实例。
  static DataProvider? getInstance() {
    _instance ??= new DataProvider();
    return _instance;
  }

  //这个方法接受一个SystemOptionBean类型的参数systemOptionBean0，
  //然后使用getInstance()方法获取当前类的实例，并设置该实例的systemOptionBean属性为传入的参数。
  static void setSystemOptionBean(SystemOptionBean systemOptionBean0) {
    getInstance()?.systemOptionBean = systemOptionBean0;
  }

  static void setSystemOptionBean1(SystemOptionBean1 systemOptionBean0) {
    getInstance()?.systemOptionBean1 = systemOptionBean0;
  }

  static void setSystemOptionBean2(SystemOptionBean2 systemOptionBean0) {
    getInstance()?.systemOptionBean2 = systemOptionBean0;
  }

  //在静态方法中设置一个名为"optionBean2"的变量。”o“是将变量初始化
  static void setSystemOptionBean3(SystemOptionBean3 systemOptionBean0) {
    getInstance()?.systemOptionBean3 = systemOptionBean0;
  }

  static void setSystemOptionBean4(SystemOptionBean4 systemOptionBean0) {
    getInstance()?.systemOptionBean4 = systemOptionBean0;
  }

  static void setSystemOptionBean5(SystemOptionBean5 systemOptionBean0) {
    getInstance()?.systemOptionBean5 = systemOptionBean0;
  }

  static void setSystemOptionBean6(SystemOptionBean6 systemOptionBean0) {
    getInstance()?.systemOptionBean6 = systemOptionBean0;
  }

  static void setSystemOptionBean7(SystemOptionBean7 systemOptionBean0) {
    getInstance()?.systemOptionBean7 = systemOptionBean0;
  }

  static void setSystemOptionBean8(SystemOptionBean8 systemOptionBean0) {
    getInstance()?.systemOptionBean8 = systemOptionBean0;
  }

  static void setSystemOptionBean9(SystemOptionBean9 systemOptionBean0) {
    getInstance()?.systemOptionBean9 = systemOptionBean0;
  }

  static void setSystemOptionBean10(SystemOptionBean10 systemOptionBean0) {
    getInstance()?.systemOptionBean10 = systemOptionBean0;
  }

  static void setSystemOptionBean11(SystemOptionBean11 systemOptionBean0) {
    getInstance()?.systemOptionBean11 = systemOptionBean0;
  }

//定义一个静态方法getSystemOptionBean，该方法用于获取SystemOptionBean类的一个实例。
  static SystemOptionBean? getSystemOptionBean() {
    return getInstance()?.systemOptionBean;
  }

  static SystemOptionBean1? getSystemOptionBean1() {
    return getInstance()?.systemOptionBean1;
  }

  static SystemOptionBean2? getSystemOptionBean2() {
    return getInstance()?.systemOptionBean2;
  }

//通过getInstance()获取类的实例，然后设置或获取该实例的optionBean2属性。
  static SystemOptionBean3? getSystemOptionBean3() {
    return getInstance()?.systemOptionBean3;
  }

  static SystemOptionBean4? getSystemOptionBean4() {
    return getInstance()?.systemOptionBean4;
  }

  static SystemOptionBean5? getSystemOptionBean5() {
    return getInstance()?.systemOptionBean5;
  }

  static SystemOptionBean6? getSystemOptionBean6() {
    return getInstance()?.systemOptionBean6;
  }

  static SystemOptionBean7? getSystemOptionBean7() {
    return getInstance()?.systemOptionBean7;
  }

  static SystemOptionBean8? getSystemOptionBean8() {
    return getInstance()?.systemOptionBean8;
  }

  static SystemOptionBean9? getSystemOptionBean9() {
    return getInstance()?.systemOptionBean9;
  }

  static SystemOptionBean10? getSystemOptionBean10() {
    return getInstance()?.systemOptionBean10;
  }

  static SystemOptionBean11? getSystemOptionBean11() {
    return getInstance()?.systemOptionBean11;
  }
}
