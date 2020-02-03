import 'package:flutter/material.dart';

Color icon_color = Colors.grey.shade500;
List images_list_view = [
  "asset/horizontal_top_list/girl.jpg",
  "asset/horizontal_top_list/boy.jpg",
  "asset/horizontal_top_list/women.jpg",
  "asset/horizontal_top_list/men.jpg",
  "asset/horizontal_top_list/latesttrend.jpg",
  "asset/horizontal_top_list/sale.jpg",
  "asset/horizontal_top_list/wedding.jpeg",

  "asset/horizontal_top_list/jewellery.jpg",
  "asset/horizontal_top_list/readytoship.jpg",

  "asset/horizontal_top_list/accesories.jpg",
];

List name_images_list_view = [
  "GIRL",
  "BOY",
  "WOMEN",
  "MEN",
  "LATEST TRENDS",
  "SALE",
  "WEDDING",
  "JEWELLERY",
  "READY TO SHIP",

  "ACCESSORIES",
];


List<String> card = [
  'asset/carousel/image1.jpg',
  'asset/carousel/image2.jpg',
  'asset/carousel/image3.jpg',
  'asset/carousel/image4.jpg',
  'asset/carousel/image5.jpg',


//    'assets/plate1.png',
//    'assets/plate3.png',
];

List festive_20 = [
  "asset/festive_20/festive(1).jpg",
  "asset/festive_20/festive(2).jpg",
  "asset/festive_20/festive(3).jpg",
  "asset/festive_20/festive(4).jpg",
  "asset/festive_20/festive(5).jpg",
  "asset/festive_20/festive(6).jpg",
  "asset/festive_20/festive(7).jpg",


];
List trending_designer = [
  "asset/trending_designer/trending_designer(1).jpg",
  "asset/trending_designer/trending_designer(2).jpg",
  "asset/trending_designer/trending_designer(3).jpg",
  "asset/trending_designer/trending_designer(4).jpg",
  "asset/trending_designer/trending_designer(5).jpg",
  "asset/trending_designer/trending_designer(6).jpg",
  "asset/trending_designer/trending_designer(7).jpg",
  "asset/trending_designer/trending_designer(8).jpg",

];
List trending_products = [

  "asset/trending_products/trending_products(1).jpg",
  "asset/trending_products/trending_products(2).jpg",
  "asset/trending_products/trending_products(3).jpg",
  "asset/trending_products/trending_products(4).jpg",
  "asset/trending_products/trending_products(5).jpg",
  "asset/trending_products/trending_products(6).jpg",
  "asset/trending_products/trending_products(7).jpg",
  "asset/trending_products/trending_products(8).jpg",
  "asset/trending_products/trending_products(9).jpg",


];


Pattern pattern =
    r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
RegExp regex = new RegExp(pattern);



TextEditingController customer_name_controller_login = new TextEditingController();
TextEditingController customer_email_id_controller_login = new TextEditingController();
TextEditingController customer_password_controller_login = new TextEditingController();


List user_login_Details_controller_login = [
  customer_name_controller_login,
  customer_email_id_controller_login,
  customer_password_controller_login

];

bool autoValidation_login = false;
bool show_password_login = true;

String patttern = r'(^[6-9]\d{9}$)';
RegExp mobile_exp = new RegExp(patttern);

TextEditingController customer_name_controller_sign_up = new TextEditingController();
TextEditingController customer_email_id_controller_sign_up = new TextEditingController();
TextEditingController customer_password_controller_sign_up = new TextEditingController();
TextEditingController customer_phoneNumber_controller_sign_up = new TextEditingController();


List user_login_Details_controller_sign_up = [
  customer_name_controller_sign_up,
  customer_email_id_controller_sign_up,
  customer_password_controller_sign_up,
  customer_phoneNumber_controller_sign_up

];
bool autoValidation_sign_up = false;
bool show_password_Sign_up = true;
