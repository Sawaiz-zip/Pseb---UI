import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pseb/views/Drawer.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final CategoriesScroller categoriesScroller = CategoriesScroller();

  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;

    return DefaultTabController(
      length: 3,
      child: MaterialApp(
          theme: ThemeData(
        // Define the default brightness and colors.
        // brightness: Brightness.dark,
        primaryColor:  Color(0xff5E8819),      //  accentColor: Colors.cyan[600],
          ),
        home: Scaffold(
          resizeToAvoidBottomInset: false,
          backgroundColor: Colors.white,
          appBar: AppBar(
            title: Image.asset(
              'Images/TechPakistan.jpg',
              fit: BoxFit.cover,
              scale: 1.2,
            ),
            backgroundColor: Colors.white,
            elevation: 0.0,
            iconTheme: IconThemeData(color: Colors.teal),
          ),
          endDrawer: HomeDrawer(),
          body: Column(
            children: [
              SizedBox(
                height: 40,
              ),
              Stack(children: [
                Container(
                  height: 140,
                  width: _size.width,
                  padding: EdgeInsets.all(30),
                  decoration: BoxDecoration(
                    color: const Color(0xff474D66),
                    image: DecorationImage(
                      colorFilter: new ColorFilter.mode(
                          Colors.black.withOpacity(0.5), BlendMode.dstATop),
                      scale: 1,
                      image: AssetImage(
                        'Images/Discover.jpg',
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 25),
                  child: Center(
                      child: Column(
                    children: [
                      Text(
                        'Discover',
                        style: TextStyle(fontSize: 35, color: Colors.white),
                      ),
                      Text(
                        'the right services expert',
                        style: TextStyle(fontSize: 15, color: Colors.white),
                      ),
                      TabBar(
                          unselectedLabelColor: Colors.white,
                          indicatorColor: Color(0xff5E8819),
                          labelColor: Color(0xff5E8819),
                          tabs: <Tab>[
                            new Tab(
                              icon: new Icon(Icons.headset_mic_sharp),
                              text: 'Call Centers',
                            ),
                            new Tab(
                              icon: new Icon(Icons.house_siding),
                              text: 'Companies',
                            ),
                            new Tab(
                              icon: new Icon(Icons.person),
                              text: 'FreeLancers',
                            ),
                          ])
                    ],
                  )),
                )
              ]),
              Expanded(
                child: TabBarView(
                  children: [
                    // first tab bar view widget
                    Container(
                      height: 10,
                      child: Card(
                        elevation: 5,
                        child:
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            SizedBox(
                              height: 40,

                              child: TextFormField(
                                decoration: InputDecoration(

                                    hintText: 'Search by company name or Location etc..',
                                    suffixIcon: Icon(Icons.search),
                                    fillColor: Colors.white.withOpacity(0.6),
                                    filled: true,
                                    border: new OutlineInputBorder(

                                      borderRadius: const BorderRadius.all(
                                        Radius.circular(10.0),
                                      ),
                                      borderSide: new BorderSide(
                                        color: Colors.white,
                                        width: 2.0,
                                      ),
                                    ),
                                    labelText: 'Search Company',
                                    // suffixText: destination != null ? destination : '',
                                    labelStyle: new TextStyle(
                                        color: Colors.black, fontSize: 16.0)),
                      ),
                            ),
                      SizedBox(height: 20,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [

                          SizedBox(
                            height: 40,
                            width: 180,
                            child: TextFormField(
                              decoration: InputDecoration(

                                  hintText: 'Select',
                                  suffixIcon: Icon(Icons.arrow_drop_down),
                                  fillColor: Colors.white.withOpacity(0.6),
                                  filled: true,
                                  border: new OutlineInputBorder(

                                    borderRadius: const BorderRadius.all(
                                      Radius.circular(10.0),
                                    ),
                                    borderSide: new BorderSide(
                                      color: Colors.white,
                                      //width: 2.0,
                                    ),
                                  ),
                                  labelText: 'Location',
                                  // suffixText: destination != null ? destination : '',
                                  labelStyle: new TextStyle(
                                      color: Colors.black, fontSize: 16.0)),
                            ),


                            ),
                          SizedBox(
                            height: 40,
                            width: 180,
                            child: TextFormField(
                              decoration: InputDecoration(

                                  hintText: 'Placeholder',
                                  suffixIcon: Icon(Icons.arrow_drop_down),
                                  fillColor: Colors.white.withOpacity(0.6),
                                  filled: true,
                                  border: new OutlineInputBorder(

                                    borderRadius: const BorderRadius.all(
                                      Radius.circular(10.0),
                                    ),
                                    borderSide: new BorderSide(
                                      color: Colors.white,
                                      //width: 2.0,
                                    ),
                                  ),
                                  labelText: 'Business Activity',
                                  // suffixText: destination != null ? destination : '',
                                  labelStyle: new TextStyle(
                                      color: Colors.black, fontSize: 16.0)),
                            ),


                          ),
                        ],
                      ),

                            SizedBox(
                              height: 40,
                              width: 180,
                              child: TextFormField(
                                decoration: InputDecoration(

                                    hintText: 'Placeholder',
                                    suffixIcon: Icon(Icons.arrow_drop_down),
                                    fillColor: Colors.white.withOpacity(0.6),
                                    filled: true,
                                    border: new OutlineInputBorder(

                                      borderRadius: const BorderRadius.all(
                                        Radius.circular(10.0),
                                      ),
                                      borderSide: new BorderSide(
                                        color: Colors.white,
                                        //width: 2.0,
                                      ),
                                    ),
                                    labelText: 'Service',
                                    // suffixText: destination != null ? destination : '',
                                    labelStyle: new TextStyle(
                                        color: Colors.black, fontSize: 16.0)),

                              ),



                            ),
                          ],
                          )

                        ),
                    ),
                    Container(
                      height: 10,
                      child: Card(
                          elevation: 5,
                          child:
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              SizedBox(
                                height: 40,

                                child: TextFormField(
                                  decoration: InputDecoration(

                                      hintText: 'Search by company name or Location etc..',
                                      suffixIcon: Icon(Icons.search),
                                      fillColor: Colors.white.withOpacity(0.6),
                                      filled: true,
                                      border: new OutlineInputBorder(

                                        borderRadius: const BorderRadius.all(
                                          Radius.circular(10.0),
                                        ),
                                        borderSide: new BorderSide(
                                          color: Colors.white,
                                          width: 2.0,
                                        ),
                                      ),
                                      labelText: 'Search Company',
                                      // suffixText: destination != null ? destination : '',
                                      labelStyle: new TextStyle(
                                          color: Colors.black, fontSize: 16.0)),
                                ),
                              ),
                              SizedBox(height: 20,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [

                                  SizedBox(
                                    height: 40,
                                    width: 180,
                                    child: TextFormField(
                                      decoration: InputDecoration(

                                          hintText: 'Select',
                                          suffixIcon: Icon(Icons.arrow_drop_down),
                                          fillColor: Colors.white.withOpacity(0.6),
                                          filled: true,
                                          border: new OutlineInputBorder(

                                            borderRadius: const BorderRadius.all(
                                              Radius.circular(10.0),
                                            ),
                                            borderSide: new BorderSide(
                                              color: Colors.white,
                                              //width: 2.0,
                                            ),
                                          ),
                                          labelText: 'Location',
                                          // suffixText: destination != null ? destination : '',
                                          labelStyle: new TextStyle(
                                              color: Colors.black, fontSize: 16.0)),
                                    ),


                                  ),
                                  SizedBox(
                                    height: 40,
                                    width: 180,
                                    child: TextFormField(
                                      decoration: InputDecoration(

                                          hintText: 'Placeholder',
                                          suffixIcon: Icon(Icons.arrow_drop_down),
                                          fillColor: Colors.white.withOpacity(0.6),
                                          filled: true,
                                          border: new OutlineInputBorder(

                                            borderRadius: const BorderRadius.all(
                                              Radius.circular(10.0),
                                            ),
                                            borderSide: new BorderSide(
                                              color: Colors.white,
                                              //width: 2.0,
                                            ),
                                          ),
                                          labelText: 'Business Activity',
                                          // suffixText: destination != null ? destination : '',
                                          labelStyle: new TextStyle(
                                              color: Colors.black, fontSize: 16.0)),
                                    ),


                                  ),
                                ],
                              ),

                              SizedBox(
                                height: 40,
                                width: 180,
                                child: TextFormField(
                                  decoration: InputDecoration(

                                      hintText: 'Placeholder',
                                      suffixIcon: Icon(Icons.arrow_drop_down),
                                      fillColor: Colors.white.withOpacity(0.6),
                                      filled: true,
                                      border: new OutlineInputBorder(

                                        borderRadius: const BorderRadius.all(
                                          Radius.circular(10.0),
                                        ),
                                        borderSide: new BorderSide(
                                          color: Colors.white,
                                          //width: 2.0,
                                        ),
                                      ),
                                      labelText: 'Service',
                                      // suffixText: destination != null ? destination : '',
                                      labelStyle: new TextStyle(
                                          color: Colors.black, fontSize: 16.0)),

                                ),



                              ),
                            ],
                          )

                      ),
                    ),
                    Container(
                      height: 10,
                      child: Card(
                          elevation: 5,
                          child:
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              SizedBox(
                                height: 40,

                                child: TextFormField(
                                  decoration: InputDecoration(

                                      hintText: 'Search by company name or Location etc..',
                                      suffixIcon: Icon(Icons.search),
                                      fillColor: Colors.white.withOpacity(0.6),
                                      filled: true,
                                      border: new OutlineInputBorder(

                                        borderRadius: const BorderRadius.all(
                                          Radius.circular(10.0),
                                        ),
                                        borderSide: new BorderSide(
                                          color: Colors.white,
                                          width: 2.0,
                                        ),
                                      ),
                                      labelText: 'Search Company',
                                      // suffixText: destination != null ? destination : '',
                                      labelStyle: new TextStyle(
                                          color: Colors.black, fontSize: 16.0)),
                                ),
                              ),
                              SizedBox(height: 20,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [

                                  SizedBox(
                                    height: 40,
                                    width: 180,
                                    child: TextFormField(
                                      decoration: InputDecoration(

                                          hintText: 'Select',
                                          suffixIcon: Icon(Icons.arrow_drop_down),
                                          fillColor: Colors.white.withOpacity(0.6),
                                          filled: true,
                                          border: new OutlineInputBorder(

                                            borderRadius: const BorderRadius.all(
                                              Radius.circular(10.0),
                                            ),
                                            borderSide: new BorderSide(
                                              color: Colors.white,
                                              //width: 2.0,
                                            ),
                                          ),
                                          labelText: 'Location',
                                          // suffixText: destination != null ? destination : '',
                                          labelStyle: new TextStyle(
                                              color: Colors.black, fontSize: 16.0)),
                                    ),


                                  ),
                                  SizedBox(
                                    height: 40,
                                    width: 180,
                                    child: TextFormField(
                                      decoration: InputDecoration(

                                          hintText: 'Placeholder',
                                          suffixIcon: Icon(Icons.arrow_drop_down),
                                          fillColor: Colors.white.withOpacity(0.6),
                                          filled: true,
                                          border: new OutlineInputBorder(

                                            borderRadius: const BorderRadius.all(
                                              Radius.circular(10.0),
                                            ),
                                            borderSide: new BorderSide(
                                              color: Colors.white,
                                              //width: 2.0,
                                            ),
                                          ),
                                          labelText: 'Business Activity',
                                          // suffixText: destination != null ? destination : '',
                                          labelStyle: new TextStyle(
                                              color: Colors.black, fontSize: 16.0)),
                                    ),


                                  ),
                                ],
                              ),

                              SizedBox(
                                height: 40,
                                width: 180,
                                child: TextFormField(
                                  decoration: InputDecoration(

                                      hintText: 'Placeholder',
                                      suffixIcon: Icon(Icons.arrow_drop_down),
                                      fillColor: Colors.white.withOpacity(0.6),
                                      filled: true,
                                      border: new OutlineInputBorder(

                                        borderRadius: const BorderRadius.all(
                                          Radius.circular(10.0),
                                        ),
                                        borderSide: new BorderSide(
                                          color: Colors.white,
                                          //width: 2.0,
                                        ),
                                      ),
                                      labelText: 'Service',
                                      // suffixText: destination != null ? destination : '',
                                      labelStyle: new TextStyle(
                                          color: Colors.black, fontSize: 16.0)),

                                ),



                              ),
                            ],
                          )

                      ),
                    ),
                    // second tab bar viiew widget
                  ],
                ),
              ),
              SizedBox(
                height: 300,
                child: Padding(
                  padding: const EdgeInsets.only(top:50.0),
                  child: Column(
                    children: [
                      Text('Just Looking Around',style: TextStyle(color: Color(0xff474D66),fontSize: 20),),
                      Text('Let us suggest you some trending categories',style: TextStyle(color: Color(0xff5E8819),fontSize: 10),),
                      categoriesScroller,
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
class CategoriesScroller extends StatelessWidget {
  const CategoriesScroller();

  @override
  Widget build(BuildContext context) {
    final double categoryHeight = MediaQuery.of(context).size.height * 0.30 - 50;
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      scrollDirection: Axis.horizontal,
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
        child: FittedBox(
          fit: BoxFit.fill,
          alignment: Alignment.topCenter,
          child: Row(
            children: <Widget>[
           Padding(
             padding: const EdgeInsets.all(8.0),
             child: Container(
               child: Column(
                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                 children: [
                   Icon(Icons.videogame_asset,color: Color(0xff7EA937),size: 50,),
                   Text('Game Dev',style: TextStyle(fontSize: 12),),
                 ],
               ),
              height: 150,
              width: 100,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Color(0xffD8DAE5),
                ),
                borderRadius: BorderRadius.circular(10.0),
              ),
              ),
           ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(Icons.headset_mic,color: Color(0xff7EA937),size: 50,),
                      Text('Call Centers',style: TextStyle(fontSize: 12),),
                    ],
                  ),
                  height: 150,
                  width: 100,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Color(0xffD8DAE5),
                    ),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(Icons.calculate_outlined,color: Color(0xff7EA937),size: 50,),
                      Text('Accounting',style: TextStyle(fontSize: 12),),
                    ],
                  ),
                  height: 150,
                  width: 100,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Color(0xffD8DAE5),
                    ),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
              ), Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(Icons.wifi,color: Color(0xff7EA937),size: 50,),
                      Text('Marketing',style: TextStyle(fontSize: 12),),
                    ],
                  ),
                  height: 150,
                  width: 100,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Color(0xffD8DAE5),
                    ),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
              ), Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(Icons.videogame_asset,color: Color(0xff7EA937),size: 50,),
                      Text('Game dev',style: TextStyle(fontSize: 12),),
                    ],
                  ),
                  height: 150,
                  width: 100,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Color(0xffD8DAE5),
                    ),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
              ),



            ],
          ),
        ),
      ),
    );
  }
}

