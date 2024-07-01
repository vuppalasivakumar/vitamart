import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vitamart/app/core/app_configurations/app_colors.dart';

class UserprofileController extends GetxController {
  final List locale = [
    {
      'name': 'ENGLISH',
      'locale': const Locale('en', 'US'),
    },
    {
      'name': 'ಕನ್ನಡ',
      'locale': const Locale('kn', 'IN'),
    },
    {
      'name': 'हिन्दी',
      'locale': const Locale('hi', 'IN'),
    },
    {
      'name': 'తెలుగు',
      'locale': const Locale('te', 'IN'),
    },
    {
      'name': 'française',
      'locale': const Locale('fr', 'fre'),
    },
  ];
  builddialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (builder) {
        return AlertDialog(
          shape: const BeveledRectangleBorder(borderRadius: BorderRadius.zero),
          title: const Text("choose language"),
          content: SizedBox(
            width: double.maxFinite,
            child: ListView.separated(
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return Text(locale[index]['name']);
                },
                separatorBuilder: (context, index) {
                  return const Divider(
                    color: AppColors.lightblue,
                  );
                },
                itemCount: locale.length),
          ),
          actions: [
            TextButton(
              onPressed: () {},
              child: Text(
                "Add",
                style: Theme.of(context).textTheme.titleSmall?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
              ),
            ),
          ],
        );
      },
    );
  }
}
