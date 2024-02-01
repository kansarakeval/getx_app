import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_app/screen/home/controller/home_controller.dart';
import 'package:getx_app/screen/home/model/product_model.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({super.key});

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  HomeController controller =Get.put(HomeController());
  ProductModel model = Get.arguments;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Second"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Image.network(
                "${model.image}",
                height: 200,
                width: 200,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              "${model.title}",
              style: const TextStyle(color: Colors.orange, fontSize: 20),
            ),
            Text(
              "${model.price}",
              style: const TextStyle(
                  color: Colors.orange,
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              "${model.desc}",
            ),
            const SizedBox(
              height: 20,
            ),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  controller.cartList.add(model);
                  Get.back();
                },
                child: const Text("Cart"),
              ),
            )
          ],
        ),
      ),
    );
  }
}
