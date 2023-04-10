import 'package:car_rental_app/model/car.dart';
import 'package:car_rental_app/screens/constants.dart';
import 'package:car_rental_app/widgets/attribute.dart';
import 'package:car_rental_app/widgets/car_information.dart';
import 'package:car_rental_app/widgets/car_list_item.dart';
import 'package:flutter/material.dart';

class AvailableCar extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: mPrimaryColor,
      appBar: buildAppBar(),
      body:ListView.builder(
        itemCount: carList.length,
        itemBuilder: (context,index)=>
      CarListItem(index)
      
      ) ,
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: mPrimaryColor,
      elevation: 0,
      title: Center(child: Text('Available Cars')),
      actions: [
        IconButton(onPressed: (){}, 
        icon: Icon(Icons.menu,
        color: Colors.white,
        )
        )
      ],

    );
  }
}





