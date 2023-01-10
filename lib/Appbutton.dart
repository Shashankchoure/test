import 'package:flutter/material.dart';

import 'global.dart';

class AppBtn extends StatelessWidget {
  final String? title;
  final VoidCallback? onPress;
  double? height;
  double? width;
  double? fSize;
  IconData? icon;
  AppBtn({Key? key, this.title, this.onPress, this.height, this.width, this.fSize, this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
            elevation: 0 ,
            primary:backgroundblack,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(13)
            ),
            fixedSize: Size(width!, height!)
        ),
        onPressed: onPress,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('$title',
              style: TextStyle(color:Colors.white,
                fontSize: fSize,
                fontWeight: FontWeight.w300,
                /*color: Theme.of(context).colorScheme.lightWhite,*/
              ),),
            icon!=  null ?  Icon(icon,
              size: 18,)
                : const SizedBox.shrink()
          ],
        ));
  }
}