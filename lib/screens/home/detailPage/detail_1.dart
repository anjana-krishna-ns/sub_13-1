import 'package:counter_button/counter_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../Cart/cart_screen.dart';

class DetailPage1 extends StatefulWidget {
  @override
  _DetailPage1State createState() => _DetailPage1State();
}

class _DetailPage1State extends State<DetailPage1> {
  int _counterValue = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: getBody(),
    );
  }

  Widget getBody() {
    var size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Stack(
        children: <Widget>[
          Container(
            width: double.infinity,
            height: size.height * 0.5,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/orgg1.png"),
                  fit: BoxFit.cover),
            ),
            child: SafeArea(
              child: Padding(
                padding:
                const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                        child: TextButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child:  Icon(Icons.arrow_back,color: Colors.black,))),
                    Row(
                      children: <Widget>[
                        SvgPicture.asset("assets/images/icons/svg/heart_icon.svg"),
                        SizedBox(
                          width: 20,
                        ),
                        SvgPicture.asset("assets/images/icons/svg/share_icon.svg"),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: size.height * 0.45),
            width: double.infinity,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(50)),//VALLCHU
            child: Padding(
              padding: const EdgeInsets.all(30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[

                  // Align(
                  //   child: Container(
                  //     width: 150,
                  //     height: 7,
                  //     decoration: BoxDecoration(
                  //         color: Colors.red[50],
                  //         borderRadius: BorderRadius.circular(10)),
                  //   ),
                  // ),
                  SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  SizedBox(height: 20,),
                  Row(
                    children: <Widget>[
                      Container(
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.circular(3)),
                        child: Padding(
                          padding: const EdgeInsets.all(6.0),
                          child: Text("convers"),
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.circular(3)),
                        child: Padding(
                          padding: const EdgeInsets.all(6.0),
                          child: Text("Black"),
                        ),
                      ),SizedBox(
                        width: 30,
                      ),
                      Container(

                        child: CounterButton(
                          loading: false,
                          onChange: (int val) {
                            setState(() {
                              _counterValue = val;
                            });
                          },
                          count: _counterValue,
                          countColor: Colors.black,
                          buttonColor: Colors.black,
                          progressColor: Colors.black,
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                    ],
                  ),
                  SizedBox(height: 20,),
                  Text("Gallery",style: TextStyle(
                      fontSize: 18
                  ),),
                  SizedBox(height: 20,),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(right: 20),
                          child: Container(
                            width: 150,
                            height: 150,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                image: DecorationImage(image: AssetImage("assets/images/ex1.2.png"),fit: BoxFit.cover)
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 20),
                          child: Container(
                            width: 150,
                            height: 150,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                image: DecorationImage(image: AssetImage("assets/images/ex1.3.png"),fit: BoxFit.cover)
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 20),
                          child: Container(
                            width: 150,
                            height: 150,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                image: DecorationImage(image: AssetImage("assets/images/org1.png"),fit: BoxFit.cover)
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 10),
                  Container(
                    alignment: Alignment.bottomCenter,
                    child: Row(mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 50,
                          width: 170,
                          child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.black,
                                //  shape: StadiumBorder()
                              ),
                              onPressed: () {
                                Navigator.push(context, MaterialPageRoute(builder: (_) => CartPage()));
                              }, child: Text('Buy Now')),
                        ),
                        // Padding(padding: EdgeInsets.all(5)),
                        // Container(
                        //   height: 50,
                        //   width: 170,
                        //   child: ElevatedButton(
                        //       style: ElevatedButton.styleFrom(
                        //           backgroundColor: Colors.black,
                        //           side: BorderSide()
                        //         //shape: StadiumBorder()
                        //
                        //       ),
                        //       onPressed: () {
                        //         Navigator.push(context, MaterialPageRoute(builder: (_) => CartPage()));
                        //       }, child: Text('Add to cart')),
                        // ),
                      ],
                    ),
                  )

                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}