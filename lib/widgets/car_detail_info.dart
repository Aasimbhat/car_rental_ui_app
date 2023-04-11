import 'package:car_rental_app/screens/constants.dart';
import 'package:car_rental_app/widgets/attribute.dart';
import 'package:flutter/material.dart';

class CarDetailInformation extends StatelessWidget {
  const CarDetailInformation({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      margin: EdgeInsets.only(
        top: 50,
      ),
      decoration: BoxDecoration(
          color: mPrimaryColor, borderRadius: BorderRadius.circular(16)),
      child: Column(
        children: [
          CarInfo(),
          Divider(height: 16,color: Colors.black,),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset("assets/av.png",height: 120,),
              SizedBox(width: 16),
              Expanded(
                child: Column(
                  children: [
                    DriverInfo(),
                    SizedBox(height: 12,),
                    DriverAppRaise(),
                    SizedBox(height: 12,),
                    Row(
                      children: [
                        Container(
                          height: 40,
                          width: 60,
                          decoration:  BoxDecoration(
                            color:mCardColor,
                            borderRadius: BorderRadius.circular(36)
                          ),
                          child: Center(
                            child: Text('Call',style: TextStyle(
                              color:Colors.white,
                              fontSize: 15
                            ),),
                          ),
                        ),
                        SizedBox(
                          width: 30,
                        ),
                         Container(
                          height: 40,
                          width: 90,
                          decoration:  BoxDecoration(
                            color:mCardColor,
                            borderRadius: BorderRadius.circular(36)
                          ),
                          child: Center(
                            child: Text('Book Now',style: TextStyle(
                              color:Colors.white,
                              fontSize: 15
                            ),),
                          ),
                        ),
                      ],
                    )
                    

                  ],
                  
                ),
              )
            ],
          )

        ],
      ),
    );
  }
}

class DriverAppRaise extends StatelessWidget {
  const DriverAppRaise({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text('4.0',
        style: TextStyle(


        ),
        ),
        SizedBox(
          width: 5,
        ),
        Icon(Icons.star,color: Colors.white,size: 15,),
        Icon(Icons.star,color: Colors.white,size: 15),
        Icon(Icons.star,color: Colors.white,size: 15),
        Icon(Icons.star,color: Colors.white,size: 15),
        Icon(Icons.star,size: 15),

           
      ],
    );
  }
}

class DriverInfo extends StatelessWidget {
  const DriverInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Aasim bhat",
            style:TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500
            ) ,),
             Text("Licence NWR 7864909",
            style:TextStyle(
              fontSize: 10,
            ) ,)
          ],
        ),
          Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("369",
            style:TextStyle(
              fontSize: 16,
              color: Colors.white,
              fontWeight: FontWeight.w500
            ) ,),
             Text("Ride",
            style:TextStyle(
              fontSize: 10,
            ) ,)
          ],
        ),
      ],
    );
  }
}

class CarInfo extends StatelessWidget {
  const CarInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '\$${'192'}',
          style: TextStyle(
              color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold),
        ),
        Text(
          'price/hr',
          style: TextStyle(color: Colors.white),
        ),
        SizedBox(
          height: 45,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Attribute(
              name: 'Brand',
              value: 'Bentley',
            ),
            Attribute(
              name: 'Model No',
              value: '3A 9200',
            ),
            Attribute(
              name: 'C02',
              value: '7,7km',
            ),
            Attribute(
              name: 'Fule Cons',
              value: '5.5l',
            ),
          ],
        )
      ],
    );
  }
}
