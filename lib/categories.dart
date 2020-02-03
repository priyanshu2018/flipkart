import 'package:flutter/material.dart';
import 'package:expandable/expandable.dart';
import 'constants/constants.dart';


class ArticleWidget extends StatelessWidget {

  final category;
  final article_expanded;
  final index_image;

  ArticleWidget({this.category,this.article_expanded,this.index_image});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      hoverColor: Colors.pinkAccent,
      child: AnimatedContainer(
        duration: Duration(seconds: 1),
        //height: 50,

        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(width: 2,color: Colors.black87),

          )
        ),
        child: ExpandablePanel(
          header: Row(
            children: <Widget>[
              SizedBox(
                width: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[

                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CircleAvatar(radius: 30 , backgroundImage: AssetImage(images_list_view[index_image]),),
                  ),
                ],
              ),
              SizedBox(
                width: 20,
              ),
              Text(category ,style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black87,fontSize: 15,fontFamily: 'Scam'),)
            ],
          ),
          //collapsed: Text(article_collapsed, softWrap: true, maxLines: 2, overflow: TextOverflow.ellipsis,),
          expanded: article_expanded,
          tapHeaderToExpand: true,
          hasIcon: true,

        ),
      ),
    );
  }
}