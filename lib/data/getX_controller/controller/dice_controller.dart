import 'dart:developer';

import 'package:dicee_app/data/repositories/math_repos.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class DiceController extends GetxController {
  RxInt leftNumber = 2.obs;
  RxInt rightNumber = 5.obs;
  RxInt count = 0.obs;

  void getRandomDice() {
    leftNumber.value = MathRepos.getRandomNumber();
    rightNumber.value = MathRepos.getRandomNumber();
    count.value++;
    log(' leftNumber.value ${leftNumber.value}');
    log(' rightNumber.value  ${rightNumber.value}  ');
  }
}
