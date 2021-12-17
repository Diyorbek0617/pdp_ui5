import 'package:flutter/material.dart';


class HomePage extends StatefulWidget {
  static final String id = "home_page";

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            // #head
            Container(
              height: 250,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/ic_header.jpg'),
                    fit: BoxFit.cover
                ),
              ),
              child: Container(
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.bottomRight,
                        colors: [
                          Colors.black.withOpacity(.8),
                          Colors.black.withOpacity(.4),
                        ]
                    )
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    // #title
                    Text("Best Hotels Ever", textAlign: TextAlign.center, style: TextStyle(color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold),),
                    SizedBox(height: 30,),
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 3),
                      margin: EdgeInsets.symmetric(horizontal: 40),
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.white,
                      ),
                      // #search build
                      child: TextField(
                       textInputAction:TextInputAction.search,
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            prefixIcon: Icon(Icons.search, color: Colors.grey,),
                            hintStyle: TextStyle(color: Colors.grey, fontSize: 18),
                            hintText: "Search for hotels...",
                        ),
                      ),
                    ),
                    SizedBox(height: 30,)
                  ],
                ),
              ),
            ),
            SizedBox(height: 30,),
            // body
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  // #title different of hotel
                  Text("Best Hotels", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.grey[800], fontSize: 20),),
                  SizedBox(height: 20,),
                  Container(
                    height: 200,
                    // #image listview1
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        makeItem(image: 'assets/images/ic_hotel1.jpg', title: 'Hotel 1',icon:Icon(Icons.favorite,color: Colors.red,)),
                        makeItem(image: 'assets/images/ic_hotel2.jpg', title: 'Hotel 2',icon:Icon(Icons.favorite,color: Colors.red,)),
                        makeItem(image: 'assets/images/ic_hotel3.jpg', title: 'Hotel 3',icon:Icon(Icons.favorite,color: Colors.red,)),
                        makeItem(image: 'assets/images/ic_hotel4.jpg', title: 'Hotel 4',icon:Icon(Icons.favorite,color: Colors.red,)),
                        makeItem(image: 'assets/images/ic_hotel5.jpg', title: 'Hotel 5',icon:Icon(Icons.favorite,color: Colors.red,))
                      ],
                    ),
                  ),
                  SizedBox(height: 20,),
                  // #title different of hotel
                  Text("Airport Hotels", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.grey[800], fontSize: 20),),
                  SizedBox(height: 20,),
                  Container(
                    height: 200,
                    // #image listview2
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        makeItem(image: 'assets/images/ic_hotel5.jpg', title: 'Hotel 1',icon:Icon(Icons.favorite,color: Colors.red,)),
                        makeItem(image: 'assets/images/ic_hotel4.jpg', title: 'Hotel 2',icon:Icon(Icons.favorite,color: Colors.red,)),
                        makeItem(image: 'assets/images/ic_hotel3.jpg', title: 'Hotel 3',icon:Icon(Icons.favorite,color: Colors.red,)),
                        makeItem(image: 'assets/images/ic_hotel2.jpg', title: 'Hotel 4',icon:Icon(Icons.favorite,color: Colors.red,)),
                        makeItem(image: 'assets/images/ic_hotel1.jpg', title: 'Hotel 5',icon:Icon(Icons.favorite,color: Colors.red,))
                      ],
                    ),
                  ),
                  SizedBox(height: 20,),
                  // #title different of hotel
                  Text("Resort Hotels", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.grey[800], fontSize: 20),),
                  SizedBox(height: 20,),
                  Container(
                    height: 200,
                    // #image listview3
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        makeItem(image: 'assets/images/ic_hotel3.jpg', title: 'Hotel 1',icon:Icon(Icons.favorite,color: Colors.red,)),
                        makeItem(image: 'assets/images/ic_hotel4.jpg', title: 'Hotel 2',icon:Icon(Icons.favorite,color: Colors.red,)),
                        makeItem(image: 'assets/images/ic_hotel5.jpg', title: 'Hotel 3',icon:Icon(Icons.favorite,color: Colors.red,)),
                        makeItem(image: 'assets/images/ic_hotel2.jpg', title: 'Hotel 4',icon:Icon(Icons.favorite,color: Colors.red,)),
                        makeItem(image: 'assets/images/ic_hotel1.jpg', title: 'Hotel 5',icon:Icon(Icons.favorite,color: Colors.red,))
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
    // #aspectratio
  Widget makeItem({image, title,icon}) {
    return AspectRatio(
      aspectRatio: 1 / 1,
      // #container image
      child: Container(
        margin: EdgeInsets.only(right: 15),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            image: DecorationImage(
                image: AssetImage(image),
                fit: BoxFit.cover
            )
        ),
        // #container gradient
        child: Container(
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              gradient: LinearGradient(
                  begin: Alignment.bottomRight,
                  colors: [
                    Colors.black.withOpacity(.8),
                    Colors.black.withOpacity(.2),
                  ]
              )
          ),
          child: Stack(
            // mainAxisAlignment: MainAxisAlignment.end,
            // crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              // #hotel text
              Align(
                  alignment: Alignment.bottomLeft,
                  child: Text(title, style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
              ),
              // #icon
              Align(
                  alignment: Alignment.bottomRight,
                  child:icon,
              ),
            ],
          ),
        ),
      ),
    );
  }
}