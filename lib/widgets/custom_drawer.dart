import 'package:flutter/material.dart';
import 'package:respons/models/drawer_item_model.dart';
import 'package:respons/utils/app_images.dart';
import 'package:respons/widgets/drawer_items_list_view.dart';
import 'package:respons/widgets/inactive_drawer_item.dart';
import 'package:respons/widgets/user_info_list_tile.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          const UserInfoListTile(
            image: Assets.imagesAvatar1,
            title: 'Lekan Okeowo',
            subtitle: 'demo@gmail.com',
          ),
          const SizedBox(
            height: 6,
          ),
          const Expanded(
            child: DrawerItemsListView(),
          ),
          const Expanded(
            child: SizedBox(),
          ),
          InActiveDrawerItem(
            drawerItemModel: DrawerItemModel(
                title: 'Setting System', image: Assets.imagesSettings),
          ),
          InActiveDrawerItem(
            drawerItemModel: DrawerItemModel(
                title: 'Logout Account', image: Assets.imagesLogout),
          ),
          const SizedBox(
            height: 30,
          )
        ],
      ),
    );
  }
}
