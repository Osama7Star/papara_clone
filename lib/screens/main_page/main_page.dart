import 'package:flutter/material.dart';
import 'package:papara_clone/screens/custom_widgets/app_bar.dart';
import 'package:papara_clone/screens/custom_widgets/texts.dart';
import 'package:papara_clone/utilities/colors.dart';
import 'package:papara_clone/utilities/sizes.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Scaffold(
        appBar: CustomAppBar(),
        body: Padding(
          padding:  EdgeInsets.all(CustomSizes.padding5),
          child: ListView(children: [
            Container(
              padding: EdgeInsets.all(CustomSizes.padding6),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Colors.white,
                boxShadow: const [
                  BoxShadow(color: Colors.black, spreadRadius: 0.2),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                const CustomText(text: 'Turk Lirasi   '),
                Container(
                  child: SizedBox(
                      width: 20,
                      height: 20,
                      child: Image.asset('lib/assets/images/turkish_flag.png')),
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle, color: Color(0xFF8b959e)),
                ),
                const CustomText(text: '  TL'),

                Icon(
                  Icons.keyboard_arrow_down_rounded,
                  size: CustomSizes.iconSizeMedium,
                  color:CustomColors.black.withOpacity(0.5)
                ),
              ]),
            ),
            SizedBox(height:CustomSizes.verticalSpace*2),
            Row(
              mainAxisAlignment:MainAxisAlignment.spaceBetween,
              children:[
                IconInCircle(color: Colors.red,icon:Icons.minimize,action:'cek'),
                CustomText(text:"₺14,50",fontSize: CustomSizes.header1*1.5,fontWeight: FontWeight.bold,),
                IconInCircle(color: Colors.green,icon:Icons.add,action:'yatir'),

              ]
            ),
            Row(
              mainAxisAlignment:MainAxisAlignment.center,
              children:[
                CustomText(text:"Papara Numaraan: ",fontSize: CustomSizes.header5, color:CustomColors.black.withOpacity(0.5)),
                CustomText(text:"1348558855",fontSize: CustomSizes.header5,color:CustomColors.primary),

              ]
            ),
            SizedBox(height:CustomSizes.verticalSpace*3),
            Row(
              children: [
                CustomText(text:"SON İŞLEMLER  ",fontSize: CustomSizes.header5,isCenter: false,color: CustomColors.black.withOpacity(0.5),),
                Icon(
                  Icons.arrow_forward,
                  size: CustomSizes.iconSize,
                  color:CustomColors.black.withOpacity(0.5)

                )
              ],
            ),
            SizedBox(height:CustomSizes.verticalSpace*2),

            LastTransaction(imageUrl: 'https://assets.materialup.com/uploads/3e6fac12-3d12-4253-aa16-be6a9b609819/preview.jpg',name: 'Getir',cardName: 'Papara Card',amount: 13.29,date: '20 ocak 2020'),
            LastTransaction(imageUrl: 'https://assets.materialup.com/uploads/3e6fac12-3d12-4253-aa16-be6a9b609819/preview.jpg',name: 'Getir',cardName: 'Papara Card',amount: 13.29,date: '20 ocak 2020'),
            LastTransaction(imageUrl: 'https://assets.materialup.com/uploads/3e6fac12-3d12-4253-aa16-be6a9b609819/preview.jpg',name: 'Getir',cardName: 'Papara Card',amount: 13.29,date: '20 ocak 2020'),
            LastTransaction(imageUrl: 'https://assets.materialup.com/uploads/3e6fac12-3d12-4253-aa16-be6a9b609819/preview.jpg',name: 'Getir',cardName: 'Papara Card',amount: 13.29,date: '20 ocak 2020'),
            LastTransaction(imageUrl: 'https://assets.materialup.com/uploads/3e6fac12-3d12-4253-aa16-be6a9b609819/preview.jpg',name: 'Getir',cardName: 'Papara Card',amount: 13.29,date: '20 ocak 2020'),

          ]),
        ));
  }
}

class LastTransaction extends StatelessWidget {
  const LastTransaction({
    Key? key,required this.imageUrl,required this.name, required this.cardName, required this.amount,required this.date,
  }) : super(key: key);
final String imageUrl;
final String name;
final String cardName;
final double amount;
final String date;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.only(bottom: CustomSizes.padding1),
      child: Row(
        children:[
          SizedBox(
            width:50,
            height:50,
            child: ClipRRect(    borderRadius: BorderRadius.circular(50),
                child: Image.network(imageUrl)),
          ),
          SizedBox(width:CustomSizes.verticalSpace),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children:[
              CustomText(text:name,fontSize: CustomSizes.header3,isCenter: false,color: CustomColors.black,fontWeight: FontWeight.bold,),
              CustomText(text:cardName,fontSize: CustomSizes.header4,isCenter: false,color: CustomColors.black.withOpacity(0.5),),

            ]
          ),
          Spacer(),
          Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children:[
                CustomText(text:"₺${amount}",fontSize: CustomSizes.header3,isCenter: false,color: CustomColors.black,fontWeight: FontWeight.bold,),
                CustomText(text:date,fontSize: CustomSizes.header4,isCenter: false,color: CustomColors.black.withOpacity(0.5),),

              ]
          )
        ]
      ),
    );
  }
}

class IconInCircle extends StatelessWidget {
  const IconInCircle({Key? key,required this.color,required this.icon,required this.action}) : super(key: key);

  final Color color;
  final IconData icon;
  final String action;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration:  BoxDecoration(
              shape: BoxShape.circle, color: Colors.white,
            boxShadow:  [
              BoxShadow(color: color, spreadRadius: 2),
            ],
          ),

          child:  Icon(
            icon,
            size: CustomSizes.iconSizeMedium,
            color: color,
          ),
        ),
        SizedBox(height:CustomSizes.header5),
        CustomText(text:action,fontSize: CustomSizes.header5,color: CustomColors.black.withOpacity(0.5),),

      ],
    );
  }
}

