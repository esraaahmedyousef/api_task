import 'package:flutter/material.dart';
class LuggageCard extends StatefulWidget {
  String nameL;
  String brand;
  String categoryL;
  LuggageCard({this.nameL,this.brand,this.categoryL});
  @override
  _LuggageCardState createState() => _LuggageCardState();
}

class _LuggageCardState extends State<LuggageCard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height:MediaQuery.of(context).size.height*0.2,
          padding: EdgeInsets.only(left:MediaQuery.of(context).padding.left+10 ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [Text('Name: ',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                  Text('${widget.nameL}',style: TextStyle(fontSize: 20)),
                ],
              ),
              Row(
                children: [Text('Brand: ',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                  Text('${widget.brand}',style: TextStyle(fontSize: 20)),
                ],
              ),
              Row(
                children: [Text('Category: ',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                  Text('${widget.categoryL}',style: TextStyle(fontSize: 20)),
                ],
              ),

            ],
          ),
        ),
      ),
    );
  }
}
