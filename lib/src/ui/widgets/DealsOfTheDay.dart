import 'package:flipkart_flutter_ui/src/Models/deals.dart';
import 'package:flutter/material.dart';

class Fourthlist extends StatefulWidget {
  @override
  _FourthlistState createState() => _FourthlistState();
}

class _FourthlistState extends State<Fourthlist> {
  List<deals> deal;

  @override
  void initState() {
    super.initState();
    addDealItem();
  }

  addDealItem() {
    deal = List<deals>();
    deal.add(deals(
        'https://rukminim1.flixcart.com/image/240/320/jtsz3bk0/dress/w/g/v/m-8159-zima-leto-original-imaffypag2nrk4wb.jpeg?q=80',
        'Dresses & Tops',
        'From 99'));
    deal.add(deals(
        'https://rukminim1.flixcart.com/flap/240/240/image/787a97ab295b1253.jpg?q=80',
        'Juicer Mixer',
        'Upto 70% Off'));
    deal.add(deals(
        'https://rukminim1.flixcart.com/flap/240/240/image/529f25178baf02ee.jpg?q=80',
        'Hand Tools',
        'Starting @99'));
    deal.add(deals(
        'https://rukminim1.flixcart.com/flap/240/240/image/ef402bccf2a543e8.jpg?q=80',
        'Memory Cards',
        'Extra 100 Off'));
  }

  buildItem(BuildContext context, int index) {
    return Container(
      height: MediaQuery.of(context).size.height / 3.5,
      child: Column(
        children: <Widget>[
          Container(
            height: MediaQuery.of(context).size.height / 6.5,
            width: MediaQuery.of(context).size.width / 4,
            child: Image.network(deal[index].imageUrl),
          ),
          Text(
            '${deal[index].name}',
            style: TextStyle(fontSize: 15),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 2),
            child: Text(
              '${deal[index].discount}',
              style: TextStyle(color: Colors.green),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      height: size.height / 1.6,
      child: Stack(
        children: <Widget>[
          Container(
            height: size.height / 1.7,
            color: Color(0xff2874F0),
          ),
          Container(
            height: size.height / 7,
            width: size.width,
            alignment: Alignment.topCenter,
            child: Image.network(
              'https://rukminim1.flixcart.com/flap/800/178/image/e76ebd.jpg?q=90',
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height / 65,
            child: Column(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.all(10),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            'Deals of the Day',
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                          Row(
                            children: <Widget>[
                              Icon(
                                Icons.access_time,
                                color: Colors.white,
                              ),
                              Text(
                                '19h 18m Remaining',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 10),
                              )
                            ],
                          )
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 8),
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.white),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text('View All'),
                          ),
                        ),
                      )
                    ],
                  ),
                  width: size.width,
                ),
                Container(
                  height: size.height / 1.75,
                  padding: EdgeInsets.only(left: 8, right: 8),
                  width: size.width,
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    color: Colors.white,
                    child: GridView.builder(
                      padding: EdgeInsets.all(10),
                      itemCount: 4,
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemBuilder: (context, index) {
                        return buildItem(context, index);
                      },
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
