import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pizza_maker/views/selection_dialog_views/onion_dialog.dart';

import '/controllers/home_page_ctrl.dart';
import 'add_button.dart';

class OnionAddButton extends StatelessWidget {
  const OnionAddButton({super.key});

  @override
  Widget build(BuildContext context) {
    HomePageCtrl ctrl = Get.find<HomePageCtrl>();

    return AddButton(
      color: Colors.red,
      onPressed: () => ctrl.showElementToChooseDialog(
        context,
        const OnionSelectionDialog(),
      ),
    );
  }
}
