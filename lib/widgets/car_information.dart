import 'package:car_rental_app/model/car.dart';
import 'package:car_rental_app/screens/constants.dart';
import 'package:car_rental_app/widgets/attribute.dart';
import 'package:flutter/material.dart';
class CarInformation extends StatelessWidget {
  const CarInformation({
    Key? key,
    required this.car,
  }) : super(key: key);

  final Car car;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(left:24,right: 24),
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: mCardColor,
        borderRadius: BorderRadius.circular(16)
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('\$${car.price}',
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
                value:car.brand ,
              
            ),
             Attribute(
              name: 'Model No',
                value:car.model ,
              
            ),
             Attribute(
              name: 'C02',
                value:car.co2 ,
              
            ),
             Attribute(
              name: 'Fule Cons',
                value:car.fuelCons ,
              
            ),
            ],
          )

        ],
      ),
    );
  }
}
