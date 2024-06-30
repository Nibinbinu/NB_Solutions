import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import '../../utils/app_constants.dart';
import '../../widgets/all_products_widget.dart';
import '../../widgets/banner_widgets.dart';
import '../../widgets/category_widget.dart';
import '../../widgets/custom_drawer_widget.dart';
import '../../widgets/flash_sale.dart';
import '../../widgets/heading_widgets.dart';
import 'all_category_screen.dart';
import 'all_flash_sale_products.dart';
import 'all_product_screen.dart';
import 'cart_screen.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: AppConstant.appTextColor),
        systemOverlayStyle: const SystemUiOverlayStyle(
            statusBarColor: AppConstant.appSecondaryColor,
            statusBarIconBrightness: Brightness.light),
        backgroundColor: AppConstant.appMainColor,
        title: const Text(
          AppConstant.appMainName,
          style: TextStyle(color: AppConstant.appTextColor),
        ),
        centerTitle: true,
        actions: [
          GestureDetector(
            onTap: () => Get.to(() => const CartScreen()),
            child: const Padding(
              padding: EdgeInsets.all(8.0),
              child: Icon(
                Icons.shopping_cart,
              ),
            ),
          ),
        ],
      ),
      drawer: const CustomDrawerWidget(),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Container(
          child: Column(
            children: [
              SizedBox(
                height: Get.height / 90.0,
              ),
              //banners
              const BannerWidget(),

              //heading
              HeadingWidget(
                headingTitle: "Categories",
                headingSubTitle: "According to your budget",
                onTap: () => Get.to(() => const AllCategoriesScreen()),
                buttonText: "See More >",
              ),

              const CategoryWidget(),

              //heading
              HeadingWidget(
                headingTitle: "Project ideas",
                headingSubTitle: "Projects according to your budget",
                onTap: () =>
                    Get.to(
                  () => const AllFlashSaleProducts(),
                ),
                buttonText: "See More >",
              ),

              const FlashSaleWidget(),

              //heading
              HeadingWidget(
                headingTitle: "All Products",
                headingSubTitle: "According to your budget",
                onTap: () => Get.to(() => const AllProductsScreen()),
                buttonText: "See More >",
              ),

              const AllProductsWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
