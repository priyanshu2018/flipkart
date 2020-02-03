//import 'dart:async';
//import 'dart:convert';
//
//import 'package:flutter/material.dart';
//import 'package:http/http.dart' as http;
//
////Future<Post> fetchPost() async {
////  final response =
////  await http.get('http://zapfitt.com/api/v1/products/token');
////
////
////  if (response.statusCode == 200) {
////    // If the call to the server was successful, parse the JSON.
////
////    return Post.fromJson(json.decode(response.body));
////  } else {
////    // If that call was not successful, throw an error.
////    throw Exception('Failed to load post');
////  }
////}
////
//
//Future<List<Post>> fetchPost() async {
//  http.Response response =
//      await http.get('http://zapfitt.com/api/v1/products/token');
//  List responseJson = json.decode(response.body);
//
//  return responseJson.map((m) => new Post.fromJson(m)).toList();
//}
//
//class Post {
//  final int id;
//  final String product_name;
//  final String product_description;
//  final String product_price;
//  final String product_discount;
//  final String product_category;
//  final String product_sub_category;
//  final String image1;
//  final String delivery_time;
//  final String return_policy;
//  final String care_instructions;
//  final String designers_id;
//
//  Post(
//      {this.id,
//      this.product_name,
//      this.product_description,
//      this.product_price,
//      this.product_discount,
//      this.product_category,
//      this.product_sub_category,
//      this.image1,
//      this.delivery_time,
//      this.return_policy,
//      this.care_instructions,
//      this.designers_id});
//
//  factory Post.fromJson(Map<String, dynamic> json) {
//    return Post(
//      id: json['id'],
//      product_name: json['product_name'],
//      product_description: json['product_description'],
//      product_price: json['product_price'],
//      product_discount: json['product_discount'],
//      product_category: json['product_category'],
//      product_sub_category: json['product_sub_category'],
//      image1: json['image1'],
//      delivery_time: json['delivery_time'],
//      return_policy: json['return_policy'],
//      care_instructions: json['care_instructions'],
//      designers_id: json['designers_id'],
//    );
//  }
//}
//
//class Loading extends StatefulWidget {
//  Loading({Key key}) : super(key: key);
//
//  @override
//  _LoadingState createState() => _LoadingState();
//}
//
//class _LoadingState extends State<Loading> {
//  Future<Post> post;
//
//  @override
//  void initState() {
//    super.initState();
//
////
////    post = fetchPost();
//  }
//
//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//      body: FutureBuilder(
//        //FutureBuilder<Post>
//        future: fetchPost(), //post,
//        builder: (BuildContext context,AsyncSnapshot snapshot) {
//          if (snapshot.hasData) {
//            return ListView.builder(
//                itemCount: 67,
//                itemBuilder: (BuildContext context,
//                    int index) {
//
//                  return ListTile(
//                    title: Text(snapshot.data[index].product_name),
//                  );
//                }); // Text(snapshot.data.product_name);
//          } else if (snapshot.hasError) {
//            return Text("${snapshot.error}");
//          }
//
//          // By default, show a loading spinner.
//          return CircularProgressIndicator();
//        },
//      ),
//    );
//  }
//}
