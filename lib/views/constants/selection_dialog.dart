import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pizza_maker/controllers/home_page_ctrl.dart';
import 'package:pizza_maker/models/pizza_model.dart';

class SelectionDialog extends StatelessWidget {
  const SelectionDialog({
    super.key,
    required this.pizzaElement,
    required this.buttonImgUrls,
    required this.elementImgUrls,
    required this.onSelect,
    required this.onCancel,
    required this.onOk,
  });
  final PizzaElement pizzaElement;
  final List<String> buttonImgUrls;
  final dynamic elementImgUrls;
  final Function onSelect;
  final Function onCancel;
  final Function onOk;

  @override
  Widget build(BuildContext context) {
    HomePageCtrl ctrl = Get.find<HomePageCtrl>();

    return WillPopScope(
      onWillPop: () async {
        onCancel();
        return true;
      },
      child: AlertDialog(
        contentPadding: const EdgeInsets.symmetric(vertical: 14),
        title: Text('Choose your ${pizzaElement.name}:'),
        titlePadding: const EdgeInsets.fromLTRB(16, 24, 24, 0),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            SingleChildScrollView(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  // for (var i = 0; i <= 2; i++)
                  for (String img in buttonImgUrls)
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 6),
                      child: Obx(() {
                        bool isSelected = elementImgUrls.indexOf(
                                ctrl.elementToChoose(pizzaElement) ?? "") ==
                            buttonImgUrls.indexOf(img);

                        return InkWell(
                          borderRadius: BorderRadius.circular(10),
                          onTap: () => onSelect(img),
                          child: Ink(
                            height: 80,
                            width: 80,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: isSelected
                                    ? Colors.blue
                                    : Colors.transparent,
                              ),
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: const [
                                BoxShadow(
                                  color: Colors.black12,
                                  blurRadius: 2,
                                  spreadRadius: 2,
                                )
                              ],
                              image: DecorationImage(
                                image: AssetImage(img),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        );
                      }),
                    ),
                ],
              ),
            ),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () => onCancel(),
            child: const Text(
              "Cancel",
            ),
          ),
          TextButton(
            onPressed: () => onOk(),
            child: const Text(
              "Ok",
            ),
          ),
        ],
      ),
    );
  }
}
