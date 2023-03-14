import 'package:get/get.dart';

class detailescontrollerr extends GetxController {
  RxInt count = 0.obs;

  void icreament() {
    count++;
  }

  void decreamnt() {
    count--;
  }
}
