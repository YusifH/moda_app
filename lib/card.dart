import 'package:flutter/material.dart';
import 'package:flutter_moda_app/detail.dart';

class CardItem extends StatefulWidget {
  const CardItem({Key? key}) : super(key: key);

  @override
  _CardItemState createState() => _CardItemState();
}

class _CardItemState extends State<CardItem> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16),
      child: Material(
        //color: Colors.blue,
        borderRadius: BorderRadius.circular(16),
        elevation: 5,
        child: Container(
          height: 500,
          padding: EdgeInsets.all(16),
          width: double.infinity,
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 10),
                    height: 75,
                    width: 75,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(45),
                        image: DecorationImage(
                            image: AssetImage('assets/model1.jpeg'),
                            fit: BoxFit.cover)),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width - 210,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Luis Angel',
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 5),
                        Text(
                          '3 min ago',
                          style: TextStyle(fontSize: 14, color: Colors.grey),
                        ),
                      ],
                    ),
                  ),
                  IconButton(
                      onPressed: () {}, icon: Icon(Icons.more_vert_outlined)),
                ],
              ),
              SizedBox(height: 15),
              Text(
                'Türkiye ve Dünyadan Giyim ve Moda hakkında en son trendler. Ünlü modacıların ve Markaların en son kreasyonları ve daha fazlası için giyimvemoda.com.',
                style: TextStyle(fontSize: 13),
              ),
              SizedBox(height: 15),
              Row(
                children: [
                  InkWell(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) =>
                                Detail(img: 'assets/modelgrid1.jpeg')));
                      },
                      child: Hero(
                        tag: 'assets/modelgrid1.jpeg',
                        child: Container(
                          height: 200,
                          width: (MediaQuery.of(context).size.width - 50) / 2,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              image: DecorationImage(
                                  image: AssetImage('assets/modelgrid1.jpeg'),
                                  fit: BoxFit.cover)),
                        ),
                      )),
                  SizedBox(width: 10),
                  Column(
                    children: [
                      InkWell(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) =>
                                    Detail(img: 'assets/modelgrid2.jpeg')));
                          },
                          child: Hero(
                              tag: 'assets/modelgrid2.jpeg',
                              child: Container(
                                height: 95,
                                width:
                                    (MediaQuery.of(context).size.width - 100) /
                                        2,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    image: DecorationImage(
                                        image: AssetImage(
                                            'assets/modelgrid2.jpeg'),
                                        fit: BoxFit.cover)),
                              ))),
                      SizedBox(height: 10),
                      InkWell(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) =>
                                    Detail(img: 'assets/modelgrid3.jpeg')));
                          },
                          child: Hero(
                              tag: 'assets/modelgrid3.jpeg',
                              child: Container(
                                height: 95,
                                width:
                                    (MediaQuery.of(context).size.width - 100) /
                                        2,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    image: DecorationImage(
                                        image: AssetImage(
                                            'assets/modelgrid3.jpeg'),
                                        fit: BoxFit.cover)),
                              ))),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 15),
              Row(
                children: [
                  Container(
                    width: 120,
                    height: 25,
                    decoration: BoxDecoration(
                        color: Colors.brown.withOpacity(0.4),
                        borderRadius: BorderRadius.circular(10)),
                    child: Center(
                      child: Text(
                        '#NewColletion',
                        style: TextStyle(fontSize: 16, color: Colors.black),
                      ),
                    ),
                  ),
                  SizedBox(width: 8),
                  Container(
                    width: 75,
                    height: 25,
                    decoration: BoxDecoration(
                        color: Colors.brown.withOpacity(0.4),
                        borderRadius: BorderRadius.circular(10)),
                    child: Center(
                      child: Text(
                        '#Style',
                        style: TextStyle(fontSize: 16, color: Colors.black),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Divider(
                indent: 10,
                endIndent: 10,
              ),
              Row(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.share_rounded),
                    color: Colors.grey,
                  ),
                  //SizedBox(width: 5),
                  Text(
                    '1.7K',
                    style: TextStyle(fontSize: 18, color: Colors.grey),
                  ),
                  SizedBox(width: 5),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.message_rounded),
                    color: Colors.grey,
                  ),
                  Text(
                    '3200K',
                    style: TextStyle(fontSize: 18, color: Colors.grey),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width - 260,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.favorite, color: Colors.red),
                          color: Colors.grey,
                        ),
                        //SizedBox(width: 5),
                        Text(
                          '235K',
                          style: TextStyle(fontSize: 18, color: Colors.grey),
                        )
                      ],
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
