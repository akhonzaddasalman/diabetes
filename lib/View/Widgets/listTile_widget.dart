import 'package:flutter/material.dart';
import 'package:mindingherdia/View/Colors/colors.dart';

class CustomListTile extends StatelessWidget {
  final IconData leadingIcon;
  final String title;
  final VoidCallback onTap;
  final IconData trailingIcon;
  final Color boxColor;
  final Color iconColor;

  const CustomListTile({
    super.key,
    required this.leadingIcon,
    required this.title,
    required this.onTap,
    required this.trailingIcon,
    required this.boxColor,
    required this.iconColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 2),
      decoration: BoxDecoration(
        color: kWhiteColor,
        borderRadius: const BorderRadius.all(Radius.circular(10)),
        boxShadow: <BoxShadow>[
          BoxShadow(
            offset: const Offset(4, 4),
            blurRadius: 10,
            color: kDescriptionColor.withOpacity(.2),
          ),
          BoxShadow(
            offset: const Offset(-3, 0),
            blurRadius: 15,
            color: kDescriptionColor.withOpacity(.1),
          )
        ],
      ),
      child: ListTile(
        onTap: onTap,
        leading: Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: boxColor,
            shape: BoxShape.circle,
          ),
          child: Icon(
            leadingIcon,
            color: iconColor,
            size: 25,
          ),
        ),
        title: Text(
          title,
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 17,
          ),
        ),
        trailing: Icon(
          trailingIcon,
          size: 22,
        ),
      ),
    );
  }
}
