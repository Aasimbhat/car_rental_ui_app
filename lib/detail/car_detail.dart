import 'package:car_rental_app/model/car.dart';
import 'package:car_rental_app/screens/constants.dart';
import 'package:car_rental_app/widgets/attribute.dart';
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
                Container(
                  padding: EdgeInsets.all(16),
                  margin: EdgeInsets.only(top: 50,),
                  decoration: BoxDecoration(
                    color: mPrimaryColor,
                    borderRadius: BorderRadius.circular(16)
                  ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                      Text('\$${'192'}',
          style:TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontWeight:FontWeight.bold
          ) ,),
          Text('price/hr',
          style: TextStyle(
                color: Colors.white
          ),),
          SizedBox(
                height: 45,
          ),
                     Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                
                  Attribute(
                    name: 'Brand',
                    value:'Bentley',
                  
                ),
                 Attribute(
                  name: 'Model No',
                    value:'3A 9200' ,
                  
                ),
                 Attribute(
                  name: 'C02',
                    value:'7,7km' ,
                  
                ),
                 Attribute(
                  name: 'Fule Cons',
                    value:'5.5l' ,
                  
                ),
                ],
          )

                ],
                ),

                ),
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

