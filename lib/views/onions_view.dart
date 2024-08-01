import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pizza_maker/views/constants/add_buttons/onion_add_button.dart';
import 'package:pizza_maker/views/selection_dialog_views/onion_dialog.dart';

import '../controllers/home_page_ctrl.dart';
import 'constants/toppings_view.dart';

class OnionsView extends StatelessWidget {
  const OnionsView({super.key});

  @override
  Widget build(BuildContext context) {
    HomePageCtrl ctrl = Get.find<HomePageCtrl>();

    return Obx(
      () => ctrl.pizza.value.pizzaBase != null
          ? Obx(() {
              return ToppingsView(
                left1: 60,
                top1: 110,
                left2: 120,
                top2: 90,
                top3: 50,
                right3: 100,
                top4: 100,
                right4: 80,
                right5: 50,
                bottom5: 100,
                right6: 120,
                bottom6: 80,
                left7: 100,
                bottom7: 60,
                left8: 90,
                bottom8: 100,
                element: ctrl.pizza.value.onion,
                onElementTap: () => ctrl.showElementToChooseDialog(
                  context,
                  const OnionSelectionDialog(),
                ),
                addButton: const OnionAddButton(),
              );
            })
          : Container(),
    );
  }
}
