import 'package:api_task/InfoCard.dart';
import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
class RequestScreen extends StatefulWidget {
  @override
  _RequestScreenState createState() => _RequestScreenState();
}

class _RequestScreenState extends State<RequestScreen> {
  String name;
  int age;
  String country;
  String home_country;
  bool isMuslim;
  List luggage= List();
  List medicals=List();
 getDataFromRestApi() async {
   Response response= await Dio().get('https://run.mocky.io/v3/701ff6f4-0181-47fe-9461-473f6d0aec92');
   name=response.data['name'];
   age=response.data['age'];
   country=response.data['country'];
   home_country=response.data['home_country'];
   isMuslim=response.data['isMuslim'];
   luggage=response.data['luggage'];
   medicals=response.data['midecals'];
   setState(() {});

 }
 @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getDataFromRestApi();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SafeArea(
          child:ListView.builder(
              itemCount: luggage.length,
              itemBuilder: (context, index) {
                return Container(
                    height: MediaQuery.of(context).size.height*0.3,
                    width:MediaQuery.of(context).size.width,
                    child: InfoCard(
                      name: name,
                      age: age,
                      country: country,
                      home_country: home_country,
                      nameL: luggage[index]['name'],
                      brand: luggage[index]['brand'],
                      categoryL:luggage[index]['category'],
                      nameM: medicals[index]['name'],
                      price: medicals[index]['price'],
                      categoryM: medicals[index]['category'],
                    ),
                );
              }

          )
        ),
      );
  }
}
