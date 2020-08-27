import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: MyApp(),debugShowCheckedModeBanner: false));
}

class MyApp extends StatefulWidget {
  @override
  _MyApp createState() => _MyApp();
}

class _MyApp extends State<MyApp> {

  List<Widget> _randomChildren;

// Children with random heights - You can build your widgets of unknown heights here
// I'm just passing the context in case if any widgets built here needs access to context based data like Theme or MediaQuery
  List<Widget> _randomHeightWidgets(BuildContext context) {
    _randomChildren ??= List.generate(1, (index) {

      return Column(children: <Widget>[
        CircleAvatar(
          backgroundImage: ExactAssetImage("assets/profile.jpg"),
          maxRadius: 60,
          minRadius: 60,
        ),
        SizedBox(height: 19,),
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[Text("   Samantha Smith",style: TextStyle(color: Colors.white,fontSize: 22,fontWeight: FontWeight.bold,),),

            Text("    @imsamanthasmith",style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold),),

          ],),
        SizedBox(height: 30,),
        Row( mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[

            RichText(
              textAlign: TextAlign.left,
              text: TextSpan(
                text: "1.2m",
                style: TextStyle(
                    color: Colors.white,

                    fontSize: 20,
                    fontWeight: FontWeight.bold),
                children: <TextSpan>[

                  TextSpan(
                      text: '\n  Liked',
                      style: TextStyle(
                        fontSize: 13,
                        color: Colors.grey,

                      )),
                ],
              ),
            ),

            RichText(
              textAlign: TextAlign.left,
              text: TextSpan(
                text: " 12.8k",
                style: TextStyle(
                    color: Colors.white,

                    fontSize: 20,
                    fontWeight: FontWeight.bold),
                children: <TextSpan>[

                  TextSpan(
                      text: '\nFollowers',
                      style: TextStyle(
                        fontSize: 13,
                        color: Colors.grey,

                      )),
                ],
              ),
            ), RichText(
              textAlign: TextAlign.left,
              text: TextSpan(
                text: " 1.9k",
                style: TextStyle(
                    color: Colors.white,

                    fontSize: 20,
                    fontWeight: FontWeight.bold),
                children: <TextSpan>[

                  TextSpan(
                      text: '\nFollowing',
                      style: TextStyle(
                        fontSize: 13,
                        color: Colors.grey,

                      )),
                ],
              ),
            ),
          ],),
        SizedBox(height: 23,),
      ]
      );
    });

    return _randomChildren;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0.0,
      ),
      backgroundColor: Colors.black,
      body: DefaultTabController(
        length: 3,
        child: NestedScrollView(
          physics: const BouncingScrollPhysics(),

          headerSliverBuilder: (context, _) {
            return [
              SliverList(
                delegate: SliverChildListDelegate(
                  _randomHeightWidgets(context),
                ),
              ),
            ];
          },
// You tab view goes here
          body: Column(
            children: <Widget>[ Container(

              decoration: BoxDecoration(
                  color: Colors.grey[900],
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(34),topRight: Radius.circular(34)),
                  boxShadow:[
                    BoxShadow(
                      color:Colors.grey[900],
                      offset:Offset(0.0,6.0),
                      blurRadius:6.0,)]
              ), child:
            TabBar(
              indicatorColor: Color(0xffF15C22),
              unselectedLabelColor: Colors.black,


              tabs: [
                Tab(child:Icon(Icons.dashboard,color: Colors.white,size: 28,) ),
                Tab(child: Icon(Icons.favorite_border,color: Colors.white, size: 28,),),
                Tab(child: Icon(Icons.save_alt,color: Colors.white, size: 28,),),
              ],
            ),),
              Expanded(
                child: TabBarView(
                  children: [
                    GridView.count(
                      physics:const NeverScrollableScrollPhysics(),
                      crossAxisCount: 3,
                      primary: false,
                      crossAxisSpacing: 5.0,
                      mainAxisSpacing: 5.0,
                      childAspectRatio: 0.8,
                      children: <Widget>[ Container(
                        alignment: Alignment.center,
                        color: Colors.white,
                        child: Column(
                          children: <Widget>[
                            GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => MyApp()),
                                  );
                                },
                                child:  Image.asset("assets/egg2.jpg",fit: BoxFit.cover,height: 145)),

                          ],
                        ),
                      ),
                        Container(
                          alignment: Alignment.center,
                          color: Colors.white,
                          child: Column(
                            children: <Widget>[
                              GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => MyApp()),
                                    );
                                  },
                                  child:  Image.asset("assets/egg2.jpg",fit: BoxFit.cover,height: 145)),

                            ],
                          ),
                        ),
                        Container(
                          color: Colors.white,
                          child: Column(
                            children: <Widget>[
                              GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => MyApp()),
                                    );
                                  },
                                  child: Image.asset("assets/mag.jpg",fit: BoxFit.cover,height: 145)),

                            ],
                          ),
                        ),


                        Container(
                          alignment: Alignment.center,
                          color: Colors.white,
                          child: Column(
                            children: <Widget>[
                              GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => MyApp()),
                                    );
                                  },
                                  child:  Image.asset("assets/egg2.jpg",fit: BoxFit.cover,height: 145)),

                            ],
                          ),
                        ),
                        Container(
                          alignment: Alignment.center,
                          color: Colors.white,
                          child: Column(
                            children: <Widget>[
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) =>MyApp ()),
                                  );
                                },
                                child: Image.asset("assets/pot.jpg",fit: BoxFit.cover,height: 145),)

                            ],
                          ),
                        ),
                        Container(
                          alignment: Alignment.center,
                          color: Colors.white,
                          child: Column(
                            children: <Widget>[
                              Image.asset("assets/pizza.jpg",fit: BoxFit.cover,height: 145),

                            ],
                          ),
                        ),
                        Container(
                          alignment: Alignment.center,
                          color: Colors.white,
                          child: Column(
                            children: <Widget>[
                              Image.asset("assets/coo.jpg",fit: BoxFit.cover,height: 145),

                            ],
                          ),
                        ),
                        Container(
                          alignment: Alignment.center,
                          color: Colors.white,
                          child: Column(
                            children: <Widget>[
                              Image.asset("assets/coo.jpg",fit: BoxFit.cover,height: 145),

                            ],
                          ),
                        ),
                        Container(
                          alignment: Alignment.center,
                          color: Colors.white,
                          child: Column(
                            children: <Widget>[
                              Image.asset("assets/thali.jpg",fit: BoxFit.cover,height: 145),

                            ],
                          ),
                        ),
                        Container(
                          alignment: Alignment.center,
                          color: Colors.white,
                          child: Column(
                            children: <Widget>[
                              Image.asset("assets/coo.jpg",fit: BoxFit.cover,height: 145),

                            ],
                          ),
                        ),
                        Container(
                          alignment: Alignment.center,
                          color: Colors.white,
                          child: Column(
                            children: <Widget>[
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) =>MyApp ()),
                                  );
                                },
                                child: Image.asset("assets/pot.jpg",fit: BoxFit.cover,height: 145),)

                            ],
                          ),
                        ),
                        Container(
                          color: Colors.white,
                          child: Column(
                            children: <Widget>[
                              GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => MyApp()),
                                    );
                                  },
                                  child: Image.asset("assets/mag.jpg",fit: BoxFit.cover,height: 145)),

                            ],
                          ),
                        ),
                        Container(
                          alignment: Alignment.center,
                          color: Colors.white,
                          child: Column(
                            children: <Widget>[
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) =>MyApp ()),
                                  );
                                },
                                child: Image.asset("assets/pot.jpg",fit: BoxFit.cover,height: 145),)

                            ],
                          ),
                        ), Container(
                          alignment: Alignment.center,
                          color: Colors.white,
                          child:
                          GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => MyApp()),
                                );
                              },
                              child:  Image.asset("assets/pizza.jpg",fit: BoxFit.cover,height: 145,)),

                        ),
                        Container(
                          color: Colors.white,
                          child: Column(
                            children: <Widget>[
                              GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => MyApp()),
                                    );
                                  },
                                  child: Image.asset("assets/mag.jpg",fit: BoxFit.cover,height: 145)),

                            ],
                          ),
                        ),
                        Container(
                          alignment: Alignment.center,
                          color: Colors.white,
                          child: Column(
                            children: <Widget>[
                              GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => MyApp()),
                                    );
                                  },
                                  child:  Image.asset("assets/egg2.jpg",fit: BoxFit.cover,height: 145)),

                            ],
                          ),
                        ),
                        Container(
                          alignment: Alignment.center,
                          color: Colors.white,
                          child: Column(
                            children: <Widget>[
                              GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => MyApp()),
                                    );
                                  },
                                  child:  Image.asset("assets/egg2.jpg",fit: BoxFit.cover,height: 145)),

                            ],
                          ),
                        ),
                        Container(
                          color: Colors.white,
                          child: Column(
                            children: <Widget>[
                              GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => MyApp()),
                                    );
                                  },
                                  child: Image.asset("assets/mag.jpg",fit: BoxFit.cover,height: 145)),

                            ],
                          ),
                        ),

                      ],
                    ),
                    ListView(
                      children: <Widget>[
                        ListTile(title: Text('Yogita', style: TextStyle(
                            color: Colors.red,

                            fontSize: 20,
                            fontWeight: FontWeight.bold),)),
                        ListTile(title: Text('Yogita', style: TextStyle(
                            color: Colors.red,

                            fontSize: 20,
                            fontWeight: FontWeight.bold),)),
                        ListTile(title: Text('Yogita', style: TextStyle(
                            color: Colors.red,

                            fontSize: 20,
                            fontWeight: FontWeight.bold),)),
                        ListTile(title: Text('Yogita', style: TextStyle(
                            color: Colors.red,

                            fontSize: 20,
                            fontWeight: FontWeight.bold),)),

                      ],
                    ),
                    ListView(
                      padding: EdgeInsets.zero,
                      children: Colors.primaries.map((color) {
                        return Container(color: color, height: 150.0);
                      }).toList(),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

