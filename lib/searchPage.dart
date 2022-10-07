import 'package:flutter/material.dart';
import 'package:netflix_clone/profileSettings.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {

  final List poster = [
    "https://media.istockphoto.com/photos/futuristic-mech-warrior-with-weapons-stands-in-the-middle-of-city-picture-id1284382176?b=1&k=20&m=1284382176&s=170667a&w=0&h=pbjcxWN5-VX_Ub691hjYOtELcqU10rDShVs8AdJg4AI=",
    "https://images.unsplash.com/photo-1536440136628-849c177e76a1?ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8Y2luZW1hfGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1592854899481-f78db4baccb6?ixid=MnwxMjA3fDB8MHxzZWFyY2h8NDJ8fGNpbmVtYXxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1498940757830-82f7813bf178?ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8ZnVufGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1606422718307-7ab02064d541?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjZ8fGZ1bnxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
  ];

  final List title = [
    "Robo Apocalypse",
    "Cafe Downtown",
    "Them",
    "Big Balls",
    "You Get Me",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        actions: [
          GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(
                  builder: (context) => ProfileSettings())
              );
            },
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(3),
                child: Image.network("https://assets.teenvogue.com/photos/5df7a55a71c0860008100a7c/master/pass/tout.jpg",
                  height: 35,
                  width: 35,
                  fit: BoxFit.cover,),
              ),
            ),
          )
        ],
      ),
      body: Column(
        children: [
          SizedBox(height: 10,),

          //search bar
          Container(
            width: MediaQuery.of(context).size.width,
            height: 50,
            color: Colors.white12,
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Icon(Icons.search, color: Colors.grey, size: 23,),
                ),
                Expanded(child: Text("search by movie, series, genre, etc....",style: TextStyle(color: Colors.grey, fontSize: 16),)),
                Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: Icon(Icons.mic, color: Colors.grey, size: 23,),
                )
              ],
            ),
          ),

          SizedBox(height: 10,),

          //top searches
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(10),
                child: Text("Top Searches",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 25
                  ),),
              )
            ],
          ),

          //tiles
          for(int i = 0; i<5; i++)
            Padding(
              padding: const EdgeInsets.only(top: 5),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 70,
                color: Colors.white12,
                child: Row(
                  children: [
                    //poster
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5),
                      child: Container(
                        width: 110,
                        height: 60,
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(5),
                            child: Image.network(poster.elementAt(i), fit: BoxFit.cover)
                        ),
                      ),
                    ),

                    //title
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 10),
                      child: Text(title.elementAt(i),
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold
                        ),),
                    ),

                    Expanded(child: Container()),

                    //download
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Icon(Icons.play_circle_outline, color: Colors.white, size: 25,),
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