import 'package:car_rental_app/detail/car_detail.dart';
import 'package:car_rental_app/model/car.dart';
import 'package:car_rental_app/screens/constants.dart';
import 'package:flutter/material.dart';

import 'car_information.dart';

class CarListItem extends StatelessWidget {
  const CarListItem(this.index,{
    Key? key,
  }) : super(key: key);

  final int index;

  @override
  Widget build(BuildContext context) {
    Car car=carList[index];
    return GestureDetector(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(
          builder: (context){
            return  CarDetail();
        }
        )
        );
      },
      child: Container(
        margin: EdgeInsets.only(bottom: 20,top: 60),
        child: Stack(
          children: [
            CarInformation(car: car),
            Positioned(
              right: 40,
              bottom: 50,
              child:Image.asset(car.image,
              height: 100,
              
              ) )
          ],
        ),
      ),
    );
  }
}