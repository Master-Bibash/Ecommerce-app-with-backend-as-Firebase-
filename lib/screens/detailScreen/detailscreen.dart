// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'package:flutter_application_1/widgets/myButton.dart';

class detaislScreen extends StatefulWidget {
  detaislScreen({
    Key? key,
    required this.imgUrl,
    required this.price,
    required this.title,
  }) : super(key: key);
final String imgUrl;
final String price;
final String title;
  @override
  State<detaislScreen> createState() => _detaislScreenState();
}

class _detaislScreenState extends State<detaislScreen> {
  int items=1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back_ios)),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.notifications))
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        physics: BouncingScrollPhysics(),
        child: Container(
            width: double.infinity,
          
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Card(
                    margin: EdgeInsets.all(5),
                    elevation: 0,
                    child: Container(
                      margin: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(widget.imgUrl)),
                          color: Colors.transparent,
                          borderRadius: BorderRadius.circular(10)),
                      width: double.infinity,
                      height: 250,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(10),
                    padding: EdgeInsets.all(10),
                    width: double.infinity,
                    height: 55,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          widget.title,
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.normal),
                        ),
                        Text(
                          "\$ ${widget.price}.00",
                          style: TextStyle(
                              color: Color.fromARGB(255, 186, 179, 179)),
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 4),
                    padding: EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Description",
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Lorem ipsum, or lipsum as it is sometimes known, is dummy text used in laying out print, graphic or web designs. The passage is attributed to an unknown typesetter in the 15th century who is thought to have scrambled parts of Cicero's De Finibus Bonorum et Malorum for use in a type specimen book. It usually begins with:",
                          style: TextStyle(
                            color: const Color.fromARGB(255, 73, 43, 43),
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text("Size",
                            style: TextStyle(
                              color: const Color.fromARGB(255, 73, 43, 43),
                              fontWeight: FontWeight.bold,
                            )),
                        Container(
                          margin: EdgeInsets.symmetric(vertical: 20,
                          horizontal: 10),
                          width: 300,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              sizeOfProduct(
                                name: "S",
                              ),
                              sizeOfProduct(
                                name: "M",
                              ),
                              sizeOfProduct(
                                name: "L",
                              ),
                              sizeOfProduct(
                                name: "XXL",
                              ),
                            ],
                          ),
                          

                        ),
                        
                         Text("Color",
                            style: TextStyle(
                              color: const Color.fromARGB(255, 73, 43, 43),
                              fontWeight: FontWeight.bold,
                            )),
                                                    SizedBox(height: 5,),

                        Row(
                          children: [
                            ColorWidgets(color: Colors.blue,),
                             ColorWidgets(color: Colors.green,),
                              ColorWidgets(color: Colors.yellow,),
                               ColorWidgets(color: Colors.red,),
                          ],
                        ),
                        SizedBox(height: 5,),
                           Text("Quantity",
                            style: TextStyle(
                              color: const Color.fromARGB(255, 73, 43, 43),
                              fontWeight: FontWeight.bold,
                            )),
                            Container(
                              margin: EdgeInsets.symmetric(vertical: 10),
                              height: 30,
                              width: 90,
                              decoration: BoxDecoration(
                                color: Colors.blue[200],
                                borderRadius: BorderRadius.circular(20)
                              ),
                              child: Center(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                  GestureDetector(
                                    onTap: (){
                                    if (items==0 || items>0) {
                                      setState(() {
                                        items--;
                                      });                                      
                                    }
                                    },
                                    child: Icon(Icons.remove,size: 15,)),
                                     Text(items.toString()),
                                    GestureDetector(
                                      onTap: (){
                                      setState(() {
                                        items++;
                                      });
                                    },
                                      child: Icon(Icons.add,size: 15,)),
                                  ],
                                ),
                              ),

                            ),
                                 MyButoon(onPressed: (){},
                                 color: Colors.pink,
                   name: "Check out"),
               SizedBox(height: 10,),
                     
                      ],
                    ),
                  ),
             
                ],
              ),
            )),
      ),
    );
  }
}

class ColorWidgets extends StatelessWidget {
  const ColorWidgets({
    Key? key,
    required this.color,
  }) : super(key: key);
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 3),
      height: 40,
      width: 40,
      decoration: BoxDecoration(color: color),
    );
  }
}

class sizeOfProduct extends StatelessWidget {
  sizeOfProduct({
    Key? key,
    required this.name,
  }) : super(key: key);
  final String name;
  @override
  Widget build(BuildContext context) {
    return Container(
  
        height: 50,
        width: 60,
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 238, 233, 233),
        ),
        child: Center(
          child: Text(name,
              style: TextStyle(
                fontSize: 14,
                color: Color.fromARGB(255, 63, 54, 54),
                fontWeight: FontWeight.normal,
              )),
        ));
  }
}
