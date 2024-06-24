import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:vitamart/app/core/app_configurations/app_colors.dart';
import 'package:vitamart/app/core/app_configurations/app_sizes.dart';
import 'package:vitamart/app/core/app_configurations/app_urls.dart';
import 'package:vitamart/app/modules/home/widgets/products_card.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: AppColors.whitecolor,
          toolbarHeight: 100,
          // elevation: 6,
          leadingWidth: 110,
          leading: Padding(
            padding: const EdgeInsets.only(left: AppSizes.x0_75),
            child: Image.asset(
              "assets/vitamart_title_logo.png",
              // height: 50.00,
              // width: 70.00,
            ),
          ),
          title: const TextField(
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.search),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
                gapPadding: 2.0,
              ),
              labelText: 'Enter here',
              hintText: 'Enter here',
            ),
          ),
          // const CupertinoSearchTextField(),
          actions: [
            IconButton(
              icon: const Icon(
                Icons.person_outline_rounded,
              ),
              iconSize: 35,
              onPressed: () {},
              tooltip: "Login here",
            ),
            const SizedBox(
              width: 20,
            ),
          ],
        ),
        body: Obx(() => SingleChildScrollView(
              child: Column(
                children: [
                  // SizedBox(
                  //   child: Image.asset("assets/vitamart_productsimg.jpg", fit: BoxFit.cover, cacheHeight: 85, cacheWidth: 440,),
                  // ),
                  Padding(
                    padding: const EdgeInsets.all(AppSizes.x0_50),
                    child: Card(
                      color: AppColors.bannercolor,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ListTile(
                            contentPadding:
                                const EdgeInsets.all(AppSizes.x1_00),
                            title: Text(
                              "50% OFF",
                              style: Theme.of(context)
                                  .textTheme
                                  .titleLarge
                                  ?.copyWith(
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.bold),
                            ),
                            subtitle:
                                const Text("Offer Expires Soon Order Now"),
                            trailing: Image.network(Appurl.ordernow),
                          )
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  CarouselSlider(
                    items: [
                      Container(
                        // margin: const EdgeInsets.all(AppSizes.x1_00),
                        decoration: const BoxDecoration(
                          // color: AppColors.black
                          image: DecorationImage(
                            image: NetworkImage(Appurl.carouselMobileimg),
                            fit: BoxFit.cover,
                          ),
                          // borderRadius: BorderRadius.circular(25),
                        ),
                      ),
                      Container(
                        // margin:const EdgeInsets.all(AppSizes.x1_00),
                        decoration: const BoxDecoration(
                          // color: AppColors.black
                          image: DecorationImage(
                            image: NetworkImage(Appurl.carouselmobilesaleimg),
                            fit: BoxFit.cover,
                          ),
                          // borderRadius: BorderRadius.circular(25),
                        ),
                      ),
                      Container(
                        // margin:const EdgeInsets.all(AppSizes.x1_00),
                        decoration: const BoxDecoration(
                          // color: AppColors.black
                          image: DecorationImage(
                            image: NetworkImage(Appurl.carouselLaptopsaleimg),
                            fit: BoxFit.cover,
                          ),
                          // borderRadius: BorderRadius.circular(25),
                        ),
                      ),
                      SizedBox(
                        child: Image.asset('assets/vitamart_productsimg.jpg'),
                      ),
                    ],
                    options: CarouselOptions(
                      height: 180,
                      aspectRatio: 16 / 3,
                      autoPlay: true,
                      autoPlayInterval: const Duration(seconds: 3),
                      autoPlayAnimationDuration: const Duration(seconds: 1),
                      enlargeCenterPage: true,
                      enlargeFactor: 0.5,
                      reverse: true,
                      viewportFraction: 0.9,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    child: ProductsCard(
                        productsText: "Electronics:",
                        color: AppColors.skyblue,
                        itemCount: controller.electronicsDetails.length,
                        productsDetails: controller.electronicsDetails),
                  ),
                  // SizedBox(
                  //   child: ProductsCard(
                  //       productsText: "Electronics:",
                  //       color: AppColors.skyblue,
                  //       itemCount: controller.electronicsDetails.length,
                  //       productsDetails: controller.electronicsDetails),
                  // ),
                  const SizedBox(
                    height: 10,
                  ),
                  ProductsCard(
                      productsText: "Fashions:",
                      color: AppColors.ash,
                      itemCount: controller.fashionDetails.length,
                      productsDetails: controller.fashionDetails),
                  const SizedBox(
                    height: 10,
                  ),
                  ProductsCard(
                      productsText: 'Grocery:',
                      color: AppColors.lightgold,
                      itemCount: controller.groceryDetails.length,
                      productsDetails: controller.groceryDetails),

                  const SizedBox(
                    height: 30,
                  ),
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Padding(
                          padding: EdgeInsets.all(AppSizes.x2_00),
                          child: Text(
                            "SHOP NOW FOR YOUR FAVOURITES",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 22),
                          child: SizedBox(
                            height: 150, // Adjust this height as needed
                            child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: controller.menuItems.length,
                              itemBuilder: (context, index) {
                                return Container(
                                  width: 120, // Adjust the width as needed
                                  margin:
                                      const EdgeInsets.symmetric(horizontal: 8),
                                  child: Column(
                                    children: [
                                      Expanded(
                                        child: Container(
                                          decoration: BoxDecoration(
                                            image: DecorationImage(
                                              image: NetworkImage(
                                                  controller.menuItems[index]
                                                      ['imageUrl']!),
                                              fit: BoxFit.cover,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(8),
                                          ),
                                        ),
                                      ),
                                      SizedBox(height: 8),
                                      Text(
                                        controller.menuItems[index]["title"]!,
                                        style: const TextStyle(
                                            fontWeight: FontWeight.bold),
                                        textAlign: TextAlign.center,
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ],
                                  ),
                                );
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                ],
              ),
            )));
  }
}
