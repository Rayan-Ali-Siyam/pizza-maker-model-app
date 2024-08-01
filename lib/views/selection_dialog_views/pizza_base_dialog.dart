import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pizza_maker/constants/image_urls.dart';
import 'package:pizza_maker/controllers/home_page_ctrl.dart';
import 'package:pizza_maker/models/pizza_model.dart';
import 'package:pizza_maker/views/constants/selection_dialog.dart';

class PizzaBaseSelectionDialog extends StatelessWidget {
  const PizzaBaseSelectionDialog({super.key});

  @override
  Widget build(BuildContext context) {
    HomePageCtrl ctrl = Get.find<HomePageCtrl>();

    return SelectionDialog(
      pizzaElement: PizzaElement.base,
      buttonImgUrls: AppImages.buttonBases,
      elementImgUrls: AppImages.bases,
      onSelect: ctrl.onSelectBase,
      onCancel: () => ctrl.onCancelBase(),
      onOk: () => ctrl.onOkBase(),
    );
  }
}
