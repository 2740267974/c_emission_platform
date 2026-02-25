import 'package:CEP/common/data_provider.dart';

class Compute {
  static double computeFun() {
    double sum = 0.0;
    sum = (DataProvider.getInstance()!
            .systemOptionBean
            !.CO2EmissionFactorOfFuelvar1 +
        DataProvider.getInstance()!
            .systemOptionBean
            !.CO2EmissionFactorOfFuelvar2)!;
    return sum;
  }
}
