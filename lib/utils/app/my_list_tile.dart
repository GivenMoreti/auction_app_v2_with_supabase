import 'package:flutter/material.dart';
import 'package:ride_sharing_fe/core/Theme/app_pallet.dart';

class MyListTile extends StatelessWidget {
  final String title;
  final String subtitle;
  final bool selected;

  MyListTile({
    super.key,
    required this.title,
    required this.subtitle,
    this.selected = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
        border: Border.all(width: 1),
        color: Color.fromARGB(255, 45, 48, 103),
        boxShadow: List.of(
          growable: true,
          List.filled(
            2,
            BoxShadow(color: AppPallet.orangeColor),
          ),
        ),
      ),
      child: ListTile(
        // focusColor: AppPallet.orangeColor,
        //item image will be used
        leading: Icon(Icons.tv),
        selected: selected,
        onTap: () {
          // do something
        },
        contentPadding: EdgeInsets.all(10),
        onLongPress: () {
          //add to bids
        },
        title: Text(title), //item title
        subtitle: Text(subtitle), //auction price
        // selectedTileColor: AppPallet.orangeColor,
      ),
    );
  }
}
