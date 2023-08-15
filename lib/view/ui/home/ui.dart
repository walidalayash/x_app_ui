import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home>  {
  
  Widget build(BuildContext context) {
     int activeTab = 0;
  void callback(int index) {
    setState(() {
      activeTab = index;
    });
  }
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
         
          bottom: TabBar(
            tabs:  <Widget>[
              Tab(
               text: 'For you'
              ),
               Tab(
               text: 'Following'
              ),
            ],
          ),
          backgroundColor: Colors.black,
          title:SizedBox(
            height: 30,
            width: 30,
            child: Image.asset("assets/x.png"))),
        bottomNavigationBar: getFooter(),
        floatingActionButton:FloatingActionButton(
          backgroundColor: Colors.blue
    ,
        onPressed: () {
          Navigator.of(context).pushNamed('/CreateFeedPage/tweet');
        },
        child: Icon(
          Icons.add,
        color:Colors.white
       )),
        drawer: Drawer(
          backgroundColor: Colors.black,
        child: Container(
          color: Colors.black,
          child: ListView(
            padding: EdgeInsets.zero,

            children: <Widget>[
              
              UserAccountsDrawerHeader(
                 decoration: BoxDecoration(
        color: Colors.black,
    ),
                  accountName: Text('Walid Alayash'),
                  accountEmail: Text('@walidalayash'),
                currentAccountPicture: CircleAvatar(
                  radius: 90.0,
                  backgroundImage: AssetImage('assets/profile.jpg'),
                ),
              ),
              SizedBox(height: 10.0),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: <Widget>[
                    Text('178',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 17.0,
                        fontWeight: FontWeight.w800
                      ),
                    ),
                    Text(' Following',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 17.0
                      )
                    ),
                    SizedBox(width: 10.0),
                    Text('306',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 17.0,
                          fontWeight: FontWeight.w800
                      )
                    ),
                    Text(' Followers',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 17.0
                      )
                    )
                  ],
                ),
              ),
              Divider(color: Colors.grey,),
              ListTile(
                title: Text("Profile",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 21.0,
                    fontWeight: FontWeight.w600
                  ),
                ),
                leading: Icon(
                    Icons.person_outline,
                    color: Colors.white,
                ),
              ),
              ListTile(
                title: Text("Blue",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 21.0,
                      fontWeight: FontWeight.w600
                  ),
                ),
                leading: Icon(
                  Icons.document_scanner,
                  color: Colors.white,
                ),
              ),
              ListTile(
                title: Text("Bookmarks",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 21.0,
                      fontWeight: FontWeight.w600
                  ),
                ),
                leading: Icon(
                  Icons.bookmark_border,
                  color: Colors.white,
                ),
              ),
              ListTile(
                title: Text("Lists",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 21.0,
                      fontWeight: FontWeight.w600
                  ),
                ),
                leading: Icon(
                  Icons.list,
                  color: Colors.white,
                ),
              ),
              
              ListTile(
                title: Text("Spaces",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 23.0,
                      fontWeight: FontWeight.w600
                  ),
                ),
                leading: Icon(
                  Icons.macro_off,
                  color: Colors.white,
                ),
                
              ),
               ListTile(
                title: Text("Monetization",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 23.0,
                      fontWeight: FontWeight.w600
                  ),
                ),
                leading: Icon(
                  Icons.monetization_on,
                  color: Colors.white,
                ),
                
              ),
              Divider(color: Colors.white,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text("Professional Tools",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 15.0,
                          fontWeight: FontWeight.w600
                      ),
                    ),
                  ),
                 Icon(Icons.arrow_right,color: Colors.white,),

                ],
              ),
               Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text("Settings and support",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 15.0,
                      fontWeight: FontWeight.w600
                  ),
                ),
              ),
                               Icon(Icons.arrow_right,color: Colors.white,),

                ])
            ],
          ),
        ),
      ),

        body: Container(
      color: Colors.black,
        child: ListView(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: <Widget>[
                  SizedBox(height: 4.0,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Expanded(
                        flex:1,
                        child: CircleAvatar(
                          radius: 30.0,
                          backgroundImage: AssetImage('assets/masters_of_scale.jpg'),
                        ),
                      ),
                      Expanded(
                        flex: 5,
                        child: Padding(
                          padding: const EdgeInsets.only(left:16.0),
                          child: Column(
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  Text('Walid Alayash',
                                    style: TextStyle(
                                      fontSize: 15.0,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w900
                                    ),
                                  ),
                                  Text(' @walid_alayash',
                                    style: TextStyle(
                                        fontSize: 14.0,
                                        color: Colors.grey,
                                        fontWeight: FontWeight.w400
                                    ),
                                    overflow: TextOverflow.ellipsis,
                                    maxLines: 1
                                  ),
                                  Expanded(
                                    child: Text('.4h',
                                        style: TextStyle(
                                            fontSize: 14.0,
                                            color: Colors.grey,
                                            fontWeight: FontWeight.w400
                                        ),
                                        maxLines: 1
                                    ),
                                  ),
                                  Icon(
                                    Icons.keyboard_arrow_down,
                                    color: Colors.grey,
                                  )
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right:8.0, bottom: 8.0),
                                child: Text('If you wish to run Flutter commands in the regular Windows console, take these steps to add Flutter to the PATH environment variable:If you wish to run Flutter commands in the regular Windows console, take these steps to add Flutter to the PATH environment variable:If you wish to run Flutter commands in the regular Windows console, take these steps to add Flutter to the PATH environment variable:',
                                  softWrap: true,
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14.5,
                                      fontWeight: FontWeight.w400
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right:2.0, bottom: 8.0),
                                child: ClipRRect(
                                  child: Image.asset('assets/flutter.png'),
                                  borderRadius: new BorderRadius.circular(10.0),
                                ),
                              )
                            ],
                            ),
                        ),
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal:8.0),
                    child: Row(
                      children: <Widget>[
                        SizedBox(width: 64.0,),
                        Icon(
                          Icons.comment,
                          color: Colors.grey,
                        ),
                        Text('5', style: TextStyle(
                            color: Colors.grey,
                            fontSize: 14.0,
                            fontWeight: FontWeight.w400
                        )),
                        SizedBox(width: 20.0,),
                        Icon(
                          Icons.autorenew,
                          color: Colors.grey,
                        ),
                        Text('100', style: TextStyle(
                            color: Colors.grey,
                            fontSize: 14.0,
                            fontWeight: FontWeight.w400
                        )),
                        SizedBox(width: 20.0,),
                        Icon(
                          Icons.favorite_border,
                          color: Colors.grey,
                        ),
                        Text('127', style: TextStyle(
                            color: Colors.grey,
                            fontSize: 14.0,
                            fontWeight: FontWeight.w400
                        )),
                        SizedBox(width: 20.0,),
                        Icon(
                          Icons.bar_chart,
                          color: Colors.grey,
                        ),
                        Text('127', style: TextStyle(
                            color: Colors.grey,
                            fontSize: 14.0,
                            fontWeight: FontWeight.w400
                        )),
                        SizedBox(width: 20,),
                        Icon(
                          Icons.share,
                          color: Colors.grey,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Divider(color: Colors.grey,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal:8.0),
                    child: Row(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(left: 44.0),
                            child: Icon(Icons.favorite, color: Colors.grey, size: 14.0),
                          ),
                          SizedBox(width: 10.0,),
                          Text('',
                            style: TextStyle(
                                fontSize: 14.0,
                                color: Colors.grey,
                                fontWeight: FontWeight.w400
                            ),
                          )
                        ]
                    ),
                  ),
                  SizedBox(height: 4.0,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                   const   Expanded(
                        flex:1,
                        child: CircleAvatar(
                          radius: 30.0,
                          backgroundImage: AssetImage('assets/mashables.jpg'),
                        ),
                      ),
                      Expanded(
                        flex: 5,
                        child: Padding(
                          padding: const EdgeInsets.only(left:16.0),
                          child: Column(
                            children: <Widget>[
                              Row(
                                children:const <Widget>  [
                                  Text('Walid Alayash',
                                    style: TextStyle(
                                        fontSize: 15.0,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w900
                                    ),
                                  ),
                                  Text(' @walid_alayash',
                                      style: TextStyle(
                                          fontSize: 14.0,
                                          color: Colors.grey,
                                          fontWeight: FontWeight.w400
                                      ),
                                      overflow: TextOverflow.ellipsis,
                                      maxLines: 1
                                  ),
                                  Expanded(
                                    child: Text('.12h',
                                        style: TextStyle(
                                            fontSize: 14.0,
                                            color: Colors.grey,
                                            fontWeight: FontWeight.w400
                                        ),
                                        maxLines: 1
                                    ),
                                  ),
                                  Icon(
                                    Icons.keyboard_arrow_down,
                                    color: Colors.grey,
                                  )
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right:8.0, bottom: 8.0),
                                child: Text('hello world\'from '+
                                        ' walid alayash',
                                  softWrap: true,
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14.5,
                                      fontWeight: FontWeight.w400
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right:2.0, bottom: 8.0),
                                child: Card(
                                  color: Colors.black,
                                  shape: RoundedRectangleBorder(
                                      side: BorderSide(
                                          color: Colors.grey,
                                        width: 0.25
                                      ),
                                      borderRadius: new BorderRadius.circular(10.0)
                                  ),
                                  child: Column(
                                    children: <Widget>[
                                      ClipRRect(
                                        child: Image.asset('assets/flutter.png'),
                                        borderRadius: new BorderRadius.circular(10.0),
                                      ),
                                      Divider(color: Colors.white, height: 0.25,),
                                     
                                    
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal:8.0),
                    child: Row(
                      children: <Widget>[
                        SizedBox(width: 64.0,),
                        Icon(
                          Icons.comment,
                          color: Colors.grey,
                        ),
                        Text('32', style: TextStyle(
                            color: Colors.white,
                            fontSize: 14.0,
                            fontWeight: FontWeight.w400
                        )),
                        SizedBox(width: 20.0,),
                        Icon(
                          Icons.autorenew,
                          color: Colors.grey,
                        ),
                        Text('127', style: TextStyle(
                            color: Colors.grey,
                            fontSize: 14.0,
                            fontWeight: FontWeight.w400
                        )),
                        SizedBox(width: 20.0,),
                        Icon(
                          Icons.favorite_border,
                          color: Colors.grey,
                        ),
                        Text('127', style: TextStyle(
                            color: Colors.grey,
                            fontSize: 14.0,
                            fontWeight: FontWeight.w400
                        )),
                         SizedBox(width: 20.0,),
                        Icon(
                          Icons.bar_chart,
                          color: Colors.grey,
                        ),
                        Text('127', style: TextStyle(
                            color: Colors.grey,
                            fontSize: 14.0,
                            fontWeight: FontWeight.w400
                        )),
                        SizedBox(width: 20.0,),
                        Icon(
                          Icons.share,
                          color: Colors.grey,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Divider(color: Colors.grey,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal:8.0),
                    child: Row(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(left: 44.0),
                            child: Icon(Icons.favorite, color: Colors.grey, size: 14.0),
                          ),
                          SizedBox(width: 10.0,),
                          Text('ok',
                            style: TextStyle(
                                fontSize: 14.0,
                                color: Colors.grey,
                                fontWeight: FontWeight.w400
                            ),
                          )
                        ]
                    ),
                  ),
               const   SizedBox(height: 4.0,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                   const   Expanded(
                        flex:1,
                        child: CircleAvatar(
                          radius: 30.0,
                          backgroundImage: AssetImage('assets/profile.jpg'),
                        ),
                      ),
                      Expanded(
                        flex: 5,
                        child: Padding(
                          padding: const EdgeInsets.only(left:16.0),
                          child: Column(
                            children: <Widget>[
                              Row(
                                children:const <Widget>[
                                  Text('ali',
                                    style: TextStyle(
                                        fontSize: 15.0,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w900
                                    ),
                                  ),
                                  Text('@ali',
                                      style: TextStyle(
                                          fontSize: 14.0,
                                          color: Colors.grey,
                                          fontWeight: FontWeight.w400
                                      ),
                                      overflow: TextOverflow.ellipsis,
                                      maxLines: 1
                                  ),
                                  Expanded(
                                    child: Text('.12h',
                                        style: TextStyle(
                                            fontSize: 14.0,
                                            color: Colors.white,
                                            fontWeight: FontWeight.w400
                                        ),
                                        maxLines: 1
                                    ),
                                  ),
                                  Icon(
                                    Icons.keyboard_arrow_down,
                                    color: Colors.grey,
                                  )
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right:8.0, bottom: 8.0),
                                child: Text('I am in love with Flutter',
                                  softWrap: true,
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14.5,
                                      fontWeight: FontWeight.w400
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal:8.0),
                    child: Row(
                      children:const <Widget>[
                        SizedBox(width: 64.0,),
                        Icon(
                          Icons.comment,
                          color: Colors.grey,
                        ),
                        Text('32', style: TextStyle(
                            color: Colors.grey,
                            fontSize: 14.0,
                            fontWeight: FontWeight.w400
                        )),
                        SizedBox(width: 20.0,),
                        Icon(
                          Icons.autorenew,
                          color: Colors.grey,
                        ),
                        Text('127', style: TextStyle(
                            color: Colors.grey,
                            fontSize: 14.0,
                            fontWeight: FontWeight.w400
                        )),
                        SizedBox(width: 20.0,),
                        Icon(
                          Icons.favorite_border,
                          color: Colors.grey,
                        ),
                         Text('127', style: TextStyle(
                            color: Colors.grey,
                            fontSize: 14.0,
                            fontWeight: FontWeight.w400
                        )),
                         SizedBox(width: 20.0,),
                        Icon(
                          Icons.bar_chart,
                          color: Colors.grey,
                        ),
                       
                        Text('127', style: TextStyle(
                            color: Colors.grey,
                            fontSize: 14.0,
                            fontWeight: FontWeight.w400
                        )),
                        SizedBox(width: 20.0,),
                        Icon(
                          Icons.share,
                          color: Colors.grey,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Divider(color: Colors.grey,),
          ],

        ),
      ),
        
     
      ),

        
     );
  }
 Widget getFooter() {
    return Container(
      height: 80,
      decoration: BoxDecoration(
          color: Colors.black,
          border: Border(top: BorderSide(color: Colors.black))),
      child: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10, top: 5),
        child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children:[
Icon(Icons.home,color:Colors.white,size: 30,),
Icon(Icons.search,color:Colors.white,size: 30,),
Icon(Icons.group,color:Colors.white,size: 30,),
Icon(Icons.notification_add,color:Colors.white,size: 30,),
Icon(Icons.message,color:Colors.white,size: 30,),

     ] ),
    ));
  }
 
  
}