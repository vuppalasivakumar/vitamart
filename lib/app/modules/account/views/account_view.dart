import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:vitamart/app/core/app_configurations/app_colors.dart';
import 'package:vitamart/app/core/app_configurations/app_sizes.dart';
import 'package:vitamart/app/core/app_configurations/app_urls.dart';

import '../controllers/account_controller.dart';

class AccountView extends GetView<AccountController> {
  const AccountView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
  
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary.withOpacity(0.3),
        title: const Text('Account View'),
        centerTitle: true,
      ),
      body:
    
       SingleChildScrollView(
         child: Column(
            
               children: [
                
                ListTile(
                  title: const Text("Account",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                 subtitle: Row(
                    children: [
                   const Text("Log in to get exclusive offers"),
                    const SizedBox(width: 80,),
                     ElevatedButton(onPressed: (){},style: const ButtonStyle(backgroundColor: MaterialStatePropertyAll(AppColors.lightblue)), child: const Text("LogIn",style: TextStyle(color:AppColors.balck),),)
                   ],
                   ),
                ),
             const    Divider(height: 10,thickness: 5,color: AppColors.grey,),
              Column(
              
             children: [
                 const Padding(
                   padding: EdgeInsets.only(right: AppSizes.x1_25),
                   child: Text("Credit Score",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20 ),),
                 ),
                 ListTile(
          leading: const Icon(Icons.description_outlined,color:AppColors.green,),
          title: const Text("Free credit score check"),
          subtitle: const Text("Get detailed credit report instantly"),
          trailing: IconButton(onPressed: (){}, icon: const Icon(Icons.keyboard_arrow_right_outlined)),
                 )
               ],
              ),
               const    Divider(height: 10,thickness: 5,color: AppColors.grey,),
                Column(
              
              children: [
                 const Padding(
                   padding: EdgeInsets.only(right: AppSizes.x1_25),
                   child: Text("Notifications",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20 ),),
                 ),
                 ListTile(
          leading: const Icon(Icons.notifications_none_outlined,color:AppColors.lightblue),
          title: const Text("Tap for latest updates and offers"),
         
          trailing: IconButton(onPressed: (){}, icon: const Icon(Icons.keyboard_arrow_right_outlined)),
                 )
               ],
              ),
                const    Divider(height: 10,thickness: 5,color: AppColors.grey,),
                 const Row(
                  children: [
                 Padding(
                   padding: EdgeInsets.only(left:AppSizes.x0_25),
                   child: Text("Sponsored",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20 )),
                 ),
                   ],
                ),
                Card(
                
                 child: Column(
                  
                  children: [
                    Image.network(Appurl.accountBannerSponsoredimg),
                    ListTile(
                      leading:const  Text("Get it Now",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20 )),
                      trailing: IconButton(onPressed: (){}, icon: const Icon(Icons.keyboard_arrow_right_outlined)),
                    )
                  ],
                 )
                 
                ),
                 const    Divider(height: 10,thickness: 5,color: AppColors.grey,), 
                Column(
                  children: [
                   const Padding(
                     padding: EdgeInsets.only(right:AppSizes.x1_50),
                     child: Text("Account Settings",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20 )),
                   ),
                    ListTile(
                      leading: IconButton(onPressed: (){}, icon: const Icon(Icons.translate_outlined,color: AppColors.lightblue,)),
                      title:const  Text("Select Language"),
                      trailing: IconButton(onPressed: (){}, icon: const Icon(Icons.keyboard_arrow_right_outlined)),
                    ),
                     ListTile(
                      leading: IconButton(onPressed: (){}, icon: const Icon(Icons.notification_add_outlined,color: AppColors.lightblue,)),
                      title:const  Text("Notification Settings"),
                      trailing: IconButton(onPressed: (){}, icon: const Icon(Icons.keyboard_arrow_right_outlined)),
                    ),
                     ListTile(
                      leading: IconButton(onPressed: (){}, icon: const Icon(Icons.headphones_outlined,color: AppColors.lightblue,)),
                      title:const  Text("Help Center"),
                      trailing: IconButton(onPressed: (){}, icon: const Icon(Icons.keyboard_arrow_right_outlined)),
                    )
                  ],
                ),
                const Divider(height: 10,thickness: 5,color: AppColors.grey,),
                 const Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 25),
                      child: Text("Featured Offerings",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20 )),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      child: Card(
                         shape: const BeveledRectangleBorder(borderRadius: BorderRadius.zero),
                        child: Column(
                          children: [
                            Image.network(Appurl.shop),
                           const  Text("No Cost EMIs"),
                           const Text("Apply Now",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),)
                          ],
                        ),
                      ),
                    ),
                      Expanded(
                        child: Card(
                          shape: const BeveledRectangleBorder(borderRadius: BorderRadius.zero),
                        child: Column(
                          children: [
                            Image.network(Appurl.bajaj),
                           const  Text("All-in-one Card"),
                            const Text("Apply Now",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),)
                          ],
                        ),
                                            ),
                      ),
                      Expanded(
                        child: Card(
                           shape: const BeveledRectangleBorder(borderRadius: BorderRadius.zero),
                        child: Column(
                          children: [
                            Image.network(Appurl.shop),
                           const  Text("Lifetime Free"),
                              const Text("Apply Now",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),)
                          ],
                        ),
                       ),
                      ),
                  ],
                ),
           
                  
                 
                    
                    
                 const    Divider(height: 10,thickness: 5,color: AppColors.grey,),
                 Column(
                  children: [
                     const Padding(
                       padding: EdgeInsets.only(right: AppSizes.x1_50),
                       child: Text("Earn with Vitamart",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20 )),
                     ),
                    
                    ListTile(
                      leading: IconButton(onPressed: (){}, icon:const Icon(Icons.store_outlined,color: AppColors.lightblue,)),
                      title: const Text("Sell on Vitamart"),
                      trailing: IconButton(onPressed: (){}, icon: const Icon(Icons.keyboard_arrow_right_outlined)),
                    )
                  ],
                 ) ,
                   const    Divider(height: 10,thickness: 5,color: AppColors.grey,),
                     Column(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(right:AppSizes.x0_50),
                      child: Text("Feedback & Information",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20 )),
                    ),
                    ListTile(
                      leading: IconButton(onPressed: (){}, icon:const Icon(Icons.description_outlined,color: AppColors.lightblue,)),
                      title: const Text("Terms,Policies and Licenses"),
                      trailing: IconButton(onPressed: (){}, icon: const Icon(Icons.keyboard_arrow_right_outlined)),
                    ),
                     ListTile(
                      leading: IconButton(onPressed: (){}, icon:const Icon(Icons.question_mark_outlined,color: AppColors.lightblue,)),
                      title: const Text("Browser FAQs"),
                      trailing: IconButton(onPressed: (){}, icon: const Icon(Icons.keyboard_arrow_right_outlined)),
                    )
                  ],
                 ) ,
               ]
               
             ),
       ));
  }
}
