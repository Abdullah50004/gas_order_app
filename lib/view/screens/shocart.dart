import 'package:flutter/material.dart';
import 'package:mycart/core/app_color.dart';
import '../../controller/home_controller.dart';
import 'package:get/get.dart';

import 'detalies.dart';

class Cartshopscreen extends StatelessWidget {
  const Cartshopscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('cart')),
      body: cartshop(),
    );
  }
}

class cartshop extends StatelessWidget {
  final controller = Get.find<homecontroller>();

  @override
  Widget build(BuildContext context) {
    return (SafeArea(
      child: Column(children: [
        const SizedBox(height: 9),
        Text('السلة', style: Theme.of(context).textTheme.headline1),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              padding: EdgeInsets.all(15),
              height: 130,
              width: 320,
              child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(70)),
                  elevation: 3,
                  color: Colors.white,
                  child: const ListTile(
                    leading: CircleAvatar(
                      backgroundImage: AssetImage(
                        'images/s.jpg',
                      ),
                    ),
                    title: Text('اسطوانة غاز للاستبدال'),
                    subtitle: Text(
                      ' R.Y 60000',
                      textAlign: TextAlign.left,
                    ),
                  )),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ElevatedButton(
                    child: Text('+'),
                    style: ElevatedButton.styleFrom(
                        primary: Appcolor.lightorange,
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 7),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10))),
                    onPressed: () {
                      controller.icreament();
                    }),
                Container(
                    padding: EdgeInsets.all(3),
                    child: Obx(() => Text(controller.count.toString()))),
                ElevatedButton(
                    child: Text('-'),
                    style: ElevatedButton.styleFrom(
                        primary: Colors.orange,
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 7),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10))),
                    onPressed: () {
                      controller.decreamnt();
                    }),
              ],
            )
          ],
        ),
        Container(
          margin: EdgeInsets.only(top: 100),
          child: ButtonBar(
            children: <Widget>[
              ElevatedButton(
                  child: Text(
                    'توصيل',
                    style: TextStyle(fontSize: 20),
                  ),
                  style: ElevatedButton.styleFrom(
                      primary: Appcolor.lightorange,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 50, vertical: 15),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50))),
                  onPressed: () {
                    /** */
                  }),
              ElevatedButton(
                  child: Text(
                    'طلب حجز',
                    style: TextStyle(fontSize: 20, fontFamily: 'Vazirmatn'),
                  ),
                  style: ElevatedButton.styleFrom(
                      primary: Appcolor.lightorange,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 40, vertical: 15),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50))),
                  onPressed: () {
                    /**/
                  }),
            ],
          ),
        ),
        SizedBox(height: 190),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                child: Text('عمل طلب'),
                style: ElevatedButton.styleFrom(
                    primary: Appcolor.lightorange,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 50, vertical: 15),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50))),
                onPressed: () {
                  /* */
                }),
            SizedBox(width: 50),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'السعر الاجمالي',
                  style: TextStyle(fontSize: 20),
                ),
                Text('R.Y120000', style: TextStyle(fontSize: 20))
              ],
            ),
          ],
        )
      ]),
    ));
  }
}
