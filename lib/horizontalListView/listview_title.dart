import 'package:flutter/material.dart';


class Horizontal_list_View_title extends StatelessWidget {
  final title;
  Horizontal_list_View_title({this.title});
  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: EdgeInsets.only(top: 10,left: 4,bottom: 10),
      sliver: SliverToBoxAdapter(
        child: Text(
          title,
          style: TextStyle(
              fontFamily: 'Pacifico',
              fontSize: 15,
              fontWeight: FontWeight.bold
          ),
        ),
      ),
    );
  }
}
