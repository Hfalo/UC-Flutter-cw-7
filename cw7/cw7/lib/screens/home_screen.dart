import 'package:flutter/material.dart';
import 'package:cw7/screens/second_screen.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
   HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var chosenColor;
  var appBarColor = Colors.blueGrey[400];
  final textfield = TextEditingController(); //to control the input


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("دفتر اليوميات",
        style: GoogleFonts.harmattan(),),
        backgroundColor: appBarColor, //refrencing the color the user has chosen
      ),
      
      body: Container(
        color: chosenColor, 
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "اختر اللون المفضل",
              style: GoogleFonts.harmattan(
                fontSize: 30,
                color: Colors.blueGrey[600],
              ),
            ),

            //color buttons
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    onPressed: () {
                      chosenColor = Color.fromRGBO(173, 173, 255, 100);
                      appBarColor = Color.fromRGBO(173, 173, 255, 100);
                      setState(() {});
                    },
                    icon: Icon(Icons.circle),
                    iconSize: 50,
                    color: Color.fromRGBO(173, 173, 255, 100),
                  ),
                  IconButton(
                    onPressed: () {
                      chosenColor = Color.fromRGBO(255, 204, 229, 100);
                      appBarColor = Color.fromRGBO(255, 204, 229, 100);
                      setState(() {});
                    },
                    icon: Icon(Icons.circle),
                    iconSize: 50,
                    color: Color.fromRGBO(255, 204, 229, 100),
                  ),
                  IconButton(
                    onPressed: () {
                      chosenColor = Color.fromRGBO(255, 229, 204, 100);
                      appBarColor = Color.fromRGBO(255, 229, 204, 100);
                      setState(() {});
                    },
                    icon: Icon(Icons.circle),
                    iconSize: 50,
                    color: Color.fromRGBO(255, 229, 204, 100),
                  ),
                  IconButton(
                    onPressed: () {
                      chosenColor = Color.fromRGBO(153, 204, 255, 100);
                      appBarColor = Color.fromRGBO(153, 204, 255, 100);
                      setState(() {});
                    },
                    icon: Icon(Icons.circle),
                    iconSize: 50,
                    color: Color.fromRGBO(153, 204, 255, 100),
                  ),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(top: 35),
              child: Text(
                "ماذا تريد ان تكتب",
                style: GoogleFonts.harmattan(
                  fontSize: 20,
                  color: Colors.blueGrey[600],
                ),
              ),
            ),
            
            TextField(
              controller: textfield,
              decoration: InputDecoration(
                contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 10), 
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(30),
                ),
                //hintText: "أكتب هنا...",
                prefixIcon: Icon(Icons.arrow_right_alt_rounded)
                ),
            ),

          //the saving button
            ElevatedButton(
              style: ElevatedButton.styleFrom(shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(32.0),
                 ),
                 backgroundColor: Colors.blueGrey[400],
                ),

              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SecondScreen(
                        chosenColor: chosenColor, text: textfield.text),
                  ),
                );
              },
              child: Text(
                "حفظ",
                style: GoogleFonts.harmattan(),
              ),
            )
          ],
        ),
      ),
    );
  }
}



   