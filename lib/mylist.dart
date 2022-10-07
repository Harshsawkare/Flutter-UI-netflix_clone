import 'package:flutter/material.dart';
import 'package:netflix_clone/profileSettings.dart';

class MyList extends StatefulWidget {
  const MyList({Key? key}) : super(key: key);

  @override
  _MyListState createState() => _MyListState();
}

class _MyListState extends State<MyList> {

  final List poster = [
    "https://media.istockphoto.com/photos/futuristic-mech-warrior-with-weapons-stands-in-the-middle-of-city-picture-id1284382176?b=1&k=20&m=1284382176&s=170667a&w=0&h=pbjcxWN5-VX_Ub691hjYOtELcqU10rDShVs8AdJg4AI=",
    "https://images.unsplash.com/photo-1536440136628-849c177e76a1?ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8Y2luZW1hfGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1592854899481-f78db4baccb6?ixid=MnwxMjA3fDB8MHxzZWFyY2h8NDJ8fGNpbmVtYXxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1498940757830-82f7813bf178?ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8ZnVufGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
    "https://assets.teenvogue.com/photos/5df7a55a71c0860008100a7c/master/pass/tout.jpg",
  ];
  final List title = [
    "Robo Apocalypse",
    "Cafe Downtown",
    "Them",
    "Big Balls",
    "You",
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

          Padding(
            padding: const EdgeInsets.only(left: 10, bottom: 10),
            child: Row(
              children: [
                Text("My List",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.bold
                  ),)
              ],
            ),
          ),

          Expanded(
            child: GridView.count(
              shrinkWrap: true,
              crossAxisCount: 3,
              crossAxisSpacing: 5,
              mainAxisSpacing: 5,
              physics: BouncingScrollPhysics(),
              children: List.generate(poster.length, (index) {
                return Column(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(5),
                      child: Image.network(poster.elementAt(index) ,height: 80 , width: 110,fit: BoxFit.cover,),
                    ),

                    Container(
                      height: 20,
                      child: Center(
                        child: Text(title.elementAt(index),
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                          ),),
                      ),
                    )
                  ],
                );
              }),
            ),
          )
        ],
      ),
    );
  }
}