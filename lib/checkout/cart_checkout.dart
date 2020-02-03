import 'package:flutter/material.dart';
import 'package:zapfitt/constants/constants.dart';

class Checkout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 5,
          backgroundColor: Colors.grey.shade100,
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: Colors.grey,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          title: Text(
            "MY SHOPPING CART ",
            style: TextStyle(
                color: Colors.black87,
                fontFamily: 'mento',
                fontWeight: FontWeight.bold),
          ),
          actions: <Widget>[
            IconButton(
              icon: Icon(
                Icons.favorite_border,
                color: Colors.grey,
              ),
              onPressed: () {},
            )
          ],
        ),
        backgroundColor: Colors.white,
        body: ListView(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 18.0, left: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Shop for Rs.15,000 more and get flat Rs.6000 off',
                    style: TextStyle(
                        fontFamily: 'mento',
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.black87),
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  RichText(
                    text: TextSpan(
                        text: 'Use Code :',
                        style: TextStyle(
                            fontFamily: 'mento',
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.black87),
                        children: [
                          TextSpan(
                            text: ' SHOPMORE15K',
                            style: TextStyle(
                              color: Colors.pinkAccent,
                              fontFamily: 'mento',
                              fontSize: 15,
                              fontWeight: FontWeight.bold,

                            ),
                          )
                        ]),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Center(
                    child: Container(
                      width: MediaQuery.of(context).size.width - 50,
                      height: 1,
                      color: Colors.grey.shade500,
                    ),
                  ),
                  SizedBox(
                    height: 14,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Text(
                        'TOTAL PAYABLE ',
                        style: TextStyle(
                            fontFamily: 'mento',
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.black87),
                      ),
                      RichText(
                          text : TextSpan(
                              text: '\u20B9',
                              style: TextStyle(
                                  fontFamily: 'mento',
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black87),
                              children: [
                                TextSpan(
                                  text: ' 35,000',
                                  style: TextStyle(
                                      fontFamily: 'mento',
                                      fontSize: 30,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black87),
                                )
                              ]

                          )
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 14,
                  ),
                ],
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 15,
              color: Colors.grey.shade100,
            ),
            Padding(
              padding: const EdgeInsets.only(left :8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(
                    height: 14,
                  ),
                  Text(
                    'CART SUMMARY',
                    style: TextStyle(
                        fontFamily: 'mento',
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.black87),

                  ),
                  Row(
                    children: <Widget>[
                      Container(
                        height: 200,
                        width: 100,
                        child: Image(
                          image: AssetImage(trending_products[5]),
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Text(
                            'Lehenga',
                            style: TextStyle(
                                fontFamily: 'mento',
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.black87),

                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Text(
                            'Red Velvet With Embroidery Lehngha',
                            style: TextStyle(
                                fontFamily: 'mento',
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Colors.black54),

                          ),
                          SizedBox(
                            height: 10,
                          ),
                          RichText(
                            text: TextSpan(
                                text : '\u20B9',
                                style: TextStyle(
                                    fontFamily: 'mento',
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black87),
                                children: [
                                  TextSpan(

                                    text: '35,000',
                                    style: TextStyle(
                                        fontFamily: 'mento',
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black87),
                                  )
                                ]

                            ),
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.min,

                            children: <Widget>[
                              OutlineButton(

                                child: Text(
                                  'REMOVE',
                                  style: TextStyle(
                                      fontFamily: 'mento',
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black87),),
                                hoverColor: Colors.grey,
                                highlightColor: Colors.green,
                                onPressed: (){

                                },
                                borderSide: BorderSide(
                                    color: Colors.grey.shade500,
                                    style: BorderStyle.solid,
                                    width: .8
                                ),
                              ),
                              SizedBox(width: 50,),

                              OutlineButton(

                                child: Text(
                                  'WISHLIST',
                                  style: TextStyle(
                                      fontFamily: 'mento',
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black87),),
                                hoverColor: Colors.grey,
                                highlightColor: Colors.green,
                                onPressed: (){

                                },
                                borderSide: BorderSide(
                                    color: Colors.grey.shade500,
                                    style: BorderStyle.solid,
                                    width: .8
                                ),
                              ),

                            ],
                          )


                        ],
                      )
                    ],
                  )

                ],
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 15,
              color: Colors.grey.shade100,
            ),
            Padding(
              padding: const EdgeInsets.only(left:8.0,right: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(height: 15,),
                  Text(
                    'TOTAL PAYABLE',
                    style: TextStyle(
                        fontFamily: 'mento',
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black87),
                  ),


                  SizedBox(
                    height: 14,
                  ),
                  Center(
                    child: Container(
                      width: MediaQuery.of(context).size.width - 50,
                      height: 1,
                      color: Colors.grey.shade500,
                    ),
                  ),
                  SizedBox(
                    height: 14,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        'Cart Total',
                        style: TextStyle(
                            fontFamily: 'mento',
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.black87),
                      ),
                      RichText(
                          text : TextSpan(
                              text: '\u20B9',
                              style: TextStyle(
                                  fontFamily: 'mento',
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black87),
                              children: [
                                TextSpan(
                                  text: ' 35,000',
                                  style: TextStyle(
                                      fontFamily: 'mento',
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black87),
                                )
                              ]

                          )
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      RichText(
                          text : TextSpan(
                              text: 'Shipping',
                              style: TextStyle(
                                  fontFamily: 'mento',
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black87),
                              children: [
                                TextSpan(
                                  text: ' (Free)',
                                  style: TextStyle(
                                      fontFamily: 'mento',
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.lightGreen),
                                )
                              ]

                          )
                      ),
                      RichText(
                          text : TextSpan(
                              text: '\u20B9',
                              style: TextStyle(
                                  fontFamily: 'mento',
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black87),
                              children: [
                                TextSpan(
                                  text: '0',
                                  style: TextStyle(
                                      fontFamily: 'mento',
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black87),
                                )
                              ]

                          )
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 14,
                  ),
                  Center(
                    child: Container(
                      width: MediaQuery.of(context).size.width - 50,
                      height: 1,
                      color: Colors.grey.shade500,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,


                    children: <Widget>[


                      Container(




                        child: TextField(


                          textCapitalization: TextCapitalization.sentences,
                          decoration: InputDecoration(
                            hintText: 'HAVE A PROMO CODE',
                            contentPadding:
                            EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),


//                            enabledBorder: OutlineInputBorder(
//
//                              borderSide:
//                              BorderSide(color: Colors.grey.shade700, width: 1.0),
//
//                            ),

                            focusedBorder: UnderlineInputBorder(
                              borderSide:
                              BorderSide(color: Colors.grey.shade700, width: 3.0
                              ),

                            ),





                          ) ,




                        ),
                        height: 40,
                        width: MediaQuery.of(context).size.width/2,
                        decoration: BoxDecoration(
                            border: Border.all(
                                style: BorderStyle.solid,
                                color: Colors.grey.shade700,
                                width: 1
                            )
                        ),
                      ),
                      Container(
                        height: 40,
                        child: FlatButton(
                          padding: EdgeInsets.all(5),

                          onPressed: (){

                          },
                          color: Colors.black87,
                          child: Text(
                            'APPLY COUPON',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        'TOTAL PAYABLE',
                        style: TextStyle(
                            fontFamily: 'mento',
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.black87),
                      ),
                      RichText(
                          text : TextSpan(
                              text: '\u20B9',
                              style: TextStyle(
                                  fontFamily: 'mento',
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black87),
                              children: [
                                TextSpan(
                                  text: ' 35,000',
                                  style: TextStyle(
                                      fontFamily: 'mento',
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black87),
                                )
                              ]

                          )
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 15,
                    color: Colors.grey.shade100,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top :14.0, right: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text('• Once your order has been placed no subsequent changes can be made in it.',
                          style: TextStyle(
                              fontFamily: 'mento',
                              color: Colors.grey.shade800,
                              fontSize: 12
                          ),),
                        SizedBox(height: 5,),
                        Text('• Shipping cost may vary depending upon the delivery location.',
                          style: TextStyle(
                              fontFamily: 'mento',
                              color: Colors.grey.shade800,
                              fontSize: 12
                          ),),
                        SizedBox(height: 5,),
                        Text('• Please check the final amount on the order summary page before completing the payment.',
                          style: TextStyle(
                              fontFamily: 'mento',
                              color: Colors.grey.shade800,
                              fontSize: 12
                          ),),
                        SizedBox(height: 5,),
                        Text("• An item's price may vary according to the size selected.",
                          style: TextStyle(
                              fontFamily: 'mento',
                              color: Colors.grey.shade800,
                              fontSize: 12
                          ),),
                        SizedBox(height: 10,),
                        Center(
                          child: Text('SHIPPING POLICY • CONTACT US • HELP',
                            style: TextStyle(
                                fontFamily: 'mento',
                                color: Colors.grey.shade800,
                                fontSize: 13
                            ),),
                        ),
                        Container(
                          height: 30,
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
        bottomNavigationBar: BottomAppBar(
          color: Colors.black87,
          child: FlatButton(

            child: Text('PROCEED TO CHECKOUT',
              style: TextStyle(
                  fontSize: 20,
                  fontFamily: 'mento',
                  color: Colors.white
              ),),
          ),


        ),
      ),
    );
  }
}
