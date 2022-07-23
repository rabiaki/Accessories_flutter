import 'package:flutter/material.dart';
import 'package:flutter_demo/screens/details/details_screen.dart';

import '../../../constants.dart';

class RecommendsAccessories extends StatelessWidget {
  const RecommendsAccessories({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          Recommend(
            image: "assets/images/image_1.png",
            title: "James",
            country: "Singapore",
            price: 300,
            press: () {
              Navigator.push(
                context, 
                MaterialPageRoute(builder: (context) => DetailsScreen(),
                )
              );
            },
    
          ),
          Recommend(
            image: "assets/images/image_2.png",
            title: "Zarina",
            country: "Germany",
            price: 450,
            press: () {
              Navigator.push(
                context, 
                MaterialPageRoute(builder: (context) => DetailsScreen(),
                )
              );
            },
    
          ),
          Recommend(
            image: "assets/images/image_3.png",
            title: "Rabia",
            country: "Turkey",
            price: 240,
            press: () {
              Navigator.push(
                context, 
                MaterialPageRoute(builder: (context) => DetailsScreen(),
                )
              );
            },
    
          ),
        ],
      ),
    );
  }
}

class Recommend extends StatelessWidget {
  const Recommend({
    Key? key, required this.image, required this.title, required this.country, required this.price, required this.press,
  }) : super(key: key);

  final String image, title, country;
  final int price;
  final VoidCallback press; //there might be a function


  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(
        left: kDefaultPadding,
        top: kDefaultPadding/2,
        bottom: kDefaultPadding*2.5,
      ),
      width: size.width * 0.4,
      child: Column(
        children: <Widget>[
          Image.asset(image),
          GestureDetector(
            onTap: press,
            child: Container(
              padding: EdgeInsets.all(kDefaultPadding/2),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 10),
                    blurRadius: 50,
                    color: kPrimaryColor.withOpacity(0.23),
                  ),
                ]
              ),
              child: Row(
                children: <Widget>[
                  RichText(text: TextSpan(
                    children: [
                      TextSpan(
                        text: "$title\n".toUpperCase(),
                        style: Theme.of(context).textTheme.button,
                      ),
                      TextSpan(
                        text: "$country",
                        style: TextStyle(
                          color: kPrimaryColor.withOpacity(0.5),
                        )
                      )
                    ]
                  )
                ),
                Spacer(),
                Text(
                  '\$$price',
                  style: Theme.of(context)
                    .textTheme
                    .button
                    ?.copyWith(color: kPrimaryColor),
                  
                  )
              ]
              ),
            ),
          )
        ],
      ),
    );
  }
}

