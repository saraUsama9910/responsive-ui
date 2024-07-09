import 'package:flutter/material.dart';
import 'package:respons/utils/app_images.dart';
import 'package:respons/widgets/drawer_items_list_view.dart';
import 'package:respons/widgets/user_info_list_tile.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: const Column(
        children: [
          UserInfoListTile(
            image: Assets.imagesAvatar1,
            title: 'Lekan Okeowo',
            subtitle: 'demo@gmail.com',
          ),
          SizedBox(
            height: 6,
          ),
          DrawerItemsListView(),
        ],
      ),
    );
  }
}
