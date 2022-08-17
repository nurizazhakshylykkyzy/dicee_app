import 'dart:developer';

import 'package:dicee_app/data/getX_controller/controller/dice_controller.dart';
import 'package:dicee_app/widgets/app_bar_widget.dart';
import 'package:dicee_app/widgets/dice_content_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DiceGetXPage extends StatelessWidget {
  DiceGetXPage({Key? key}) : super(key: key);
  DiceController diceController = Get.put(DiceController());
  @override
  Widget build(BuildContext context) {
    log('build ${diceController.count.value}');
    return Scaffold(
        backgroundColor: Colors.amber,
        appBar: const AppBarWidget(),
        body: Obx(() {
          return DiceContentWidget(
            onTap: () => diceController.getRandomDice(),
            leftNumber: diceController.leftNumber.value,
            rightNumber: diceController.rightNumber.value,
          );
        }));
  }
}
