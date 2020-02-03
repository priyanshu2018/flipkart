import 'package:flutter/material.dart';

class Horizontal_List_View extends StatelessWidget {
  final itemList;
  final height;
  final width;
  final fit;
  Horizontal_List_View({this.itemList,this.height,this.width,this.fit});

  @override
  Widget build(BuildContext context) {
    return  SliverToBoxAdapter(
      child: Container(
        height: height+20,
       // width: width,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: itemList.length,
            itemBuilder: (context,index){
              return Padding(
                padding: const EdgeInsets.only(left:4.0,right: 4.0,top: 4,),
                child: Column(
                  children: <Widget>[
                    Container(
                      height: height,
                      width: width,
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 5,
                          style: BorderStyle.solid,
                          color: Colors.grey.shade100
                        )
                      ),

                      child: Image(
                        fit: fit,
                        image: AssetImage(itemList[index]),
                      ),
                    )
//                    Text(
//                      name_images_list_view[index],
//                      style: TextStyle(
//                          fontSize: 10,
//                          fontFamily: 'Scam'
//                      ),
//                    ),
                  ],
                ),
              );
            }

        ),
//                  child: ListView(
//
//                    scrollDirection: Axis.horizontal,
//                      children: <Widget>[
//                        CircleAvatar(
//                          backgroundImage: AssetImage(images_list_view[0]),
//                          minRadius: 40,
//                        ),
//                        CircleAvatar(
//                          backgroundImage: AssetImage(images_list_view[1]),
//                          minRadius: 40,
//                        ),
//                        CircleAvatar(
//                          backgroundImage: AssetImage(images_list_view[2]),
//                          minRadius: 40,
//                        ),
//                        CircleAvatar(
//                          backgroundImage: AssetImage(images_list_view[3]),
//                          minRadius: 40,
//                        ),
//                        CircleAvatar(
//                          backgroundImage: AssetImage(images_list_view[4]),
//                          minRadius:40,
//                        ),
//                        CircleAvatar(
//                          backgroundImage: AssetImage(images_list_view[5]),
//                          minRadius: 40,
//                        ),
//                        CircleAvatar(
//                          backgroundImage: AssetImage(images_list_view[6]),
//                          minRadius: 40,
//                        ),
//                        CircleAvatar(
//
//                          backgroundImage: AssetImage(images_list_view[7]),
//                          minRadius: 40,
//                        ),
//                        CircleAvatar(
//                          backgroundImage: AssetImage(images_list_view[8]),
//                          minRadius: 40,
//                        ),
//                        CircleAvatar(
//                          backgroundImage: AssetImage(images_list_view[9]),
//                          minRadius: 40,
//                        )
//
//                      ],
//
//
//
//                  ),
      ),
    );
  }
}
