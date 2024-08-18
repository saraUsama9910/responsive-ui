import 'package:flutter/material.dart';
import 'package:respons/utils/app_styles.dart';

class ItemDetails extends StatelessWidget {
  const ItemDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        width: 12,
        height: 12,
        decoration: const ShapeDecoration(
          shape: OvalBorder(),
          color: Color(
            0xFF208BC7,
          ),
        ),
      ),title: Text('Design Service',style: AppStyles.styleRegular16(context),),trailing: Text('40%',style: AppStyles.styleMedium16(context),),
    );
  }
}
