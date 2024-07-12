import 'package:flutter/material.dart';
import 'package:respons/models/user_info_model.dart';
import 'package:respons/utils/app_images.dart';
import 'package:respons/widgets/user_info_list_tile.dart';

class LatestTransactionListView extends StatelessWidget {
  const LatestTransactionListView({super.key});
  static const items = [
    UserInfoModel(
      image: Assets.imagesAvatar1,
      title: 'Madrani Andi',
      subtitle: ' madraniandi@gmail.com',
    ),
    UserInfoModel(
      image: Assets.imagesAvatar2,
      title: 'Sara Mostafa',
      subtitle: ' saramostafa@gmail.com',
    ),
    UserInfoModel(
      image: Assets.imagesAvatar3,
      title: 'Menna Amir',
      subtitle: ' menaamirra@gmail.com',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: items.length,
      itemBuilder: (context, index) {
        return UserInfoListTile(
          userInfoModel: items[index],
        );
      },
    );
  }
}
