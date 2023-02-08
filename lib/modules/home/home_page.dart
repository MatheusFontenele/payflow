import 'package:flutter/material.dart';
import 'package:payflow/modules/home/home_controller.dart';
import 'package:payflow/shared/themes/app_colors.dart';
import 'package:payflow/shared/themes/app_text_styles.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final homeController = HomeController();
  final pages = [
    Container(
      color: Colors.red,
    ),
    Container(
      color: Colors.blue,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(152),
        child: Container(
          height: 152,
          color: AppColors.primary,
          child: Center(
            child: ListTile(
              title: Text.rich(
                TextSpan(
                  text: "Ola, ",
                  style: AppTextStyles.titleRegular,
                  children: [
                    TextSpan(
                      text: "Matheus",
                      style: AppTextStyles.titleBoldBackground,
                    )
                  ],
                ),
              ),
              subtitle: Text(
                "Mantenha suas contas em dias",
                style: AppTextStyles.captionShape,
              ),
              trailing: Container(
                height: 48,
                width: 48,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
          ),
        ),
      ),
      body: pages[homeController.currentPage],
      floatingActionButton: FloatingActionButton(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(8),
          ),
          side: BorderSide(
            width: 2,
            color: Colors.white,
            style: BorderStyle.solid,
          ),
        ),
        onPressed: () {
          Navigator.pushNamed(
            context,
            "/barcode_scanner",
          );
        },
        elevation: 0,
        highlightElevation: 0,
        backgroundColor: AppColors.primary,
        child: const Icon(
          Icons.add_box_outlined,
          color: AppColors.background,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: SizedBox(
        height: 64,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              onPressed: () {
                homeController.setPage(0);
                setState(() {});
              },
              icon: const Icon(Icons.home),
              color: AppColors.primary,
            ),
            IconButton(
              padding: const EdgeInsets.only(right: 30),
              onPressed: () {
                homeController.setPage(1);
                setState(() {});
              },
              icon: const Icon(Icons.wallet),
              color: AppColors.body,
            ),
            IconButton(
              padding: const EdgeInsets.only(left: 30),
              onPressed: () {
                homeController.setPage(2);
                setState(() {});
              },
              icon: const Icon(Icons.notifications),
              color: AppColors.body,
            ),
            IconButton(
              onPressed: () {
                homeController.setPage(3);
                setState(() {});
              },
              icon: const Icon(Icons.menu),
              color: AppColors.body,
            ),
          ],
        ),
      ),
    );
  }
}
