import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeDrawer extends StatefulWidget {
  const HomeDrawer({Key key}) : super(key: key);

  @override
  _HomeDrawerState createState() => _HomeDrawerState();
}

class _HomeDrawerState extends State<HomeDrawer> {
  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;

    return Drawer(
      child: Container(
          width: 100,
          height: _size.height / 2,
          child: ListView(
              padding: EdgeInsets.symmetric(horizontal: 50),
              shrinkWrap: true,
              children: <Widget>[
                SizedBox(
                  height: 100,
                ),
                Center(
                  child: ListTile(
                    title: Text('Home'),
                    onTap: () {},
                  ),
                ),
                ListTile(
                  title: Text('About Us'),
                  onTap: () {},
                ),
                ListTile(
                  title: Text('Programs'),
                  onTap: () {},
                ),
                ListTile(
                  title: Text('Media Room'),
                  onTap: () {},
                ),
                ListTile(
                  title: Text('Why Pakistan'),
                  onTap: () {},
                ),
                ListTile(
                  title: Text('Contact Us'),
                  onTap: () {},
                ),
                SizedBox(
                  height: 50,
                ),
               RaisedButton(
          shape: RoundedRectangleBorder(
                   borderRadius: BorderRadius.circular(30.0)
      ),
                  onPressed: () {
                    // Add your onPressed code here!
                  },
                  color: Color(0xff696F8C),

                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(Icons.menu_book_outlined,color: Colors.white,),

                      Text('Company Director',style: TextStyle(color: Colors.white),)
                    ],
                  ),
                                 ),
                SizedBox(
                  height: 30,
                ),
                RaisedButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0)
                  ),
                  onPressed: () {
                    // Add your onPressed code here!
                  },
                  color: Color(0xff5E8819),

                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(Icons.fact_check_outlined,color: Colors.white,),

                      Text('Register',style: TextStyle(color: Colors.white),)
                    ],
                  ),
                )
              ]

    )

      ),
    );
  }
}
