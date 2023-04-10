import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyAppBar extends StatelessWidget {
  const MyAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: 
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(onPressed: (){
            Get.back();
          }, 
          icon: Icon(Icons.arrow_back_ios,
          color: Colors.white,
          )),
          Text('Car Detail',
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.w500
          ),
          
          ),
           IconButton(onPressed: (){}, 
          icon: Icon(Icons.menu,
          color: Colors.white,
          )),

    ],
    )
    );
  }
}