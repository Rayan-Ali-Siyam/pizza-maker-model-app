import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pizza_maker/views/selection_dialog_views/capsicum_dialog.dart';

import '../controllers/home_page_ctrl.dart';
import 'constants/add_buttons/capsicum_add_button.dart';
import 'constants/toppings_view.dart';

class CapsicumsView extends StatelessWidget {
  const CapsicumsView({super.key});

  @override
  Widget build(BuildContext context) {
    HomePageCtrl ctrl = Get.find<HomePageCtrl>();

    return Obx(
      () => ctrl.pizza.value.pizzaBase != null
          ? Obx(() {
              return ToppingsView(
                left1: 70,
                top1: 80,
                left2: 140,
                top2: 50,
                top3: 70,
                right3: 70,
                top4: 120,
                right4: 50,
                right5: 80,
                bottom5: 80,
                right6: 140,
                bottom6: 50,
                left7: 70,
                bottom7: 70,
                left8: 50,
                bottom8: 120,
                element: ctrl.pizza.value.capsicum,
                onElementTap: () => ctrl.showElementToChooseDialog(
                  context,
                  const CapsicumSelectionDialog(),
                ),
                addButton: const CapsicumAddButton(),
              );
            })
          : Container(),
    );
  }
}
