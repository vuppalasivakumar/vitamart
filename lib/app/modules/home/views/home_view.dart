import 'package:carousel_slider/carousel_slider.dart';
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
          backgroundColor: AppColors.ash,
          toolbarHeight: 100,
          leadingWidth: 50,
          leading: Image.asset(
            "assets/vitamart_logo.jpg",
            // height: 50.00,
            // width: 70.00,
          ),
          title: const TextField(
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.search),
              suffixIcon: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    Icons.mic,
                  ),
                  Padding(
                    padding: EdgeInsets.all(AppSizes.x1_00),
                    child: Icon(Icons.camera_alt_outlined),
                  ),
                ],
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
                gapPadding: 2.0,
              ),
              labelText: 'Enter here',
              hintText: 'Enter here',
            ),
          ),
          actions: [
            IconButton(
             icon: const Icon(Icons.person_outline_rounded,),
             iconSize: 35,
             onPressed:(){
             },
             tooltip: "Login here",
            ),
           const SizedBox(
              width: 20,
            ),
          ],
        ),
        body: SingleChildScrollView(
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
                        contentPadding: const EdgeInsets.all(AppSizes.x1_00),
                        title: Text("50% OFF",style: Theme.of(context)
                                     .textTheme
                                    .titleLarge
                                    ?.copyWith(fontSize: 20.0, fontWeight: FontWeight.bold),
                                    ),
                        subtitle: const Text("Offer Expires Soon Order Now"),
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
              ProductsCard(
                  productsText: "Electronics:",
                  color: AppColors.skyblue,
                  itemCount: controller.electronicsDetails.length,
                  productsDetails: controller.electronicsDetails),
              const SizedBox(height: 10,),    
              ProductsCard(
                  productsText: "Fashions:",
                  color: AppColors.ash,
                  itemCount: controller.fashionDetails.length,
                  productsDetails: controller.fashionDetails),
              const SizedBox(height: 10,),       
              ProductsCard(productsText: 'Grocery:',
                   color: AppColors.lightgold, 
                   itemCount: controller.groceryDetails.length,
                   productsDetails: controller.groceryDetails), 
              const SizedBox(height: 20,),           
            ],
          ),
        )
        );
  }
}
