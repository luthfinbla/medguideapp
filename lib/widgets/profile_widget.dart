
import 'package:flutter/material.dart';
import 'package:medguideapp/colors.dart';

class ProfileWidget extends StatelessWidget {
  final IconData icon;
  final String title;
  const ProfileWidget({
    Key? key, required this.icon, required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 18.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Icon(icon, color: bcolor.withOpacity(.5), size: 24.0,),
          SizedBox(
            width: 16,
          ),
          Text(title, style: TextStyle(
            color: bcolor,
            fontSize: 18,
            fontWeight: FontWeight.w600,
            ),
          ),
          ],
        ),
          Icon(Icons.arrow_forward_ios,
          color: bcolor.withOpacity(.4),
          size: 16.0,)
        ],
      ),
    );
  }
}
