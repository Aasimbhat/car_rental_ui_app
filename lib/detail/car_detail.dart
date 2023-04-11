import 'package:car_rental_app/model/car.dart';
import 'package:car_rental_app/screens/constants.dart';
import 'package:car_rental_app/widgets/attribute.dart';
import 'package:car_rental_app/widgets/car_detail_info.dart';
import 'package:car_rental_app/widgets/my_appbar.dart';
import 'package:flutter/material.dart';

class CarDetail extends StatelessWidget {
  // final Car car;

  // const CarDetail(Key? key, this.car) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(
          children: [
            Image.asset('assets/map.png',
            width: double.infinity,
            fit: BoxFit.fill,),
            MyAppBar(),
            Positioned(
              left: 24,
              right: 24,
              bottom: 24,
              child: 
            Stack(
              children: [
                CarDetailInformation(),
                Positioned(  
                  right: 40,
                  child:Image.asset('assets/bentley.png',
                  height: 100,) )
              ],
            )
            )
          ],
        ),
      ),
    );
  }
}

