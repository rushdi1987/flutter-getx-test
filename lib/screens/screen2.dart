import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:flutter_app_riverpod/class/translation.dart';
import 'package:flutter_app_riverpod/class/controller.dart';

class MyHomePage extends StatelessWidget {
  MyHomePage({Key? key,   required this.title, }) : super(key: key);
  final String title;
  // number variable  to store last state of the count variable from controller.dart
  final number = RxInt(count.value);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(title.tr),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[

              FloatingActionButton(
                onPressed: () => count--,
                tooltip: 'Decrement',
                child: const Icon(Icons.delete),

              ),

            Text(
              'text'.tr,
            ),
            ElevatedButton(
              child: Text('Change locale to Brasil'),
              onPressed: () {
                Get.updateLocale(Locale('pt', 'BR'));
              },
            ),

            const Text(
              'You have pushed the button this many times:',
            ),

            Obx(
              () => Text(
                '$count',
                style: Theme.of(context).textTheme.headline4,
              ),
            ),
            Obx(
                  () => Text(
                '$number',
                style: Theme.of(context).textTheme.headline4,
              ),
            ),
            ElevatedButton(
              child: Text('Change locale to English'),
              onPressed: () {
                Get.updateLocale(Locale('en', 'UK'));
              },
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          count++;
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
       // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
