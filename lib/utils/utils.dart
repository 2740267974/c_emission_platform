import 'package:flutter/cupertino.dart';
import 'package:toast/toast.dart';

class Utils {
  // 在需要显示Toast的位置调用该方法
  static void showToast(BuildContext context, String message) {
    ToastContext().init(context);
    Toast.show(
      message,
      duration: Toast.lengthShort,
      gravity: Toast.center,
    );
  }
}
