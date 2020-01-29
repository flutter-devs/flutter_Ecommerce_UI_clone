import 'package:flipkart_flutter_ui/src/Models/deals.dart';
import 'package:flutter/material.dart';

class Seventhlist extends StatefulWidget {
  @override
  _SeventhlistState createState() => _SeventhlistState();
}

class _SeventhlistState extends State<Seventhlist> {
  List<deals> deal;

  @override
  void initState() {
    super.initState();
    addDealItem();
  }

  addDealItem() {
    deal = List<deals>();
    deal.add(deals(
        "assets/phone.png",
        'Redmi Note 7 Pro',
        'From @44,900'));
    deal.add(deals(
        "assets/phone_two.png",
        'Redmi Note 7s',
        'Trending Range'));
    deal.add(deals(
        "assets/phone_three.png",
        'Realme 3',
        '1TB HDD'));
    deal.add(deals(
        "assets/nokia.png",
        'Samsung A30',
        'From @10,999'));
  }

  buildItem(BuildContext context, int index) {
    return Container(
      height: MediaQuery.of(context).size.height / 3.5,
      child: Column(
        children: <Widget>[
          Container(
            height: MediaQuery.of(context).size.height / 7,
            width: MediaQuery.of(context).size.width / 4,
            child: Image.asset(deal[index].imageUrl),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Text(
              '${deal[index].name}',
              style: TextStyle(fontSize: 15),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 2),
            child: Text(
              '${deal[index].discount}',
              style: TextStyle(color: Colors.green),
            ),
          )
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
            color: Color(0xffF5E4D2),
          ),
          Container(
            height: size.height / 7,
            width: size.width,
            alignment: Alignment.topCenter,
            child: Image.asset(
             "assets/banner_two.png"
            ),
          ),
          Positioned(
            top: 15,
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
                            'Dual Camera Phones',
                            style: TextStyle(color: Colors.black, fontSize: 20),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 8),
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Color(0xff2874F0)),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              'View All',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  width: size.width,
                ),
                Container(
                  padding: EdgeInsets.only(left: 8, right: 8, top: 8),
                  width: size.width,
                  height: size.height / 1.75,
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    color: Colors.white,
                    child: GridView.builder(
                      padding: EdgeInsets.all(10),
                      shrinkWrap: true,
                      itemCount: 4,
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
