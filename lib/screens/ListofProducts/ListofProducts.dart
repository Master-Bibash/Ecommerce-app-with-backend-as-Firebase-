// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import 'package:flutter_application_1/screens/Homescreen/Home.dart';
import 'package:flutter_application_1/screens/detailScreen/detailscreen.dart';

class ListProducts extends StatefulWidget {
  ListProducts({super.key});

  @override
  State<ListProducts> createState() => _ListProductsState();
}

class _ListProductsState extends State<ListProducts> {
  // final List<String> imagesList = [
  
  //   'images/camera.jpg',
  //   'images/watch.jpg'
  // ];
  final List<object> imagesList=[
    object(imgUrl: "images/camera.jpg", price: "90", name: "Camera for men"),
        object(imgUrl: "images/watch.jpg", price: "190", name: "Watch for men"),
            object(imgUrl: "images/speaker.png", price: "990", name: "Speaker panesonic"),


  

  ];
int _currentIndex=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(onPressed: () {
          Navigator.pop(context);
        }, icon: Icon(Icons.arrow_back_ios)),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.search)
          
          ),
          IconButton(onPressed: () {}, icon: Icon(Icons.notifications_none)
          
          )
        ],
      ),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 20),
        child: ListView(children: [
          Column(
            children: [
              Container(
                height: 200,
                width: double.infinity,
                // decoration: BoxDecoration(color: Colors.blue),
                child: CarouselSlider(
  items: imagesList.map((index) => Padding(
    padding: EdgeInsets.only(top: 10, bottom: 10),
    child: GestureDetector(
      onTap: () {
       Navigator.push(context,MaterialPageRoute(builder: (context) => detaislScreen(imgUrl: index.imgUrl, price: index.price, title: index.name),));
       
      },
      child: ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(30)),
        child: Stack(
          children: [
            Image.asset(index.imgUrl, fit: BoxFit.cover, width: double.infinity),
          ],
        ),
      ),
    ),
  )).toList(),
  options: CarouselOptions(
    
    autoPlay: true,
    enlargeCenterPage: true,
    scrollDirection: Axis.horizontal,
    onPageChanged: (index, reason) {
      setState(() {
        _currentIndex = index;
       
      }
      );
    },
  ),
),

              ),
              SizedBox(height: 4,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                                    backgroundColor: _currentIndex==0? Colors.red:Colors.grey[200],
                    maxRadius: 8,

                    child: Container(
                    
                      
                    ),
                  ),
                  SizedBox(width: 2,),
                     CircleAvatar(
                                    backgroundColor: _currentIndex==1? Colors.red:Colors.grey[200],

                    maxRadius: 8,

                    child: Container(
                    
                      
                    ),
                    
                  ),
                   SizedBox(width: 2,),
                     CircleAvatar(
                                    backgroundColor: _currentIndex==2? Colors.red:Colors.grey[200],

                    maxRadius: 8,

                    child: Container(
                    
                      
                    ),
                  )
                ],
              ),



              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Categories",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "See all",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                ],
              ),
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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Featured",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "See all",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                ],
              ),
              Container(
                height: 700,
                child: GridView.count(
                  mainAxisSpacing: 10,
                  crossAxisCount: 2,
                  scrollDirection: Axis.vertical,
                  crossAxisSpacing: 2,
                  children: [
                    _CardItem(
                      image: "man.jpg",
                      price: "190",
                      name: "Men T-shirt",
                    ),
                    _CardItem(
                      image: "camera.jpg",
                      price: "1290",
                      name: "Camera",
                    ),
                    _CardItem(
                      image: "women.jpg",
                      price: "90",
                      name: "Women T-shirt",
                    ),
                    _CardItem(
                      image: "watch.jpg",
                      price: "90",
                      name: "watch",
                    ),
                    _CardItem(
                      image: "phone.png",
                      price: "990",
                      name: "Phone ",
                    ),
                    _CardItem(
                      image: "speaker.png",
                      price: "90",
                      name: "speaker",
                    ),
                  ],
                ),
              )
            ],
          ),
        ]),
      ),
    );
  }
}


class _CardItem extends StatelessWidget {
  _CardItem({
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
        height: 830,
        width: 190,
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(20)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Container(
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

class object {
    String imgUrl;
    String price;
    String name;
  object({
    required this.imgUrl,
    required this.price,
    required this.name,
  });
    
  }