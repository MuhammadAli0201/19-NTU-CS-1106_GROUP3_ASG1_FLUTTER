import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'BankPage2.dart';

void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false, home: Bank1()));
}

class Bank1 extends StatefulWidget {
  const Bank1({Key? key}) : super(key: key);

  @override
  State<Bank1> createState() => _Bank1State();
}

class _Bank1State extends State<Bank1> {
  @override
  String x="";


  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          //appbar container
          NavBar(),
          Expanded(
            flex: 1,
            child: 
            Center(
              child: Container(
                margin: EdgeInsets.all(10),
                // color: Colors.black,
                child: Container(
                  child: Column(
                    children: [
                     cards("a",Colors.black87,
                          Color.fromARGB(255, 88, 88, 88),
                          "Sunny Aveiro ",
                          Image.asset("banking/Visa_Inc._logo.png"),
                          ""),
                    
                      cards("b",
                          Colors.deepPurple[600],
                          Colors.deepPurpleAccent,
                          "Sunny Aveiro ",
                          Image(
                              image: AssetImage(
                            "banking/Group 3.png",
                          )),
                          "Mastercard"),
                      cards("c",
                        Colors.teal[400],
                        Colors.teal[300],
                        "",
                        Image(
                          image: AssetImage(
                            "banking/Group 3.png",
                          ),
                          color: Colors.transparent,
                        ),
                        "",
                      ),
                      
                        
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Container NavBar() {
    return Container(
          padding: EdgeInsets.only(top: 10),
          color: Colors.white,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
              
                margin: EdgeInsets.only(left: 30),
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.arrow_back_ios),
                  color: Colors.black,
                ),
              ),
              Text(
                "All Cards",
                style: GoogleFonts.kanit(fontSize: 20, color: Colors.black54),
              ),
              Container(
                margin: EdgeInsets.only(right: 30),
                child: IconButton(
                  onPressed: () {},
                  icon: CircleAvatar(
                    backgroundColor: Colors.white,
                    child: Icon(
                      Icons.notifications,
                      color: Colors.black26,
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
  }

  Expanded cards(String y,
      color1, color2, String txt, Image cornerImg, String CornerImgTxt) {
    return Expanded(
      flex: 1,
      //parent Container
      child: Center(
        child: Container(
          //margin from body container
          margin: EdgeInsets.fromLTRB(20, 10, 20, 10),
          decoration: BoxDecoration(
            gradient: LinearGradient(colors: [color1, color2]),
            borderRadius: BorderRadius.circular(20),
            image: DecorationImage(
              image: AssetImage("banking/Visa_Inc._logo.png"),
              alignment: Alignment.topRight,
              scale: 0.4,
              opacity: 0.1,
              
            ),
          ),
          //flat Button
          child: TextButton(
            onPressed: () {
              x=y;
                Navigator.push(context,
                  MaterialPageRoute(builder: (BuildContext context) =>BankPage2(x),),);
            },
           
              //container having button text/images etc
              child: Container(
                margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
                child: Column(children: [
                  //first row inside column
                  // Expanded(
                  //   flex: 1,
                     Container(
                      margin: EdgeInsets.fromLTRB(0, 25, 0, 5),
                      child: Row(
                        children: [
                          Image(
                            image: AssetImage("banking/NexusPay Logo.png"),
                          ),
                          Padding(padding: EdgeInsets.fromLTRB(5, 0, 5, 0)),
                          Text(
                            "Dutch Bangla Bank",
                            style: GoogleFonts.kanit(
                                color: Color.fromARGB(255, 223, 223, 223)),
                          ),
                        ],
                      ),
                    ),
             //     ),
      
                  //second row inside column
                  // Expanded(
                  //   flex: 1,
                  //   child: 
                    Container(
                      padding: EdgeInsets.only(top: 15),
                      child: Row(
                        children: [
                          Text(
                            "**** **** **** 1690",
                            style: GoogleFonts.kanit(color: Colors.white60),
                          ),
                        ],
                      ),
                    ),
             //     ),
      
                  //3rd row inside column
                  // Expanded(
                  //   flex: 1,
                    //child:
                     Container(
                      margin: EdgeInsets.only(bottom: 30),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Plantinum Plus",
                            style: GoogleFonts.kanit(color: Colors.white),
                          ),
                          Text("Exp 01/22",
                              style: GoogleFonts.kanit(color: Colors.white60)),
                        ],
                      ),
                    ),
                  //),
      
                  //last row inside column
                  Expanded(
                    flex: 1,
                    child:
                     Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(txt,
                              style: GoogleFonts.kanit(color: Colors.white)),
                          Column(
                            children: [
                              cornerImg,
                              Text(CornerImgTxt,
                                  style: GoogleFonts.kanit(
                                    color: Colors.white70,
                                    fontSize: 6,
                                  ))
                            ],
                          )
                        ],
                      ),
                    ),
                 )
                ]),
              ),
          //  ),
          ),
        ),
      ),
    );
  }
}
