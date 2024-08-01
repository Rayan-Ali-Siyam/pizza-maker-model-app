import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '/controllers/home_page_ctrl.dart';
import '/views/selection_dialog_views/capsicum_dialog.dart';
import 'add_button.dart';

class CapsicumAddButton extends StatelessWidget {
  const CapsicumAddButton({super.key});

  @override
  Widget build(BuildContext context) {
    HomePageCtrl ctrl = Get.find<HomePageCtrl>();

    return AddButton(
      color: Colors.green,
      onPressed: () => ctrl.showElementToChooseDialog(
        context,
        const CapsicumSelectionDialog(),
      ),
    );
  }
}
