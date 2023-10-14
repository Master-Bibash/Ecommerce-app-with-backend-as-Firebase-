import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/ListofProducts/ListofProducts.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
   bool homeColor=true;

     bool cartColor=false;

       bool aboutColor=false;

         bool contactColor=false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: GlobalKey<ScaffoldState>(),
      drawer: Drawer(
        
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                color: Color(0xfff2f2f2)
              ),
              accountName: Text("Dr Bibash karki",
              style: TextStyle(color: Colors.black),
              ),
              currentAccountPicture: CircleAvatar(
                child: Image.asset("images/userimage.png"),
              ),
             accountEmail: Text("bibkarki1@gmail.com",
                           style: TextStyle(color: Colors.black),

             )),
             ListTile(
              selected: homeColor,
              onTap: (){
                setState(() {
              

                  
                });
              },
              leading: Icon(Icons.home),
              title: Text("Home"),
             ),
              ListTile(
                selected: cartColor,
              onTap: (){
             setState(() {
                  homeColor=false;
                    contactColor=false;
                  cartColor=true;
                  aboutColor=false;
             });
              },
              leading: Icon(Icons.shopping_cart),
              title: Text("Cart"),
             ),
               ListTile(
                selected: aboutColor,
              onTap: (){
                  setState(() {
                  homeColor=false;
                    contactColor=false;
                  cartColor=false;
                  aboutColor=true;
             });
              },
              leading: Icon(Icons.info),
              title: Text("About"),
             ),
              ListTile(
              onTap: (){

              },
              leading: Icon(Icons.exit_to_app),
              title: Text("Logout"),
             ),
             
          ],
        ),



      ),
      appBar: AppBar(
        title: Text(
          "HomePage",
          style: TextStyle(color: Colors.black),
        ),
        elevation: 0,
        backgroundColor: Colors.white,
        centerTitle: true,
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.notifications)),
          IconButton(onPressed: () {}, icon: Icon(Icons.send))
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Featured",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  GestureDetector(
                    onTap: (){
                     Navigator.push(context, MaterialPageRoute(builder: (context) => ListProducts()));

                    },
                    child: Text(
                      "See all",
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                  ),
                ],
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    MyCardItem(
                      image: 'man.jpg',
                      price: "50",
                      name: "Mens T-shirt",
                    ),
                    MyCardItem(
                      image: "camera.jpg",
                      price: "190",
                      name: "Digital camera",
                    ),
                    MyCardItem(
                      image: "women.jpg",
                      price: "90",
                      name: "Women T-shirt",
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              Container(
                margin: EdgeInsets.symmetric(vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Categories",
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "See all",
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
              SizedBox(height: 10),
              Container(
                margin: EdgeInsets.symmetric(vertical: 10),
                height: 60,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Items(imgUrl: 'dress.jpg'),
                    Items(imgUrl: 'pant.jpg'),
                    Items(imgUrl: 'shoes.png'),
                    Items(imgUrl: 't.jpg'),
                  ],
                ),
              ),
              Container(
                height: 300,
                width: double.infinity,
              
                child: Container(
                    margin: EdgeInsets.all(5),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Featured",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context) => ListProducts()));
                              },
                              child: Text(
                                "See all",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 18),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 5),
                        SingleChildScrollView(
                          physics: BouncingScrollPhysics(),
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              MyCardItem(
                                image: 'watch.jpg',
                                price: "50",
                                name: "Mens T-shirt",
                              ),
                              MyCardItem(
                                image: "camera.jpg",
                                price: "190",
                                name: "Digital camera",
                              ),
                              MyCardItem(
                                image: "women.jpg",
                                price: "90",
                                name: "Women T-shirt",
                              ),
                                   MyCardItem(
                                image: 'man.jpg',
                                price: "50",
                                name: "Mens T-shirt",
                              ),
                              MyCardItem(
                                image: "camera.jpg",
                                price: "190",
                                name: "Digital camera",
                              ),
                              MyCardItem(
                                image: "women.jpg",
                                price: "90",
                                name: "Women T-shirt",
                              ),
                                   MyCardItem(
                                image: 'man.jpg',
                                price: "50",
                                name: "Mens T-shirt",
                              ),
                              MyCardItem(
                                image: "camera.jpg",
                                price: "190",
                                name: "Digital camera",
                              ),
                              MyCardItem(
                                image: "women.jpg",
                                price: "90",
                                name: "Women T-shirt",
                              ),
                                   MyCardItem(
                                image: 'man.jpg',
                                price: "50",
                                name: "Mens T-shirt",
                              ),
                              MyCardItem(
                                image: "camera.jpg",
                                price: "190",
                                name: "Digital camera",
                              ),
                              MyCardItem(
                                image: "women.jpg",
                                price: "90",
                                name: "Women T-shirt",
                              ),
                            ],
                          ),
                        ),
                      ],
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Items extends StatelessWidget {
  const Items({
    Key? key,
    required this.imgUrl,
  }) : super(key: key);
  final String imgUrl;

  @override
  Widget build(BuildContext context) {
    return Material(
      // color: Colors.transparent,
      elevation: 1,
      borderRadius: BorderRadius.circular(50),
      child: CircleAvatar(
        backgroundColor: Colors.transparent,
        maxRadius: 35,
        child: Image(
          color: Colors.amber[90],
          image: AssetImage(
            
            'images/$imgUrl',
          ),
          width: 40,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}

class MyCardItem extends StatelessWidget {
  MyCardItem({
    Key? key,
    required this.image,
    required this.price,
    required this.name,
  }) : super(key: key);
  final String image;
  final String price;
  final String name;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 1,
      child: Container(
        margin: EdgeInsets.all(10),
        padding: EdgeInsets.only(top: 5),
        height: 230,
        width: 190,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: 170,
              width: 150,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                  image: AssetImage(
                    'images/$image',
                  ),
                ),
              ),
            ),
            SizedBox(height: 2),
            Text(
              "\$ $price",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 17,
                color: Color.fromARGB(255, 29, 28, 38),
              ),
            ),
            Text(
              name,
              style: TextStyle(fontSize: 17),
            ),
            SizedBox(height: 5),
          ],
        ),
      ),
    );
  }
}
