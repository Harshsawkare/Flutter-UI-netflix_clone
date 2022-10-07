import 'package:flutter/material.dart';
import 'package:netflix_clone/home.dart';
import 'package:netflix_clone/navigation.dart';

class ChooseProfile extends StatefulWidget {
  const ChooseProfile({Key? key}) : super(key: key);

  @override
  _ChooseProfileState createState() => _ChooseProfileState();
}

class _ChooseProfileState extends State<ChooseProfile> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        backgroundColor: Colors.black,

        body: Column(
          children: [
            SizedBox(height: 30,),
            //title and edit
            Row(
              children: [
                Container(
                  height: 100,
                  width: MediaQuery.of(context).size.width,
                  child: Stack(
                    children: [
                      Align(
                          alignment: Alignment(0,0),
                          child: Image.asset("images/netflixfull_logo.png", width: 110,)
                      ),
                      Align(
                          alignment: Alignment(0.95,0),
                          child: Icon(Icons.edit, color: Colors.grey, size: 25,)
                      )
                    ],
                  ),
                ),
              ],
            ),

            //whos watching
            Padding(
              padding: const EdgeInsets.all(8),
              child: Text("Who's Watching?",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20
                ),),
            ),

            //profile
            GestureDetector(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 50, bottom: 10),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(3),
                      child: Image.network("https://assets.teenvogue.com/photos/5df7a55a71c0860008100a7c/master/pass/tout.jpg",
                        height: 120,
                        width: 120,
                        fit: BoxFit.cover,),
                    ),
                  ),
                  Text("Soulmates",
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 15
                    ),),
                ],
              ),

              onTap: (){
                Navigator.push(context, MaterialPageRoute(
                    builder: (context) =>  MyNavigationBar()
                ));
              },
            )
          ],
        ),
      ),
    );
  }
}