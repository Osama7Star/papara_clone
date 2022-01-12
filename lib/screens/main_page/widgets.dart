import 'package:flutter/material.dart';
import 'package:papara_clone/utilities/colors.dart';
import 'package:papara_clone/utilities/sizes.dart';

class ProfileImage extends StatelessWidget {
  const ProfileImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height:300,
      child: Stack(
        children: [
          Container(
            width: CustomSizes.height6,
            height: CustomSizes.height6,
            child: Icon(Icons.person, size: CustomSizes.iconSizeMedium,),
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Color(0xFF8b959e)),
          ),
          Positioned(
            top:0,
            right:0,
            child: Container(
              width: CustomSizes.height8,
              height: CustomSizes.height8,
              child: Icon(Icons.image, size: 20,),
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: CustomColors.primary),
            ),
          ),

        ],
      ),
    );
  }
}
