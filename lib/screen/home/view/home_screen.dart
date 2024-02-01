import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_app/screen/home/controller/home_controller.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  HomeController controller = Get.put(HomeController());

  @override
  void initState() {
    super.initState();
    controller.getProductData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("HomeScreen"),
        actions: [
          IconButton(onPressed: (){
            Get.toNamed('third');
          }, icon: const Icon(Icons.card_travel))
        ],
      ),
      body: Center(
        child: Obx(
          () =>  ListView.builder(
            itemBuilder: (context, index) {
              return ListTile(
                onTap: () {
                  Get.toNamed('second',arguments: controller.productList[index]);
                },
                leading: Image.network(
                  "${controller.productList[index].image}",
                  height: 100,
                  width: 100,
                ),

                title: Text("${controller.productList[index].title}"),
                subtitle: Text("${controller.productList[index].price}"),
                trailing: const Icon(Icons.arrow_forward_ios),
              );
            },
            itemCount: controller.productList.length,
          ),
        ),
      ),

    );
  }
}
