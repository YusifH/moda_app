import 'package:flutter/material.dart';
import 'package:flutter_moda_app/home_screen.dart';

class Detail extends StatefulWidget {
  var img;

  Detail({this.img});

  @override
  _DetailState createState() => _DetailState();
}

class _DetailState extends State<Detail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Hero(
          tag: widget.img,
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(widget.img), fit: BoxFit.cover)),
          ),
        ),
           InkWell(
             onTap: (){
               // Navigator.push(
               //     context,
               //     MaterialPageRoute(builder: (_) => const HomeScreen()));
             },
             child: Container(
               margin: EdgeInsets.all(35),
               width: 40,
               height: 40,
               decoration: BoxDecoration(
                 borderRadius: BorderRadius.circular(25),
                 color: Colors.grey.shade600,
               ),
               child: Center(
                 child: Icon(Icons.arrow_back_ios, color: Colors.white,),
               ),
             ),
           ),
        Positioned(
            left: 15,
            right: 15,
            bottom: 15,
            child: Material(
              borderRadius: BorderRadius.circular(15),
              elevation: 5,
              child: Container(
                  width: MediaQuery.of(context).size.width - 30,
                  height: 230,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15)),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.all(16),
                            child: Container(
                              width: 100,
                              height: 130,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(color: Colors.grey),
                                  image: DecorationImage(
                                      image: AssetImage('assets/dress.jpg'),
                                      fit: BoxFit.cover)),
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'LAMINATED',
                                style: TextStyle(
                                    fontSize: 22,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(height: 5),
                              Text(
                                'Louis Vuitton',
                                style:
                                    TextStyle(fontSize: 16, color: Colors.grey),
                              ),
                              SizedBox(height: 10),
                              Container(
                                height: 30,
                                width: MediaQuery.of(context).size.width - 200,
                                child: Text(
                                  'Türkiye ve Dünyadan Giyim ve Moda hakkında en son trendler.',
                                  style: TextStyle(fontSize: 13),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: EdgeInsets.all(16),
                            child: Text(
                              '\$124',
                              style: TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            ),
                          ),
                          Container(
                            height: 45,
                            width: 150,
                            margin: EdgeInsets.only(right: 16),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Colors.green
                            ),
                            child: IconButton(
                              icon: Center(child: Text('Sifariş et', style: TextStyle(color: Colors.white, fontSize: 24,fontWeight: FontWeight.bold),)),
                              onPressed: () {},
                            ),
                          ),
                          // GestureDetector(
                          //   onTap: (){
                          //     //print(widget.img);
                          //   },
                          //   child: Padding(
                          //     padding: EdgeInsets.only(right: 16),
                          //     child: Container(
                          //       width: 40,
                          //       height: 40,
                          //       decoration: BoxDecoration(
                          //         borderRadius: BorderRadius.circular(25),
                          //         color: Colors.green,
                          //       ),
                          //       child: Center(
                          //         child: Icon(Icons.arrow_forward_ios, color: Colors.white,),
                          //       ),
                          //     ),
                          //   ),
                          // ),
                        ],
                      )
                    ],
                  )),
            ))
      ],
    ));
  }
}

