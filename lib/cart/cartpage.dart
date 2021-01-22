import 'package:flutter/material.dart';
import 'package:flutter_application_2/Category/CategoryPage.dart';
import 'package:flutter_application_2/otherpages/appbar.dart';

class CheckoutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => CategoryPage()));
          },
        ),
      ),
      extendBody: true,
      extendBodyBehindAppBar: true,
      body: Stack(
        children: [
          SizedBox(
            height: double.maxFinite,
            width: 80,
            child: Ink(
              decoration: BoxDecoration(
                color: Colors.pink[50],
              ),
            ),
          ),
          ListView(
            padding: const EdgeInsets.fromLTRB(16, kToolbarHeight + 40, 16, 16),
            children: [
              Text(
                "My Orders",
                style: TextStyle(
                    color: Colors.pink,
                    fontSize: 24,
                    fontWeight: FontWeight.w900),
              ),
              const SizedBox(
                height: 40,
              ),
              OrderListItem(),
              SizedBox(
                height: 300,
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 75,
                  right: 75,
                ),
                child: ButtonTheme(
                  minWidth: MediaQuery.of(context).size.width,
                  height: 45,
                  child: RaisedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => OtherAppBar()));
                    },
                    color: Colors.pink,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25)),
                    child: Text(
                      'Checkout',
                      style: TextStyle(color: Colors.white, fontSize: 22),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class OrderList {
  final String itemname;
  final int itemprice;
  final String itemimage;
  final int qty;
  final Color bgcolor;

  OrderList(
      {this.itemname, this.itemprice, this.itemimage, this.qty, this.bgcolor});
}

class OrderListItem extends StatefulWidget {
  @override
  _OrderListItemState createState() => _OrderListItemState();
}

class _OrderListItemState extends State<OrderListItem> {
  int _n = 1;

  get bgcolor => Colors.pink;

  get itemimage => "assets/cakecategories/fruitCakes/cake2.jpg";

  String get itemname => " Fruit Cake";

  get itemprice => 2500;

  void add() {
    setState(() {
      _n++;
    });
  }

  void minus() {
    setState(() {
      if (_n != 0) _n--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 100,
          height: 100,
          clipBehavior: Clip.antiAlias,
          decoration: BoxDecoration(
              color: bgcolor, borderRadius: BorderRadius.circular(20)),
          child: itemimage != null
              ? Image.asset(
                  itemimage,
                  fit: BoxFit.cover,
                )
              : null,
        ),
        const SizedBox(
          width: 100,
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                itemname,
                style: TextStyle(
                  color: Colors.pink,
                  fontSize: 18,
                  fontWeight: FontWeight.w900,
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.pink,
                    width: 2,
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                height: 40,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    IconButton(
                      onPressed: minus,
                      icon: Icon(Icons.remove, color: Colors.black),
                    ),
                    Text('$_n',
                        style: TextStyle(
                            fontSize: 18.0,
                            color: Colors.black,
                            fontWeight: FontWeight.w900)),
                    IconButton(
                      onPressed: add,
                      icon: Icon(
                        Icons.add,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                "\R\s\.\ ${itemprice * _n}",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
