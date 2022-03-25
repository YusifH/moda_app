import 'package:flutter/material.dart';
import 'package:flutter_moda_app/title.dart';

class TitleBar extends StatelessWidget {
  const TitleBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 140,
      width: double.infinity,
      child: ListView.builder(
          padding: EdgeInsets.all(15),
          scrollDirection: Axis.horizontal,
          itemCount: title.length,
          itemBuilder: (_, index) =>
              Column(
                children: [
                  Stack(
                    children: [
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 10),
                        height: 75,
                        width: 75,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(45),
                            image: DecorationImage(
                                image: AssetImage(title[index].imgUrl),
                                fit: BoxFit.cover)),
                      ),
                      Positioned(
                          top: 50,
                          left: 60,
                          child: Container(
                            width: 25,
                            height: 25,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                image: DecorationImage(
                                    image: AssetImage(title[index].logoUrl),
                                    fit: BoxFit.cover)),
                          )),
                    ],
                  ),
                  SizedBox(height: 10),
                  Container(
                    width: 75,
                    height: 25,
                    decoration: BoxDecoration(
                      color: Colors.brown.withOpacity(0.4),
                      borderRadius: BorderRadius.circular(10)
                    ),
                    child: Center(
                      child: Text('#Follow', style: TextStyle(fontSize: 16, color: Colors.black),),
                    ),
                  )
                ],
              )),
    );
  }
}
