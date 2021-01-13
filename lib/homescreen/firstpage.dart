import 'package:flutter/material.dart';

import 'profilepage.dart';
import 'cakepage.dart';

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Cake Shop',
        style: TextStyle(fontSize: 25.0),
        ),
        backgroundColor: Color(0xffec407a),
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.notifications),
            onPressed: () {},
          ),
        ],
      ),

      drawer: Drawer(
        child: ListView(
          children: [
            new UserAccountsDrawerHeader(
              accountName: Text('Gehani'),
              accountEmail: Text('gehani@gmail.com'),
              currentAccountPicture: CircleAvatar(
                // backgroundColor: Colors.pink,
                backgroundImage: AssetImage('assets/img3.jpg'),
              ),
              decoration: BoxDecoration(color:Colors.purpleAccent),
            ),
            ListTile(
              leading: Icon(Icons.account_circle),
              title: Text('My Account'),
              onTap: (){
                Navigator.of(context).pop();
                Navigator.push(context, MaterialPageRoute(
                  builder: (BuildContext context) => ProfilePage()
                ));
              },
            ),
            Divider(
              color: Colors.purpleAccent,
              height: 10.0,
            ),
            ListTile(
              leading: Icon(Icons.shopping_basket),
              title: Text('My Order'),
              onTap: (){
                Navigator.of(context).pop();
                Navigator.push(context, MaterialPageRoute(
                    builder: (BuildContext context) => ProfilePage()
                ));
              },
            ),
            Divider(
              color: Colors.purpleAccent,
              height: 10.0,
            ),
            ListTile(
              leading: Icon(Icons.rate_review),
              title: Text('Rate App'),
              onTap: (){
                Navigator.of(context).pop();
                Navigator.push(context, MaterialPageRoute(
                    builder: (BuildContext context) => ProfilePage()
                ));
              },
            ),
            Divider(
              color: Colors.purpleAccent,
              height: 10.0,
            ),
            ListTile(
              leading: Icon(Icons.design_services),
              title: Text('Terms of Services'),
              onTap: (){
                Navigator.of(context).pop();
                Navigator.push(context, MaterialPageRoute(
                    builder: (BuildContext context) => ProfilePage()
                ));
              },
            ),
            Divider(
              color: Colors.purpleAccent,
              height: 10.0,
            ),
            ListTile(
              leading: Icon(Icons.group),
              title: Text('About Us'),
              onTap: (){
                Navigator.of(context).pop();
                Navigator.push(context, MaterialPageRoute(
                    builder: (BuildContext context) => ProfilePage()
                ));
              },
            ),
            Divider(
              color: Colors.purpleAccent,
              height: 10.0,
            ),
            ListTile(
              leading: Icon(Icons.logout),
              title: Text('Logout'),
              onTap: (){
                Navigator.of(context).pop();
                Navigator.push(context, MaterialPageRoute(
                    builder: (BuildContext context) => ProfilePage()
                ));
              },
            ),
          ],
          ),
        ),

        body: ListView(
          padding: EdgeInsets.only(left:8.0),
          children: [
            Container(
             margin: EdgeInsets.symmetric(vertical:5.0),
             height: 65.0, 
             child: ListView(
               scrollDirection: Axis.horizontal,
               children: [
                 Container(
                   height: 70.0,
                  margin: EdgeInsets.all(10),
                  child: RaisedButton(
                    onPressed: () {},
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(80.0)),
                    padding: EdgeInsets.all(0.0),
                    child: Ink(
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [Color(0xffba68c8), Color(0xffec407a)],
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                          ),
                          borderRadius: BorderRadius.circular(30.0)),
                      child: Container(
                        constraints:
                        BoxConstraints(maxWidth: 80.0, minHeight:1.0),
                        alignment: Alignment.center,
                        child: Text(
                          "Top",
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                      ),
                    ),
                  ),
                 ),
                 Container(
                  height: 50.0,
                  margin: EdgeInsets.all(10),
                  child: RaisedButton(
                    onPressed: () {},
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(80.0)),
                    padding: EdgeInsets.all(0.0),
                    child: Ink(
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [Color(0xffce93d8), Color(0xff4a148c)],
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                          ),
                          borderRadius: BorderRadius.circular(30.0)),
                      child: Container(
                        constraints:
                        BoxConstraints(maxWidth:90.0, minHeight:1.0),
                        alignment: Alignment.center,
                        child: Text(
                          "Custom",
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 50.0,
                  margin: EdgeInsets.all(10),
                  child: RaisedButton(
                    onPressed: () {},
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(80.0)),
                    padding: EdgeInsets.all(0.0),
                    child: Ink(
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [Color(0xffce93d8), Color(0xffec407a)],
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                          ),
                          borderRadius: BorderRadius.circular(30.0)),
                      child: Container(
                        constraints:
                        BoxConstraints(maxWidth:100.0, minHeight:1.0),
                        alignment: Alignment.center,
                        child: Text(
                          "Birthday",
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 50.0,
                  margin: EdgeInsets.all(10),
                  child: RaisedButton(
                    onPressed: () {},
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(80.0)),
                    padding: EdgeInsets.all(0.0),
                    child: Ink(
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [Color(0xffce93d8), Color(0xffec407a)],
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                          ),
                          borderRadius: BorderRadius.circular(30.0)),
                      child: Container(
                        constraints:
                        BoxConstraints(maxWidth:110.0, minHeight:1.0),
                        alignment: Alignment.center,
                        child: Text(
                          "Anniversary",
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 50.0,
                  margin: EdgeInsets.all(10),
                  child: RaisedButton(
                    onPressed: () {},
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(80.0)),
                    padding: EdgeInsets.all(0.0),
                    child: Ink(
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [Color(0xffce93d8), Color(0xffec407a)],
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                          ),
                          borderRadius: BorderRadius.circular(30.0)),
                      child: Container(
                        constraints:
                        BoxConstraints(maxWidth:100.0, minHeight:1.0),
                        alignment: Alignment.center,
                        child: Text(
                          "Wedding",
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 50.0,
                  margin: EdgeInsets.all(10),
                  child: RaisedButton(
                    onPressed: () {},
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(80.0)),
                    padding: EdgeInsets.all(0.0),
                    child: Ink(
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [Color(0xffce93d8), Color(0xffec407a)],
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                          ),
                          borderRadius: BorderRadius.circular(30.0)),
                      child: Container(
                        constraints:
                        BoxConstraints(maxWidth:80.0, minHeight:1.0),
                        alignment: Alignment.center,
                        child: Text(
                          "Fruit",
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                      ),
                    ),
                  ),
                ),
               ],
             ),
            ),
            Container(
             height: MediaQuery.of(context).size.height - 50.0,
            width: double.infinity,
            child: CakePage(), 
            ),
          ],
          ),

    );
  }
}