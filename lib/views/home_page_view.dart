import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pizza_maker/constants/box_decorations.dart';
import 'package:pizza_maker/controllers/home_page_ctrl.dart';
import 'package:pizza_maker/views/capsicums_view.dart';
import 'package:pizza_maker/views/pizza_base_view.dart';

import 'onions_view.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(HomePageCtrl());

    // HomePageCtrl ctrl = Get.find<HomePageCtrl>();

    return Scaffold(
      appBar: AppBar(
        title: const Text("Pizza Maker"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(
              flex: 16,
              child: Stack(),
            ),
            Expanded(flex: 3, child: Container()),
            Expanded(
              flex: 16,
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 20),
                padding: const EdgeInsets.all(26),
                decoration: AppBoxDecorations.card,
                child: Stack(
                  alignment: Alignment.center,
                  children: const [
                    PizzaBaseView(),
                    CapsicumsView(),
                    OnionsView()
                  ],
                ),
              ),
            ),
            const Spacer(flex: 1),
          ],
        ),
      ),
    );
  }
}
