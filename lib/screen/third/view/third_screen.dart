import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_app/screen/home/controller/home_controller.dart';

class ThirdScreen extends StatefulWidget {
  const ThirdScreen({super.key});

  @override
  State<ThirdScreen> createState() => _ThirdScreenState();
}

class _ThirdScreenState extends State<ThirdScreen> {
  HomeController controller = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Third"),
      ),
      body: Obx(
        () => ListView.builder(
          itemBuilder: (context, index) {
            return ListTile(
              leading: Image.network(
                "${controller.cartList[index].image}",
                height: 100,
                width: 100,
              ),
              title: Text("${controller.cartList[index].title}"),
              subtitle: Text("${controller.cartList[index].price}"),
              trailing: IconButton(onPressed: (){
                controller.cartList.removeAt(index);
                Get.snackbar("Delete Success", "Add Cart");
              },icon: Icon(Icons.delete),),
            );
          },
          itemCount: controller.cartList.length,
        ),
      ),
    );
  }
}
