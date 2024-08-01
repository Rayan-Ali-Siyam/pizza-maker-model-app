import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pizza_maker/constants/image_urls.dart';
import 'package:pizza_maker/models/pizza_model.dart';

class HomePageCtrl extends GetxController {
  Rx<PizzaModel> pizza = PizzaModel().obs;
  PizzaModel pizzCopy = PizzaModel();

  dynamic elementToChoose(PizzaElement pizzaElement) {
    switch (pizzaElement) {
      case PizzaElement.base:
        return pizza.value.pizzaBase;
      case PizzaElement.onion:
        return pizza.value.onion;
      case PizzaElement.capsicum:
        return pizza.value.capsicum;
      default:
        return pizza.value.meat;
    }
  }

  void onSelectBase(String img) {
    pizza.update((val) {
      val!.pizzaBase = AppImages.bases[AppImages.buttonBases.indexOf(img)];
    });
  }

  void onCancelBase() {
    if (pizzCopy.pizzaBase == null) {
      pizza.update((val) {
        val!.pizzaBase = null;
      });
    } else {
      pizza.update((val) {
        val!.pizzaBase = pizzCopy.pizzaBase;
      });
    }
    Get.back();
  }

  void onOkBase() {
    pizzCopy.pizzaBase = pizza.value.pizzaBase;
    Get.back();
  }

  void onSelectCapsicum(String img) {
    pizza.update((val) {
      val!.capsicum =
          AppImages.capsicumTypes[AppImages.buttonCapsicums.indexOf(img)];
    });
  }

  void onCancelCapsicum() {
    if (pizzCopy.capsicum == null) {
      pizza.update((val) {
        val!.capsicum = null;
      });
    } else {
      pizza.update((val) {
        val!.capsicum = pizzCopy.capsicum;
      });
    }
    Get.back();
  }

  void onOkCapsicum() {
    pizzCopy.capsicum = pizza.value.capsicum;
    Get.back();
  }

  void onSelectOnion(String img) {
    pizza.update((val) {
      val!.onion = AppImages.onionTypes[AppImages.buttonOnions.indexOf(img)];
    });
  }

  void onCancelOnion() {
    if (pizzCopy.onion == null) {
      pizza.update((val) {
        val!.onion = null;
      });
    } else {
      pizza.update((val) {
        val!.onion = pizzCopy.onion;
      });
    }
    Get.back();
  }

  void onOkOnion() {
    pizzCopy.onion = pizza.value.onion;
    Get.back();
  }

  void showElementToChooseDialog(BuildContext context, Widget elementDialog) {
    showDialog(
      context: context,
      builder: (context) {
        return elementDialog;
      },
    );
  }
}
