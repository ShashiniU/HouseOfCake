import 'package:flutter/material.dart';
import 'package:flutter_application_2/Category/CategoryPage.dart';
import 'package:flutter_application_2/otherpages/delivery_details_page.dart';

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
                    color: Colors.black,
                    fontSize: 24,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 40,
              ),
              OrderListItem(
                item: OrderList(
                  itemname: " Theme",
                  qty: 1,
                  itemprice: "Rs2500",
                  bgcolor: Colors.pink,
                  itemimage: "assets/cakecategories/themeCakes/cake5.jpg",
                ),
              ),
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
                              builder: (context) => Deliverydetailspage()));
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
  final String itemprice;
  final String itemimage;
  final int qty;
  final Color bgcolor;

  OrderList(
      {this.itemname, this.itemprice, this.itemimage, this.qty, this.bgcolor});
}

class OrderListItem extends StatelessWidget {
  final OrderList item;

  const OrderListItem({Key key, this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 100,
          height: 100,
          clipBehavior: Clip.antiAlias,
          decoration: BoxDecoration(
              color: item.bgcolor, borderRadius: BorderRadius.circular(20)),
          child: item.itemimage != null
              ? Image.asset(
                  item.itemimage,
                  fit: BoxFit.cover,
                )
              : null,
        ),
        const SizedBox(
          width: 20,
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                item.itemname,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.pink,
                    width: 1,
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                height: 40,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    IconButton(
                      iconSize: 18,
                      padding: const EdgeInsets.all(2),
                      icon: Icon(Icons.remove),
                      onPressed: () {},
                    ),
                    Text(
                      "${item.qty}",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    ),
                    IconButton(
                      iconSize: 18,
                      padding: const EdgeInsets.all(2),
                      icon: Icon(Icons.add),
                      onPressed: () {},
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        Text(
          "${item.itemprice}",
          style: TextStyle(
            color: Colors.grey.shade600,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
