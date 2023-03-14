import 'package:flutter/material.dart';
import 'package:mycart/controller/detailesconroler.dart';
import 'package:mycart/core/app_color.dart';
import 'package:mycart/view/screens/shocart.dart';
import 'package:get/get.dart';

class detailesscreen extends StatelessWidget {
  detailesscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: detailesproduct(),
    );
  }
}

class detailesproduct extends StatelessWidget {
  final detailescontrollerr controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SafeArea(
        child: Column(children: [
          Text('تفاصيل الطلب', style: Theme.of(context).textTheme.headline3),
          Image.asset(
            'images/s.jpg',
            height: 200,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              ElevatedButton(
                  child: Text('+'),
                  style: ElevatedButton.styleFrom(
                      primary: Appcolor.lightorange,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15, vertical: 8),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10))),
                  onPressed: () {
                    controller.icreament();
                  }),
              Container(
                  padding: EdgeInsets.all(10),
                  child: Text(controller.count.toString())),
              ElevatedButton(
                  child: Text('-'),
                  style: ElevatedButton.styleFrom(
                      primary: Appcolor.lightorange,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15, vertical: 8),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10))),
                  onPressed: () {
                    controller.decreamnt();
                  }),
            ],
          ),
          SizedBox(height: 50),
          Card(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(130)),
            elevation: 7,
            shadowColor: Appcolor.lightorange,
            child: Padding(
              padding: const EdgeInsets.only(left: 70),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ListTile(
                    leading: CircleAvatar(child: Image.asset('images/s.jpg')),
                    title: Text(
                      'عبدالله هادي مولى الدويلة',
                      style: Theme.of(context).textTheme.headline1,
                    ),
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.location_pin,
                    ),
                    title: Text(('فوة المتضررين'),
                        style: Theme.of(context).textTheme.headline1),
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.phone,
                    ),
                    title: Text('  رقم الجوال ',
                        style: Theme.of(context).textTheme.headline1),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 20),
          Stack(
            children: [
              Container(
                child: null,
                height: 180,
                width: 150,
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(50),
                        bottomRight: Radius.circular(50)),
                    color: Colors.orange),
              ),
              SizedBox(height: 10),
              Container(
                height: 130,
                width: 400,
                margin: EdgeInsets.all(20),
                padding: EdgeInsets.only(left: 40, right: 5),
                child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          bottomLeft: Radius.circular(30))),
                  elevation: 7,
                  shadowColor: Appcolor.lightorange,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(height: 20),
                      Text('السعر الاجمالي 120000 ',
                          style: Theme.of(context).textTheme.headline1),
                      ElevatedButton.icon(
                          icon: Icon((Icons.shop)),
                          label: Text('اضافة ال السلة',
                              style: Theme.of(context).textTheme.headline1),
                          style: ElevatedButton.styleFrom(
                              primary: Appcolor.lightorange,
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 45, vertical: 10),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10))),
                          onPressed: () {
                            Get.to(const Cartshopscreen());
                          }),
                    ],
                  ),
                ),
              )
            ],
          )
        ]),
      ),
    );
  }
}
