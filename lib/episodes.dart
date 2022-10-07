import 'package:flutter/material.dart';
import 'package:netflix_clone/profileSettings.dart';

class Episodes extends StatefulWidget {
  const Episodes({Key? key}) : super(key: key);

  @override
  _EpisodesState createState() => _EpisodesState();
}

class _EpisodesState extends State<Episodes> {
  bool mylist = false;
  bool like = false;
  bool isEpisodes = true;

  int _value = 1;

  final List posters = [
    "images/1.png",
    "images/2.png",
    "images/3.png",
    "images/4.png",
    "images/5.png",
    "images/6.png",
    "images/7.png",
    "images/8.png",
    "images/9.png",
    "images/10.png",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,

      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title: Text("You",
          textAlign: TextAlign.center,
          style: TextStyle(
              color: Colors.white,
              fontSize: 22,
              fontWeight: FontWeight.bold
          ),),
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

      body: SingleChildScrollView(
        physics: ClampingScrollPhysics(),
        child: Column(
          children: [

            //poster
            Image.asset("images/YOUlandscape.png", fit: BoxFit.fitWidth,),

            //title
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 10),
              child: Row(
                children: [
                  Text("You",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 32,
                        fontWeight: FontWeight.bold
                    ),),
                ],
              ),
            ),

            //details
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 2.5,horizontal: 10),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 2.5),
                    child: Text("2018   18+   3 Seasons",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 16,
                      ),),
                  ),
                ],
              ),
            ),

            //play button
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              child: Container(
                height: 33.5,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(3)
                ),

                child: Row(
                  children: [
                    Expanded(child: Container()),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5),
                      child: Icon(Icons.play_arrow_sharp, color: Colors.black, size: 30,),
                    ),
                    Text("Play",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.bold
                      ),),
                    Expanded(child: Container()),
                  ],
                ),
              ),
            ),

            //download button
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
              child: Container(
                height: 33.5,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    color: Colors.white24,
                    borderRadius: BorderRadius.circular(3)
                ),

                child: Row(
                  children: [
                    Expanded(child: Container()),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5),
                      child: Icon(Icons.download_sharp, color: Colors.white, size: 27,),
                    ),
                    Text("Download S1:E1",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 17,
                          fontWeight: FontWeight.bold
                      ),),
                    Expanded(child: Container()),
                  ],
                ),
              ),
            ),

            //description
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 2.5,horizontal: 10),
              child: Container(
                width: MediaQuery.of(context).size.width - 10,
                child: Text(
                  "A charming yet awkward crush becomes something even \n"
                      "more sinister when the writer becomes the manager's \n"
                      "obsession.",
                  // overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 15,
                  ),),
              ),
            ),

            //staring
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 3),
              child: Row(
                children: [

                  Text("Staring : ",
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 14,
                        fontWeight: FontWeight.bold
                    ),),

                  Text("Penn Badgley, Victoria Pedretti, Elizabeth Lail",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 14,
                    ),),

                ],
              ),
            ),

            //creators
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                children: [

                  Text("Creators : ",
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 14,
                        fontWeight: FontWeight.bold
                    ),),

                  Text("Greg Berlanti, Sera Gamble",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 14,
                    ),),

                ],
              ),
            ),

            //actions
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Row(
                children: [
                  Expanded(child: Container()),

                  //add to my list
                  GestureDetector(

                    onTap: (){
                      setState(() {
                        mylist = true;
                      });
                    },

                    child: Column(
                      children: [
                        Icon(
                          mylist ? Icons.check : Icons.add,
                          color: Colors.white,
                          size: 35,),
                        Text("My List",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 15
                          ),),
                      ],
                    ),
                  ),

                  //rate
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 40),
                    child: GestureDetector(

                      onTap: (){
                        setState(() {
                          like = true;
                        });
                      },

                      child: Column(
                        children: [
                          Container(
                            width: 35,
                            height: 35,
                            decoration: BoxDecoration(
                                color: like ? Colors.red : Colors.black,
                                border: Border.all(color: Colors.grey, width: 1),
                                borderRadius: BorderRadius.circular(17.5)
                            ),
                            child: Center(
                                child: Icon(Icons.arrow_upward, color: Colors.white, size: 20,)
                            ),
                          ),
                          Text("Rate",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 15
                            ),),
                        ],
                      ),
                    ),
                  ),

                  //share
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 3),
                        child: Icon(
                          Icons.share,
                          color: Colors.white,
                          size: 27,),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 5),
                        child: Text("Share",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 15
                          ),),
                      ),
                    ],
                  ),

                  Expanded(child: Container()),
                ],
              ),
            ),

            Container(
              width: MediaQuery.of(context).size.width,
              height: 1.5,
              color: Colors.white10,
            ),

            //episode/more like this
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            isEpisodes = true;
                          });
                        },
                        child: Column(
                          children: [
                            Container(
                              margin: EdgeInsets.only(bottom: 15),
                              color: isEpisodes? Colors.red.shade500 : Colors.transparent,
                              width: MediaQuery.of(context).size.width / 2,
                              height: 3,
                            ),
                            Text("Episodes",
                              style: TextStyle(
                                  color: isEpisodes? Colors.white : Colors.grey,
                                  fontSize: 16
                              ),),
                          ],
                        ),
                      ),

                      GestureDetector(
                        onTap: () {
                          setState(() {
                            isEpisodes = false;
                          });
                        },
                        child: Column(
                          children: [
                            Container(
                              margin: EdgeInsets.only(bottom: 15),
                              color: isEpisodes? Colors.transparent : Colors.red.shade500,
                              width: MediaQuery.of(context).size.width / 2,
                              height: 3,
                            ),
                            Text("More like this",
                              style: TextStyle(
                                  color: isEpisodes? Colors.grey : Colors.white,
                                  fontSize: 16
                              ),),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),

                if(isEpisodes)
                  Column(
                    children: [

                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: Row(
                          children: [
                            Container(
                              width: 120,
                              height: 30,
                              decoration: BoxDecoration(
                                color: Colors.transparent,
                                border: Border.all(width: 0.5, color: Colors.white),
                              ),

                              child: Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 5),
                                child: DropdownButtonHideUnderline(
                                  child: DropdownButton(
                                    value: _value,
                                    dropdownColor: Colors.black,
                                    items: [
                                      for(int i = 1; i<4; i++)
                                        DropdownMenuItem(
                                          child: Text("Season $i",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 16,
                                            ),),
                                          value: i,
                                        ),
                                    ],
                                    onChanged: (value){
                                      setState(() {
                                        _value = value.hashCode;
                                      });
                                    },
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),

                      for(var i = 1; i<11; i++)
                        Padding(
                          padding: const EdgeInsets.only(bottom: 5),
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            height: 90,

                            child: Row(
                              children: [
                                //poster
                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 5),
                                  child: Container(
                                    width: 120,
                                    height: 70,
                                    child: Stack(
                                      children: [
                                        Positioned.fill(
                                          child: ClipRRect(
                                              borderRadius: BorderRadius.circular(5),
                                              child: Image.asset(posters.elementAt(i-1), width: 120, height: 80, fit: BoxFit.cover)
                                          ),
                                        ),

                                        Align(
                                          alignment: Alignment(0,0),
                                          child: Container(
                                            width: 35,
                                            height: 35,
                                            decoration: BoxDecoration(
                                                color: Colors.transparent,
                                                border: Border.all(color: Colors.white, width: 1),
                                                borderRadius: BorderRadius.circular(17.5)
                                            ),
                                            child: Center(
                                                child: Icon(Icons.play_arrow_sharp, color: Colors.white, size: 22,)
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),

                                //title
                                Padding(
                                  padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 10),
                                  child: Column(
                                    children: [
                                      Text("$i. Episode $i",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 18,
                                        ),),
                                    ],
                                  ),
                                ),

                                Expanded(child: Container()),

                                //download
                                Padding(
                                  padding: const EdgeInsets.all(10),
                                  child: Icon(Icons.download_sharp, color: Colors.white, size: 30,),
                                )
                              ],
                            ),
                          ),
                        ),
                    ],
                  )
                else
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 140,
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 10),
                      child: Row(
                        children: [
                          Expanded(child: Container()),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(5),
                            child: Image.asset("images/elite.png", width: 100, height: 140, fit: BoxFit.cover,),
                          ),
                          Expanded(child: Container()),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(5),
                            child: Image.asset("images/dynasty.png", width: 100, height: 140, fit: BoxFit.cover,),
                          ),
                          Expanded(child: Container()),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(5),
                            child: Image.asset("images/cloy.png", width: 100, height: 140, fit: BoxFit.cover,),
                          ),
                          Expanded(child: Container()),
                        ],
                      ),
                    ),
                  )
              ],
            )
          ],
        ),
      ),
    );
  }
}