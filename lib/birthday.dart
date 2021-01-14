import 'package:flutter/material.dart';

class BirthdayPage extends StatefulWidget {
  @override
  _BirthdayPageState createState() => _BirthdayPageState();
}

class _BirthdayPageState extends State<BirthdayPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff2d112b),
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.only(top:15.0, left:10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  icon: Icon(Icons.arrow_back), 
                  color: Colors.white,
                  onPressed: (){},
                  ),
                  Container(
                    width: 125.0,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                          icon: Icon(Icons.search),
                          color: Colors.white,
                          onPressed: (){},
                         ),
                         IconButton(
                          icon: Icon(Icons.notifications),
                          color: Colors.white,
                          onPressed: (){},
                         ),
                      ],
                      ),
                  ),
              ],
              ),
          ),

          SizedBox(height:25.0),
          Padding(
            padding: EdgeInsets.only(left:40.0),
            child: Row(
              children: [
                Text('Birthday',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 26.0
                ),
                ),
                SizedBox(width:10.0),
                Text('Cake',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 26.0
                ),
                ),
              ],
              ),
            ),
            SizedBox(height:40.0),
            Container(
              height: MediaQuery.of(context).size.height - 170.0,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(topLeft:Radius.circular(75.0)),
                ),
                child: ListView(
                  scrollDirection: Axis.vertical,
                  primary: false,
                  padding: EdgeInsets.only(left:25.0,right:20.0),
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top:35.0),
                      child: Container(
                        height: MediaQuery.of(context).size.height - 150.0,
                        child: ListView(
                          children: [
                            _buildBirthdayCakeItem('assets/imgcatg/birthday/birthday.jpg', 'Structured with rose \nflowers ribbon\ncake', 'Rs.3000/='),
                            _buildBirthdayCakeItem('assets/imgcatg/birthday/birthday1.jpg', 'Chocolate ribbon cake', 'Rs.3500/='),
                            _buildBirthdayCakeItem('assets/imgcatg/birthday/birthday4.jpg', 'Butter cake with\nshaded color for\na princes', 'Rs.4000/='),
                            _buildBirthdayCakeItem('assets/imgcatg/birthday/birthday3.jpg', 'Simple round shaped\nRibbon cake', 'Rs.3000/='),
                            _buildBirthdayCakeItem('assets/imgcatg/birthday/birthday5.jpg', 'Structured Rose cake', 'Rs.4000/=')
                          ],
                        ),
                      ),
                      ),
                  ],
                  ),
            ),
        ],
      )
    );
  }
    Widget _buildBirthdayCakeItem(String imgPlace, String cakename, String cakeprice){
    return Padding(
      padding: EdgeInsets.only(left:10.0, right:10.0, top:18.0),
      child: InkWell(
        onTap: (){},
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              child: Row(
                children: [
                  Hero(
                    tag: imgPlace,
                    child: Image(
                      image: AssetImage(imgPlace),
                      fit: BoxFit.cover,
                      height: 95.0,
                      width: 95.0,
                    ),
                  ),
                  SizedBox(width:10.0),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        cakename,
                        style: TextStyle(
                          fontSize: 17.0,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                      Text(
                        cakeprice,
                        style: TextStyle(
                          fontSize: 15.0,
                          color: Colors.grey
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            IconButton(
              icon: Icon(Icons.shopping_basket), 
              color: Colors.grey,
              onPressed: (){},
              ),
          ],
          ),
      ),
    );
  }
}