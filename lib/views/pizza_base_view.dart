import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../constants/image_urls.dart';
import '../controllers/home_page_ctrl.dart';
import 'selection_dialog_views/pizza_base_dialog.dart';

class PizzaBaseView extends StatelessWidget {
  const PizzaBaseView({super.key});

  @override
  Widget build(BuildContext context) {
    HomePageCtrl ctrl = Get.find<HomePageCtrl>();

    return Obx(
      () => ctrl.pizza.value.pizzaBase == null
          ? InkWell(
              onTap: () => ctrl.showElementToChooseDialog(
                context,
                const PizzaBaseSelectionDialog(),
              ),
              child: Ink(
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    DottedBorder(
                      color: Colors.grey.shade400,
                      strokeWidth: 2,
                      borderType: BorderType.Circle,
                      dashPattern: const [6, 8],
                      child: Image.asset(
                        AppImages.bases[1],
                        opacity: const AlwaysStoppedAnimation(.0),
                      ),
                    ),
                    Icon(
                      Icons.add,
                      size: 50,
                      color: Colors.grey.shade400,
                    ),
                  ],
                ),
              ),
            )
          : GestureDetector(
              onTap: () => ctrl.showElementToChooseDialog(
                  context, const PizzaBaseSelectionDialog()),
              child: Image.asset(ctrl.pizza.value.pizzaBase!),
            ),
    );
  }
}
