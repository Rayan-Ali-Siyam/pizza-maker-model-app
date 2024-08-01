import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pizza_maker/constants/image_urls.dart';
import 'package:pizza_maker/controllers/home_page_ctrl.dart';
import 'package:pizza_maker/models/pizza_model.dart';
import 'package:pizza_maker/views/constants/selection_dialog.dart';

class OnionSelectionDialog extends StatelessWidget {
  const OnionSelectionDialog({super.key});

  @override
  Widget build(BuildContext context) {
    HomePageCtrl ctrl = Get.find<HomePageCtrl>();

    return SelectionDialog(
      pizzaElement: PizzaElement.onion,
      buttonImgUrls: AppImages.buttonOnions,
      elementImgUrls: AppImages.onionTypes,
      onSelect: ctrl.onSelectOnion,
      onCancel: ctrl.onCancelOnion,
      onOk: ctrl.onOkOnion,
    );
  }
}
