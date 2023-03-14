import 'package:get/get.dart';
import '../home_controller.dart';
import '../detailesconroler.dart';

class mybinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => (homecontroller()), fenix: true);
    Get.lazyPut(() => (detailescontrollerr()));
  }
}
