import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_2/homescreen/homepage.dart';

import 'package:flutter_application_2/widget.dart';
import 'package:image_picker/image_picker.dart';

class CustumDesignPAge extends StatefulWidget {
  @override
  _CustumDesignPAge createState() => _CustumDesignPAge();
}

class _CustumDesignPAge extends State<CustumDesignPAge>
    with AutomaticKeepAliveClientMixin<CustumDesignPAge> {
  bool get wantKeepAlive => true;
  File file;
  TextEditingController _productDescription = TextEditingController();
  TextEditingController _productPrice = TextEditingController();
  TextEditingController _productTittle = TextEditingController();
  TextEditingController _category = TextEditingController();
  String productId = DateTime.now().millisecondsSinceEpoch.toString();
  bool uploading = false;

  @override
  // ignore: must_call_super
  Widget build(BuildContext context) {
    return file == null ? displayAdinHomeScreen() : displayUploadFormScreen();
  }

  displayAdinHomeScreen() {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: Text(
          'Add Your Favorite Design',
          style: TextStyle(fontSize: 18.0),
        ),
        backgroundColor: Color(0xffec407a),
      ),
      body: getAdminbodyScreen(),
    );
  }

  getAdminbodyScreen() {
    return Container(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.shop_two_outlined,
              color: Colors.pinkAccent,
              size: 200,
            ),
            Padding(
              padding: EdgeInsets.only(top: 20),
              child: RaisedButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(9.0)),
                child: Text(
                  "Upload your cake design",
                  style: TextStyle(fontSize: 20.0, color: Colors.white),
                ),
                color: Colors.green,
                onPressed: () => takeImage(context),
              ),
            ),
          ],
        ),
      ),
    );
  }

  takeImage(mContext) {
    return showDialog(
        context: mContext,
        builder: (con) {
          return SimpleDialog(
            title: Text(
              "Item Image",
              style:
                  TextStyle(color: Colors.green, fontWeight: FontWeight.bold),
            ),
            children: [
              SimpleDialogOption(
                child: Text(
                  "Capture with Camera",
                  style: TextStyle(
                    color: Colors.green,
                  ),
                ),
                onPressed: capturePhotowithCamera,
              ),
              SimpleDialogOption(
                child: Text(
                  "Select from Gallery",
                  style: TextStyle(
                    color: Colors.green,
                  ),
                ),
                onPressed: pickPhotoFromGallery,
              ),
              SimpleDialogOption(
                  child: Text(
                    "Cancel",
                    style: TextStyle(
                      color: Colors.green,
                    ),
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  }),
            ],
          );
        });
  }

  capturePhotowithCamera() async {
    Navigator.pop(context);
    // ignore: deprecated_member_use
    File imageFile = await ImagePicker.pickImage(
        source: ImageSource.camera, maxHeight: 680, maxWidth: 970);
    setState(() {
      file = imageFile;
    });
  }

  pickPhotoFromGallery() async {
    Navigator.pop(context);
    // ignore: deprecated_member_use
    File imageFile = await ImagePicker.pickImage(
      source: ImageSource.gallery,
    );
    setState(() {
      file = imageFile;
    });
  }

  displayUploadFormScreen() {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => HomePage()));
            }),
        centerTitle: true,
        title: Text(
          'Add Your Favorite Design',
          style: TextStyle(fontSize: 25.0),
        ),
        backgroundColor: Color(0xffec407a),
        actions: [
          FlatButton(
            child: Text(
              "Add",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold),
            ),
            onPressed: uploading ? null : () => clearFormInfor(),
          ),
        ],
      ),
      body: ListView(
        children: [
          uploading ? linearProgress() : Text(""),
          Container(
            height: 230,
            width: MediaQuery.of(context).size.width - 0.8,
            child: Center(
              child: AspectRatio(
                aspectRatio: 16 / 9,
                child: Container(
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: FileImage(file), fit: BoxFit.cover)),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 12),
          ),
          ListTile(
            leading: Icon(Icons.perm_device_info, color: Colors.pink),
            title: Container(
              width: 250,
              child: TextField(
                style: TextStyle(color: Colors.deepPurpleAccent),
                controller: _category,
                decoration: InputDecoration(
                  hintText: "Category",
                  hintStyle: TextStyle(color: Colors.deepPurpleAccent),
                  border: InputBorder.none,
                ),
              ),
            ),
          ),
          Divider(
            color: Colors.pink,
          ),
          ListTile(
            leading: Icon(Icons.perm_device_info, color: Colors.pink),
            title: Container(
              width: 250,
              child: TextField(
                style: TextStyle(color: Colors.deepPurpleAccent),
                controller: _productDescription,
                decoration: InputDecoration(
                  hintText: "Description",
                  hintStyle: TextStyle(color: Colors.deepPurpleAccent),
                  border: InputBorder.none,
                ),
              ),
            ),
          ),
          Divider(
            color: Colors.pink,
          ),
          ListTile(
            leading: Icon(Icons.perm_device_info, color: Colors.pink),
            title: Container(
              width: 250,
              child: TextField(
                style: TextStyle(color: Colors.deepPurpleAccent),
                controller: _productTittle,
                decoration: InputDecoration(
                  hintText: "Tittle",
                  hintStyle: TextStyle(color: Colors.deepPurpleAccent),
                  border: InputBorder.none,
                ),
              ),
            ),
          ),
          Divider(
            color: Colors.pink,
          ),
          ListTile(
            leading: Icon(Icons.perm_device_info, color: Colors.pink),
            title: Container(
              width: 250,
              child: TextField(
                keyboardType: TextInputType.number,
                style: TextStyle(color: Colors.deepPurpleAccent),
                controller: _productPrice,
                decoration: InputDecoration(
                  hintText: "price",
                  hintStyle: TextStyle(color: Colors.deepPurpleAccent),
                  border: InputBorder.none,
                ),
              ),
            ),
          ),
          Divider(
            color: Colors.pink,
          ),
        ],
      ),
    );
  }

  clearFormInfor() {
    setState(() {
      file = null;
      _category.clear();
      _productDescription.clear();
      _productPrice.clear();

      _productTittle.clear();
    });
  }

  uploadImageandItem() async {
    setState(() {
      uploading = true;
    });
  }
}
