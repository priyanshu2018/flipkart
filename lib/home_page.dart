import 'package:flutter/material.dart';
import 'constants/constants.dart';
import 'horizontalListView/horizontal_list_view.dart';
import 'horizontalListView/listview_title.dart';
import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'categories.dart';
import 'checkout/cart_checkout.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/rendering.dart';



class MyHomePage extends StatefulWidget {


  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  ScrollController _hideButtonController;

  bool _isVisible;
  int _current_page_Index = 0;
  int current_carousel_index =0;
  PageController _pageController;
  @override
  initState() {
    super.initState();
    _pageController = PageController();
    _isVisible = true;
    _hideButtonController = new ScrollController();
    _hideButtonController.addListener(() {
      if (_hideButtonController.position.userScrollDirection ==
          ScrollDirection.reverse) {
        if(_isVisible)
          setState(() {
            _isVisible = false;
            print("**** $_isVisible up");
          });
      }
      if (_hideButtonController.position.userScrollDirection ==
          ScrollDirection.forward) {
        if(!_isVisible)
          setState(() {
            _isVisible = true;
            print("**** $_isVisible down");
          });
      }
    });
  }
  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }



  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: !_isVisible ?  PreferredSize(preferredSize: Size(0.0, 0.0),child: Container(),): AppBar(
        backgroundColor: Colors.white,
        centerTitle: false,
        leading: null,
        title: RichText(

            text: TextSpan(

                text: "Z",
                style: TextStyle(
                    fontSize: 40,
                    color: Colors.yellow.shade800,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'SourceSansPro'

                ),
                children: [
                  TextSpan(
                      text: "apfitt",
                      style: TextStyle(
                          color: Colors.black87,
                          fontSize: 25,
                          fontWeight: FontWeight.w400,
                          fontFamily: 'Pacifico'
                      )
                  ),
                  TextSpan(
                    text: "   stay classy",
                    style: TextStyle(
                        fontSize: 13,
                        color: Colors.black87,
                        fontFamily: 'GreatVibes'

                    ),
                  )
                ]

            )
        ) ,
        actions: <Widget>[
          Stack(
            alignment: Alignment.topRight,
            children: <Widget>[
              IconButton(
                splashColor: Colors.pinkAccent,
                icon: Icon(Icons.shopping_basket),
                color: icon_color,
                onPressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => Checkout()));
                },
              ),
              Container(
                padding: EdgeInsets.all(0),
                height: 15,
                width: 15,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.pinkAccent.shade200

                ),
                child: Center(
                  child: Text(
                      '0'
                  ),
                ),
              )
            ],

          ),
          IconButton(
            icon: Icon(Icons.person),
            color: icon_color,
            onPressed: () {

            },
          ),

        ],
      ),
      body: PageView(
        controller: _pageController,
        onPageChanged: (index) {
          setState(() => _current_page_Index = index);
        },
        children: <Widget>[

          Scrollbar(



            child: CustomScrollView(
              controller: _hideButtonController,
              slivers: <Widget>[
//              SliverAppBar(
//                floating: true,
//
////              snap: true,
//                backgroundColor: Colors.white,
//
//                elevation: 5,
//
//                expandedHeight: 60,
//
//                flexibleSpace: FlexibleSpaceBar(
//                  titlePadding: EdgeInsets.only(left: 10,bottom: 10),
//                  title: RichText(
//
//                    text: TextSpan(
//
//                      text: "Z",
//                      style: TextStyle(
//                        fontSize: 30,
//                        color: Colors.yellow.shade800,
//                        fontWeight: FontWeight.bold,
//                       fontFamily: 'SourceSansPro'
//
//                      ),
//                      children: [
//                        TextSpan(
//                            text: "apfitt",
//                            style: TextStyle(
//                                color: Colors.black87,
//                                fontSize: 20,
//                                fontWeight: FontWeight.w400,
//                                fontFamily: 'Pacifico'
//                            )
//                        ),
//                        TextSpan(
//                            text: "   stay classy",
//                          style: TextStyle(
//                              fontSize: 13,
//                              color: Colors.black87,
//                              fontFamily: 'GreatVibes'
//
//                          ),
//                        )
//                      ]
//
//                    )
//                  ),
////                  title: Row(
////                    mainAxisSize: MainAxisSize.min,
////                    mainAxisAlignment: MainAxisAlignment.start,
////                    children: <Widget>[
////                      Text(
////                        'Zapfitt',
////                        style: TextStyle(
////                            color: Colors.black87,
////                            fontFamily: 'Pacifico',
////                            fontSize: 20.0,
////                            fontWeight: FontWeight.bold),
////                      ),
////                      SizedBox(
////                        width: 8.0,
////                      ),
////                      Text(
////                        'fit to comfort',
////                        style: TextStyle(
////                          color: Color(0xFF21BFBD),
////                          fontFamily: 'Montsarrat',
////                          fontSize: 20.0,
////                        ),
////                      ),
////                    ],
////                  ),
//                ),
//
//                actions: <Widget>[
//                  Stack(
//                    alignment: Alignment.topRight,
//                    children: <Widget>[
//                      IconButton(
//                        icon: Icon(Icons.shopping_basket),
//                        color: icon_color,
//                        onPressed: () {},
//                      ),
//                      Container(
//                        padding: EdgeInsets.all(0),
//                        height: 15,
//                        width: 15,
//                        decoration: BoxDecoration(
//                          shape: BoxShape.circle,
//                          color: Colors.pinkAccent.shade200
//
//                        ),
//                        child: Center(
//                          child: Text(
//                            '0'
//                          ),
//                        ),
//                      )
//                    ],
//
//                  ),
//                  IconButton(
//                    icon: Icon(Icons.person),
//                    color: icon_color,
//                    onPressed: () {
//
//                    },
//                  ),
//                ],
//              ),
                SliverToBoxAdapter(
                  child: Container(
                    height: 120,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: images_list_view.length,
                        itemBuilder: (context,index){
                          return Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: <Widget>[
                                CircleAvatar(
                                  backgroundImage: AssetImage(images_list_view[index],
                                  ) ,
                                  radius: 30,

                                ),
                                Text(
                                  name_images_list_view[index],
                                  style: TextStyle(
                                      fontSize: 10,
                                      fontFamily: 'Scam'
                                  ),
                                ),
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
                ),
                SliverList(
                    delegate: SliverChildListDelegate([
                      CarouselSlider(
                        onPageChanged: (indexed) {
                          setState(() {
                            current_carousel_index = indexed;
                          });
                        },
                        initialPage: 0,
                        autoPlay: true,

                        enlargeCenterPage: true,
                        enableInfiniteScroll: true,
                        viewportFraction: 1.0,
                        autoPlayCurve: Curves.fastOutSlowIn,
                        autoPlayAnimationDuration: Duration(seconds: 1),
                        // pauseAutoPlayOnTouch: Duration(seconds: 2),
                        //scrollDirection: Axis.vertical,
                        height: 300.0,
                        items: card.map((imgAsset) {
                          return Builder(
                            builder: (BuildContext context) {
                              return Container(
                                  padding: EdgeInsets.all(0),
                                  width: MediaQuery.of(context).size.width,
                                  margin:
                                  EdgeInsets.symmetric(horizontal: 5.0),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                  ),

//                      Text('text ', style: TextStyle(fontSize: 16.0),)
                                  child: Image(
                                    fit: BoxFit.fill,
                                    image: AssetImage(imgAsset),
                                  ));
                            },
                          );
                        }).toList(),
                      ),
                    ])
                ),

                SliverToBoxAdapter(
                  child: Container(
                    height: 150,
                    width: MediaQuery.of(context).size.width,
                    child: Image(
                      image: AssetImage('asset/intro.jpg'),
                      fit: BoxFit.contain,
                    ),
                  ),
                ),


                Horizontal_list_View_title(title: 'TRENDING DESIGNER',),
                Horizontal_List_View(itemList: trending_designer,height: 250.0,width: 150.0,fit: BoxFit.fitHeight,),


                Horizontal_list_View_title(title: "FESTIVE'20",),
                Horizontal_List_View(itemList: festive_20 ,height: 300.0,width: 300.0,fit: BoxFit.fitHeight,),



                Horizontal_list_View_title(title: 'TRENDING PRODUCTS',),
                Horizontal_List_View(itemList: trending_products ,height: 300.0,width: 200.0,fit: BoxFit.cover,),



              ],
            ),

          ),
          ListView(
            children: <Widget>[
              ArticleWidget(
                category: "WHAT'S NEW",
                article_expanded:Padding(
                  padding: const EdgeInsets.only(left:15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Column(
                        //mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          SizedBox(height: 15,),

                          Text('Contemporary Clothing',style: TextStyle(fontFamily: 'Scam'),),
                          SizedBox(height: 15,),
                          Text('Ethnic Clothing',style: TextStyle(fontFamily: 'Scam')),
                          SizedBox(height: 15,),

                          Text('Jewellery',style: TextStyle(fontFamily: 'Scam')),
                          SizedBox(height: 15,),

                          Text('Accessories',style: TextStyle(fontFamily: 'Scam')),
                          SizedBox(height: 15,),


                        ],
                      ),
                    ],
                  ),
                ),
                index_image: 4,
              ),
              ArticleWidget(
                category: "WOMENSWEAR",
                article_expanded:Padding(
                  padding: const EdgeInsets.only(left:15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Column(
                        //mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          SizedBox(height: 10,),
                          Text('All',style: TextStyle(fontFamily: 'Scam'),),SizedBox(height: 15,),
                          Text('Skirts',style: TextStyle(fontFamily: 'Scam')),SizedBox(height: 15,),
                          Text('Tops',style: TextStyle(fontFamily: 'Scam')),SizedBox(height: 15,),
                          Text('Kaftans',style: TextStyle(fontFamily: 'Scam')),SizedBox(height: 15,),
                          Text('Body Suits',style: TextStyle(fontFamily: 'Scam'),),SizedBox(height: 15,),
                          Text('Pants',style: TextStyle(fontFamily: 'Scam')),SizedBox(height: 15,),
                          Text('Blazers',style: TextStyle(fontFamily: 'Scam')),SizedBox(height: 15,),
                          Text('Sarees',style: TextStyle(fontFamily: 'Scam')),SizedBox(height: 15,),
                          Text('Shirts',style: TextStyle(fontFamily: 'Scam')),SizedBox(height: 15,),
                          Text('Tunics',style: TextStyle(fontFamily: 'Scam'),),SizedBox(height: 15,),
                          Text('Jackets',style: TextStyle(fontFamily: 'Scam')),SizedBox(height: 15,),
                          Text('Shrugs',style: TextStyle(fontFamily: 'Scam')),SizedBox(height: 15,),
                          Text('Capes',style: TextStyle(fontFamily: 'Scam')),SizedBox(height: 15,),
                          Text('Jump Suits',style: TextStyle(fontFamily: 'Scam')),SizedBox(height: 15,),
                          Text('Lehengas',style: TextStyle(fontFamily: 'Scam'),),SizedBox(height: 15,),
                          Text('Swim Suits',style: TextStyle(fontFamily: 'Scam')),SizedBox(height: 15,),
                          Text('Shorts',style: TextStyle(fontFamily: 'Scam')),SizedBox(height: 15,),
                          Text('Nightwear',style: TextStyle(fontFamily: 'Scam')),SizedBox(height: 15,),
                          Text('Anarkalis',style: TextStyle(fontFamily: 'Scam')),SizedBox(height: 15,),
                          Text('Croptops',style: TextStyle(fontFamily: 'Scam'),),SizedBox(height: 15,),
                          Text('Sweatshirts',style: TextStyle(fontFamily: 'Scam')),SizedBox(height: 15,),
                          Text('Blouses',style: TextStyle(fontFamily: 'Scam')),SizedBox(height: 15,),
                          Text('Beach Wear',style: TextStyle(fontFamily: 'Scam')),SizedBox(height: 15,),

                        ],
                      ),
                    ],
                  ),
                ),
                index_image: 2,
              ),

              ArticleWidget(
                category: "JEWELLERY",
                article_expanded:Padding(
                  padding: const EdgeInsets.only(left:15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Column(
                        //mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          SizedBox(height: 10,),
                          Text('Earrings',style: TextStyle(fontFamily: 'Scam'),),SizedBox(height: 15,),
                          Text('Cuffs',style: TextStyle(fontFamily: 'Scam')),SizedBox(height: 15,),
                          Text('Bracelets',style: TextStyle(fontFamily: 'Scam')),SizedBox(height: 15,),
                          Text('Necklaes',style: TextStyle(fontFamily: 'Scam')),SizedBox(height: 15,),
                          Text('Rings',style: TextStyle(fontFamily: 'Scam'),),SizedBox(height: 15,),
                          Text('Bangles',style: TextStyle(fontFamily: 'Scam')),SizedBox(height: 15,),
                          Text('Pendants',style: TextStyle(fontFamily: 'Scam')),SizedBox(height: 15,),
                          Text('Amulets',style: TextStyle(fontFamily: 'Scam')),SizedBox(height: 15,),
                          Text('Brooches',style: TextStyle(fontFamily: 'Scam')),SizedBox(height: 15,),
                          Text('Hand Harness',style: TextStyle(fontFamily: 'Scam'),),SizedBox(height: 15,),
                          Text('Earcuffs',style: TextStyle(fontFamily: 'Scam')),SizedBox(height: 15,),
                          Text('Head Pieces',style: TextStyle(fontFamily: 'Scam')),SizedBox(height: 15,),
                          Text('Body Chains',style: TextStyle(fontFamily: 'Scam')),SizedBox(height: 15,),
                          Text('Arm Bands',style: TextStyle(fontFamily: 'Scam')),SizedBox(height: 15,),
                          Text('Ankelets',style: TextStyle(fontFamily: 'Scam'),),SizedBox(height: 15,),
                          Text('Nose Rings',style: TextStyle(fontFamily: 'Scam')),SizedBox(height: 15,),
                          Text('Collar Pins',style: TextStyle(fontFamily: 'Scam')),SizedBox(height: 15,),
                          Text('Hoops',style: TextStyle(fontFamily: 'Scam')),SizedBox(height: 15,),


                        ],
                      ),
                    ],
                  ),
                ),
                index_image: 7,
              ),

              ArticleWidget(
                category: "ACCESSORIES",
                article_expanded:Padding(
                  padding: const EdgeInsets.only(left:15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Column(
                        //mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          SizedBox(height: 10,),
                          Text('All',style: TextStyle(fontFamily: 'Scam'),),SizedBox(height: 15,),
                          Text('Sshawls',style: TextStyle(fontFamily: 'Scam')),SizedBox(height: 15,),
                          Text('Bags',style: TextStyle(fontFamily: 'Scam')),SizedBox(height: 15,),
                          Text('Sandals',style: TextStyle(fontFamily: 'Scam')),SizedBox(height: 15,),
                          Text('Hair Accessories',style: TextStyle(fontFamily: 'Scam'),),SizedBox(height: 15,),
                          Text('Belts',style: TextStyle(fontFamily: 'Scam')),SizedBox(height: 15,),
                          Text('Books',style: TextStyle(fontFamily: 'Scam')),SizedBox(height: 15,),
                          Text('Sunglasses',style: TextStyle(fontFamily: 'Scam')),SizedBox(height: 15,),
                          Text('Juttis',style: TextStyle(fontFamily: 'Scam')),SizedBox(height: 15,),
                          Text('Bindis',style: TextStyle(fontFamily: 'Scam'),),SizedBox(height: 15,),
                          Text('Brooches',style: TextStyle(fontFamily: 'Scam')),SizedBox(height: 15,),
                          Text('Cufflinks',style: TextStyle(fontFamily: 'Scam')),SizedBox(height: 15,),
                          Text('Tie',style: TextStyle(fontFamily: 'Scam')),SizedBox(height: 15,),
                          Text('Buttons',style: TextStyle(fontFamily: 'Scam')),SizedBox(height: 15,),


                        ],
                      ),
                    ],
                  ),
                ),
                index_image: 9,
              ),

              ArticleWidget(
                category: "MENSWEAR",
                article_expanded:Padding(
                  padding: const EdgeInsets.only(left:15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Column(
                        //mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          SizedBox(height: 10,),
                          Text('All',style: TextStyle(fontFamily: 'Scam'),),SizedBox(height: 15,),
                          Text('Suits',style: TextStyle(fontFamily: 'Scam'),),SizedBox(height: 15,),
                          Text('Pants',style: TextStyle(fontFamily: 'Scam')),SizedBox(height: 15,),
                          Text('Blazers',style: TextStyle(fontFamily: 'Scam')),SizedBox(height: 15,),
                          Text('Shirts',style: TextStyle(fontFamily: 'Scam')),SizedBox(height: 15,),
                          Text('Jackets',style: TextStyle(fontFamily: 'Scam')),SizedBox(height: 15,),
                          Text('T-Shirts',style: TextStyle(fontFamily: 'Scam')),SizedBox(height: 15,),
                          Text('Robes',style: TextStyle(fontFamily: 'Scam'),),SizedBox(height: 15,),


                          Text('Capes',style: TextStyle(fontFamily: 'Scam')),SizedBox(height: 15,),
                          Text('Swim Suits',style: TextStyle(fontFamily: 'Scam')),SizedBox(height: 15,),
                          Text('Shorts',style: TextStyle(fontFamily: 'Scam')),SizedBox(height: 15,),
                          Text('Nightwear',style: TextStyle(fontFamily: 'Scam')),SizedBox(height: 15,),
                          Text('Sweatshirts',style: TextStyle(fontFamily: 'Scam')),SizedBox(height: 15,),
                          Text('Sherwani',style: TextStyle(fontFamily: 'Scam')),SizedBox(height: 15,),
                          Text('Beach Wear',style: TextStyle(fontFamily: 'Scam')),SizedBox(height: 15,),
                          Text('Kurta Sets',style: TextStyle(fontFamily: 'Scam')),SizedBox(height: 15,),
                          Text('Hoodies',style: TextStyle(fontFamily: 'Scam')),SizedBox(height: 15,),

                          Text('Shoes',style: TextStyle(fontFamily: 'Scam')),SizedBox(height: 15,),



                        ],
                      ),
                    ],
                  ),
                ),
                index_image: 3,
              ),


              ArticleWidget(
                category: "CELEBRITY CLOSETS",
                article_expanded:Padding(
                  padding: const EdgeInsets.only(left:15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Column(
                        //mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          SizedBox(height: 10,),
                          Text('All',style: TextStyle(fontFamily: 'Scam'),),SizedBox(height: 15,),
                          Text('Tops',style: TextStyle(fontFamily: 'Scam')),SizedBox(height: 15,),
                          Text('Body Suits',style: TextStyle(fontFamily: 'Scam'),),SizedBox(height: 15,),
                          Text('Pants',style: TextStyle(fontFamily: 'Scam')),SizedBox(height: 15,),
                          Text('Tunics',style: TextStyle(fontFamily: 'Scam'),),SizedBox(height: 15,),
                          Text('Lehengas',style: TextStyle(fontFamily: 'Scam'),),SizedBox(height: 15,),
                          Text('Shorts',style: TextStyle(fontFamily: 'Scam')),SizedBox(height: 15,),
                          Text('Sweatshirts',style: TextStyle(fontFamily: 'Scam')),SizedBox(height: 15,),
                          Text('Beach Wear',style: TextStyle(fontFamily: 'Scam')),SizedBox(height: 15,),

                        ],
                      ),
                    ],
                  ),
                ),
                index_image: 8,
              ),

              ArticleWidget(
                category: "FASHION WEEK",
                article_expanded:Padding(
                  padding: const EdgeInsets.only(left:15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Column(
                        //mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          SizedBox(height: 10,),
                          Text('All',style: TextStyle(fontFamily: 'Scam'),),SizedBox(height: 15,),
                          Text('Tops',style: TextStyle(fontFamily: 'Scam')),SizedBox(height: 15,),
                          Text('Body Suits',style: TextStyle(fontFamily: 'Scam'),),SizedBox(height: 15,),
                          Text('Pants',style: TextStyle(fontFamily: 'Scam')),SizedBox(height: 15,),
                          Text('Tunics',style: TextStyle(fontFamily: 'Scam'),),SizedBox(height: 15,),
                          Text('Lehengas',style: TextStyle(fontFamily: 'Scam'),),SizedBox(height: 15,),
                          Text('Shorts',style: TextStyle(fontFamily: 'Scam')),SizedBox(height: 15,),
                          Text('Sweatshirts',style: TextStyle(fontFamily: 'Scam')),SizedBox(height: 15,),
                          Text('Beach Wear',style: TextStyle(fontFamily: 'Scam')),SizedBox(height: 15,),

                        ],
                      ),
                    ],
                  ),
                ),
                index_image: 6,
              ),
              ArticleWidget(
                category: "TRENDS",
                article_expanded:Padding(
                  padding: const EdgeInsets.only(left:15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Column(
                        //mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          SizedBox(height: 10,),
                          Text('All',style: TextStyle(fontFamily: 'Scam'),),SizedBox(height: 15,),
                          Text('Tops',style: TextStyle(fontFamily: 'Scam')),SizedBox(height: 15,),
                          Text('Body Suits',style: TextStyle(fontFamily: 'Scam'),),SizedBox(height: 15,),
                          Text('Pants',style: TextStyle(fontFamily: 'Scam')),SizedBox(height: 15,),
                          Text('Tunics',style: TextStyle(fontFamily: 'Scam'),),SizedBox(height: 15,),
                          Text('Lehengas',style: TextStyle(fontFamily: 'Scam'),),SizedBox(height: 15,),
                          Text('Shorts',style: TextStyle(fontFamily: 'Scam')),SizedBox(height: 15,),
                          Text('Sweatshirts',style: TextStyle(fontFamily: 'Scam')),SizedBox(height: 15,),
                          Text('Beach Wear',style: TextStyle(fontFamily: 'Scam')),SizedBox(height: 15,),

                        ],
                      ),
                    ],
                  ),
                ),
                index_image: 5,
              ),







            ],
          ),
        //  Loading()
        ],

      ),
      bottomNavigationBar: AnimatedContainer(
          duration: Duration(milliseconds: 400),
          height: _isVisible ? 60.0 :0.0,
          child: _isVisible?
          BottomNavyBar(
            selectedIndex: _current_page_Index,
            onItemSelected: (index){
              setState(() {
                _current_page_Index = index;
              });
              _pageController.jumpToPage(index);

            },
            items: <BottomNavyBarItem>[
              BottomNavyBarItem(
                  title: Text('Home',style: TextStyle(color: Colors.black87),),
                  icon: Icon(Icons.home,color: icon_color,)
                  ,activeColor: Colors.grey
              ),
              BottomNavyBarItem(
                  title: Text('Categories',style: TextStyle(color: Colors.black87),),
                  icon: Icon(Icons.list,color: icon_color,)
                  ,activeColor: Colors.grey
              ),
              BottomNavyBarItem(
                  title: Text('Explore',style: TextStyle(color: Colors.black87)),
                  icon: Icon(Icons.search,color: icon_color,)
                  ,activeColor: Colors.grey
              ),
              BottomNavyBarItem(
                  title: Text("What's new",style: TextStyle(color: Colors.black87)),
                  icon: Icon(Icons.star_half,color: icon_color,)
                  ,activeColor: Colors.grey
              ),
              BottomNavyBarItem(
                  title: Text('Share',style: TextStyle(color: Colors.black87)),
                  icon: Icon(Icons.share,color: icon_color,)
                  ,activeColor: Colors.grey
              )

            ],

          ):
//        BottomNavigationBar(
//          type: BottomNavigationBarType.fixed,
//          items: [
//            new BottomNavigationBarItem(
//              icon: Icon(Icons.home),
//              title: Text('Home'),
//            ),
//            new BottomNavigationBarItem(
//              icon: Icon(Icons.card_giftcard),
//              title: Text('Offers'),
//            ),
//            new BottomNavigationBarItem(
//              icon: Icon(Icons.account_box),
//              title: Text('Account'),
//            )
//          ],
//        ):
          Container(

          )
      ),

    );
  }
}
