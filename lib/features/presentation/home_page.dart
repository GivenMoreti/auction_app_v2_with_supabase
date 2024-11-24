import 'package:flutter/material.dart';
import 'package:ride_sharing_fe/core/Theme/app_pallet.dart';
import 'package:ride_sharing_fe/utils/app/my_list_tile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppPallet.backgroundColor,
      appBar: AppBar(
        backgroundColor: AppPallet.backgroundColor,
        title: Text(
          "Home",
          style: TextStyle(color: AppPallet.textColor),
        ),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Icon(
              Icons.shopping_basket,
              color: AppPallet.orangeColor,
              size: 28,
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Column(
                children: [
                  // Header text
                  Text(
                    "Auctioning has never been so easy",
                    style: TextStyle(
                      color: AppPallet.textColor,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 5), // Spacing
                  // Subheader text
                  Text(
                    "Trade Items in your home for value",
                    style: TextStyle(
                      color: AppPallet.textColor,
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20), // Spacing before the list
            Expanded(
              // Constrain ListView height
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 10,
                  right: 10,
                  bottom: 10,
                ),
                child: ListView.builder(
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return MyListTile(
                      selected: index % 2 == 0, // Example logic for selection
                      subtitle: "\$${(index + 1) * 100}",
                      title: "Item ${index + 1}",
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
