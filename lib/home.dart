import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:netflix_clone/episodes.dart';
import 'package:netflix_clone/movies.dart';
import 'package:netflix_clone/mylist.dart';
import 'package:netflix_clone/profileSettings.dart';
import 'package:netflix_clone/searchPage.dart';
import 'package:netflix_clone/tvshows.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  bool like = true;
  bool mylist = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    SystemChrome.setEnabledSystemUIOverlays([SystemUiOverlay.bottom]);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,

      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [

            //top area
            Container(
              width: MediaQuery.of(context).size.width,
              height: 500,
              child: Stack(
                children: [

                  //tvd poster
                  Positioned.fill(
                    child: Image.asset("images/you.png", fit: BoxFit.cover,),
                  ),

                  //topbar
                  Align(
                    alignment: Alignment(-1,-1),
                    child: Container(
                      height: 150,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [Colors.black54, Colors.transparent],
                              stops: [0.7, 1]
                          )
                      ),

                      child: Column(
                        children: [

                          SizedBox(height: 20,),

                          Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: Container(
                              width: MediaQuery.of(context).size.width,
                              height: 70,
                              child: Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10),
                                    child: Image.asset("images/netflixshort_logo.png", width: 40, height: 40,),
                                  ),

                                  Expanded(child: Container()),

                                  GestureDetector(
                                    child: Padding(
                                      padding: const EdgeInsets.only(right: 15),
                                      child: Icon(Icons.search_sharp, color: Colors.white, size: 23,),
                                    ),

                                    onTap: (){
                                      Navigator.push(context, MaterialPageRoute(
                                          builder: (context) => SearchPage())
                                      );
                                    },
                                  ),

                                  GestureDetector(
                                    child: Padding(
                                      padding: const EdgeInsets.only(right: 15),
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(3),
                                        child: Image.network("https://assets.teenvogue.com/photos/5df7a55a71c0860008100a7c/master/pass/tout.jpg",
                                          height: 30,
                                          width: 30,
                                          fit: BoxFit.cover,),
                                      ),
                                    ),
                                    onTap: (){
                                      Navigator.push(context, MaterialPageRoute(
                                          builder: (context) => ProfileSettings())
                                      );
                                    },
                                  ),
                                ],
                              ),
                            ),
                          ),

                          Container(
                            width: MediaQuery.of(context).size.width,
                            height: 20,
                            child: Row(
                              children: [

                                Expanded(child: Container()),

                                GestureDetector(
                                  child: Text("TV Shows",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20
                                    ),
                                  ),
                                  onTap: (){
                                    Navigator.push(context, MaterialPageRoute(
                                        builder: (context) => TVShows())
                                    );
                                  },
                                ),

                                Expanded(child: Container()),

                                GestureDetector(
                                  child: Text(" Movies ",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20
                                    ),
                                  ),
                                  onTap: (){
                                    Navigator.push(context, MaterialPageRoute(
                                        builder: (context) => Movies())
                                    );
                                  },
                                ),

                                Expanded(child: Container()),

                                GestureDetector(
                                  child: Text(" My List",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20
                                    ),
                                  ),

                                  onTap: (){
                                    Navigator.push(context, MaterialPageRoute(
                                        builder: (context) => MyList())
                                    );
                                  },
                                ),

                                Expanded(child: Container()),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  //bottombar
                  Align(
                    alignment: Alignment(1,1),
                    child: Container(
                      height: 80,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [Colors.transparent,Colors.black],
                              stops: [0, 0.8]
                          )
                      ),

                      child: Column(
                        children: [

                          Container(
                            width: MediaQuery.of(context).size.width,
                            height: 35,
                            child: Column(
                              children: [
                                Expanded(child: Container(),),
                                Text("Thriller . Psychological thriller . Crime fiction . Crime TV genre",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14
                                  ),),
                              ],
                            ),
                          ),

                          Container(
                            width: MediaQuery.of(context).size.width,
                            height: 45,
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

                                  child: Container(
                                    height: MediaQuery.of(context).size.height,
                                    width: 60,
                                    child: Column(
                                      children: [
                                        Expanded(child: Container()),
                                        Icon(
                                          mylist ? Icons.check : Icons.add,
                                          color: Colors.white,
                                          size: 24,),
                                        Text("My List",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 14
                                          ),),
                                        Expanded(child: Container()),
                                      ],
                                    ),
                                  ),
                                ),

                                Expanded(child: Container()),

                                //play
                                GestureDetector(
                                  onTap: (){
                                    Navigator.push(context, MaterialPageRoute(
                                        builder: (context) => Episodes())
                                    );
                                  },
                                  child: Container(
                                    height: 35,
                                    width: 120,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(3)
                                    ),

                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      children: const [
                                        Icon(Icons.play_arrow_sharp, color: Colors.black, size: 30,),
                                        Text("Play",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold
                                          ),),
                                      ],
                                    ),
                                  ),
                                ),

                                Expanded(child: Container()),

                                //info
                                GestureDetector(
                                  child: Container(
                                    height: MediaQuery.of(context).size.height,
                                    width: 60,
                                    child: Column(
                                      children: [
                                        Expanded(child: Container()),
                                        Icon(Icons.info_outline, color: Colors.white, size: 25,),
                                        Text("Info",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 14
                                          ),),
                                        Expanded(child: Container()),
                                      ],
                                    ),
                                  ),

                                  onTap: (){
                                    showModalBottomSheet<dynamic>(
                                        context: context,
                                        backgroundColor: Colors.transparent,
                                        builder: (context) => Container(
                                          decoration: BoxDecoration(
                                              color: Colors.black87,
                                              borderRadius: BorderRadius.only(topRight: Radius.circular(25), topLeft: Radius.circular(25))
                                          ),

                                          child: Padding(
                                            padding: const EdgeInsets.all(20),
                                            child: Column(
                                              children: [

                                                //poster
                                                ClipRRect(
                                                  borderRadius: BorderRadius.circular(5),
                                                  child: Image.asset(
                                                    "images/YOUlandscape.png",
                                                    width: MediaQuery.of(context).size.width,
                                                    height: 180,
                                                    fit: BoxFit.fitWidth,
                                                  ),
                                                ),

                                                //title
                                                Row(
                                                  children: [
                                                    Padding(
                                                      padding: const EdgeInsets.symmetric(vertical: 2.5),
                                                      child: Text("You",
                                                        style: TextStyle(
                                                            color: Colors.white,
                                                            fontSize: 25,
                                                            fontWeight: FontWeight.bold
                                                        ),),
                                                    ),
                                                  ],
                                                ),

                                                //details
                                                Row(
                                                  children: [
                                                    Padding(
                                                      padding: const EdgeInsets.symmetric(vertical: 2.5),
                                                      child: Text("2018   18+   3 Seasons",
                                                        style: TextStyle(
                                                          color: Colors.grey,
                                                          fontSize: 14,
                                                        ),),
                                                    ),
                                                  ],
                                                ),

                                                //description
                                                Padding(
                                                  padding: const EdgeInsets.symmetric(vertical: 2.5),
                                                  child: Container(
                                                    child: Text(
                                                      "A charming yet awkward crush becomes something even \n"
                                                          "more sinister when the writer becomes the manager's \n"
                                                          "obsession.",
                                                      style: TextStyle(
                                                        color: Colors.grey,
                                                        fontSize: 14,
                                                      ),),
                                                  ),
                                                ),

                                                //episodes
                                                GestureDetector(
                                                  child: Padding(
                                                    padding: const EdgeInsets.only(top: 10),
                                                    child: Container(
                                                      height: 25,
                                                      width: 150,
                                                      decoration: BoxDecoration(
                                                          color: Colors.white70,
                                                          borderRadius: BorderRadius.circular(3)
                                                      ),

                                                      child: Center(
                                                        child: Text("Episodes",
                                                          style: TextStyle(
                                                              color: Colors.black,
                                                              fontSize: 16,
                                                              fontWeight: FontWeight.bold
                                                          ),),
                                                      ),
                                                    ),
                                                  ),

                                                  onTap: (){
                                                    Navigator.push(context, MaterialPageRoute(
                                                        builder: (context) => Episodes()
                                                    ));
                                                  },
                                                ),
                                              ],
                                            ),
                                          ),
                                        )
                                    );
                                  },
                                ),

                                Expanded(child: Container()),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Container(
                width: 100,
                height: 3,
                decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(10)
                ),
              ),
            ),

            //popular on netflix
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Container(
                height: 200,
                width: MediaQuery.of(context).size.width,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10, bottom: 10),
                      child: Text("Popular on Netflix",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                            fontWeight: FontWeight.bold
                        ),),
                    ),

                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 140,

                      child: SingleChildScrollView(
                        physics: BouncingScrollPhysics(),
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [

                            GestureDetector(
                              child: Padding(
                                padding: const EdgeInsets.only(left: 5),
                                child: Container(
                                  width: 100,
                                  height: 140,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(5),
                                    child: Image.asset("images/you.png",
                                      fit: BoxFit.cover,),
                                  ),
                                ),
                              ),
                              onTap: (){
                                Navigator.push(context, MaterialPageRoute(
                                    builder: (context) => Episodes()
                                ));
                              },
                            ),

                            Padding(
                              padding: const EdgeInsets.only(left: 5),
                              child: Container(
                                width: 100,
                                height: 140,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(5),
                                  child: Image.asset("images/elite.png",
                                    fit: BoxFit.cover,),
                                ),
                              ),
                            ),

                            Padding(
                              padding: const EdgeInsets.only(left: 5),
                              child: Container(
                                width: 100,
                                height: 140,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(5),
                                  child: Image.asset("images/dynasty.png",
                                    fit: BoxFit.cover,),
                                ),
                              ),
                            ),

                            Padding(
                              padding: const EdgeInsets.only(left: 5),
                              child: Container(
                                width: 100,
                                height: 140,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(5),
                                  child: Image.asset("images/cloy.png",
                                    fit: BoxFit.cover,),
                                ),
                              ),
                            ),

                            Padding(
                              padding: const EdgeInsets.only(left: 5),
                              child: Container(
                                width: 100,
                                height: 140,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(5),
                                  child: Image.asset("images/blymanor.png",
                                    fit: BoxFit.cover,),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    )

                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Container(
                width: 100,
                height: 3,
                decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(10)
                ),
              ),
            ),

            //Trending Now
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Container(
                height: 200,
                width: MediaQuery.of(context).size.width,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10, bottom: 10),
                      child: Text("Trending Now",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                            fontWeight: FontWeight.bold
                        ),),
                    ),

                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 140,

                      child: SingleChildScrollView(
                        physics: BouncingScrollPhysics(),
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [

                            GestureDetector(
                              child: Padding(
                                padding: const EdgeInsets.only(left: 5),
                                child: Container(
                                  width: 100,
                                  height: 140,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(5),
                                    child: Image.asset("images/you.png",
                                      fit: BoxFit.cover,),
                                  ),
                                ),
                              ),
                              onTap: (){
                                Navigator.push(context, MaterialPageRoute(
                                    builder: (context) => Episodes()
                                ));
                              },
                            ),

                            Padding(
                              padding: const EdgeInsets.only(left: 5),
                              child: Container(
                                width: 100,
                                height: 140,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(5),
                                  child: Image.asset("images/elite.png",
                                    fit: BoxFit.cover,),
                                ),
                              ),
                            ),

                            Padding(
                              padding: const EdgeInsets.only(left: 5),
                              child: Container(
                                width: 100,
                                height: 140,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(5),
                                  child: Image.asset("images/dynasty.png",
                                    fit: BoxFit.cover,),
                                ),
                              ),
                            ),

                            Padding(
                              padding: const EdgeInsets.only(left: 5),
                              child: Container(
                                width: 100,
                                height: 140,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(5),
                                  child: Image.asset("images/cloy.png",
                                    fit: BoxFit.cover,),
                                ),
                              ),
                            ),

                            Padding(
                              padding: const EdgeInsets.only(left: 5),
                              child: Container(
                                width: 100,
                                height: 140,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(5),
                                  child: Image.asset("images/blymanor.png",
                                    fit: BoxFit.cover,),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    )

                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Container(
                width: 100,
                height: 3,
                decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(10)
                ),
              ),
            ),

            //Only on Netflix
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Container(
                height: 300,
                width: MediaQuery.of(context).size.width,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10, bottom: 10),
                      child: Text("Only on Netflix",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                            fontWeight: FontWeight.bold
                        ),),
                    ),

                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 240,

                      child: SingleChildScrollView(
                        physics: BouncingScrollPhysics(),
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [

                            Padding(
                              padding: const EdgeInsets.only(left: 5),
                              child: Container(
                                width: 200,
                                height: 240,
                                child: Stack(
                                    children: [
                                      Positioned.fill(
                                        child: ClipRRect(
                                          borderRadius: BorderRadius.circular(5),
                                          child: Image.asset("images/you.png",
                                            fit: BoxFit.cover,),
                                        ),
                                      ),

                                      Align(
                                        alignment: Alignment(1,-0.9),
                                        child: Image.asset("images/netflixshort_logo.png", width: 40, height: 40,),
                                      )
                                    ]
                                ),
                              ),
                            ),

                            Padding(
                              padding: const EdgeInsets.only(left: 5),
                              child: Container(
                                width: 200,
                                height: 240,
                                child: Stack(
                                    children: [
                                      Positioned.fill(
                                        child: ClipRRect(
                                          borderRadius: BorderRadius.circular(5),
                                          child: Image.asset("images/elite.png",
                                            fit: BoxFit.cover,),
                                        ),
                                      ),

                                      Align(
                                        alignment: Alignment(1,-0.9),
                                        child: Image.asset("images/netflixshort_logo.png", width: 40, height: 40,),
                                      )
                                    ]
                                ),
                              ),
                            ),

                            Padding(
                              padding: const EdgeInsets.only(left: 5),
                              child: Container(
                                width: 200,
                                height: 240,
                                child: Stack(
                                    children: [
                                      Positioned.fill(
                                        child: ClipRRect(
                                          borderRadius: BorderRadius.circular(5),
                                          child: Image.asset("images/dynasty.png",
                                            fit: BoxFit.cover,),
                                        ),
                                      ),

                                      Align(
                                        alignment: Alignment(1,-0.9),
                                        child: Image.asset("images/netflixshort_logo.png", width: 40, height: 40,),
                                      )
                                    ]
                                ),
                              ),
                            ),

                            Padding(
                              padding: const EdgeInsets.only(left: 5),
                              child: Container(
                                width: 200,
                                height: 240,
                                child: Stack(
                                    children: [
                                      Positioned.fill(
                                        child: ClipRRect(
                                          borderRadius: BorderRadius.circular(5),
                                          child: Image.asset("images/cloy.png",
                                            fit: BoxFit.cover,),
                                        ),
                                      ),

                                      Align(
                                        alignment: Alignment(1,-0.9),
                                        child: Image.asset("images/netflixshort_logo.png", width: 40, height: 40,),
                                      )
                                    ]
                                ),
                              ),
                            ),

                            Padding(
                              padding: const EdgeInsets.only(left: 5),
                              child: Container(
                                width: 200,
                                height: 240,
                                child: Stack(
                                    children: [
                                      Positioned.fill(
                                        child: ClipRRect(
                                          borderRadius: BorderRadius.circular(5),
                                          child: Image.asset("images/blymanor.png",
                                            fit: BoxFit.cover,),
                                        ),
                                      ),

                                      Align(
                                        alignment: Alignment(1,-0.9),
                                        child: Image.asset("images/netflixshort_logo.png", width: 40, height: 40,),
                                      )
                                    ]
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    )

                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Container(
                width: 100,
                height: 3,
                decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(10)
                ),
              ),
            ),

            //Rate title
            Padding(
              padding: const EdgeInsets.only(top: 10, bottom: 10),
              child: Text("Rate Title",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.bold
                ),),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 190,
                decoration: BoxDecoration(
                    color: Colors.white12,
                    border: Border.all(color: Colors.white24, width: 2),
                    borderRadius: BorderRadius.circular(10)
                ),

                child: Stack(
                  children: [
                    Positioned.fill(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: Image.asset("images/YOUlandscape.png", fit: BoxFit.fitWidth,),
                        )
                    ),

                    GestureDetector(

                      onTap: (){
                        setState(() {
                          like = true;
                        });
                      },

                      child: Align(
                        alignment: Alignment(0.4, 0.5),
                        child: Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                              color: like ? Colors.red : Colors.white30,
                              border: Border.all(color: Colors.grey, width: 1),
                              borderRadius: BorderRadius.circular(25)
                          ),
                          child: Center(
                              child: Icon(Icons.arrow_upward, color: Colors.white, size: 25,)
                          ),
                        ),
                      ),
                    ),

                    GestureDetector(

                      onTap: (){
                        setState(() {
                          like = false;
                        });
                      },

                      child: Align(
                        alignment: Alignment(0.9, 0.5),
                        child: Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                              color: like ? Colors.white30 : Colors.red,
                              border: Border.all(color: Colors.grey, width: 1),
                              borderRadius: BorderRadius.circular(25)
                          ),
                          child: Center(
                              child: Icon(Icons.arrow_downward, color: Colors.white, size: 25,)
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Container(
                width: 100,
                height: 3,
                decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(10)
                ),
              ),
            ),

            //Recommended for soulmates
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Container(
                height: 200,
                width: MediaQuery.of(context).size.width,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10, bottom: 10),
                      child: Text("Recommended for Soulmates",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                            fontWeight: FontWeight.bold
                        ),),
                    ),

                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 140,

                      child: SingleChildScrollView(
                        physics: BouncingScrollPhysics(),
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [

                            Padding(
                              padding: const EdgeInsets.only(left: 5),
                              child: Container(
                                width: 100,
                                height: 140,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(5),
                                  child: Image.asset("images/you.png",
                                    fit: BoxFit.cover,),
                                ),
                              ),
                            ),

                            Padding(
                              padding: const EdgeInsets.only(left: 5),
                              child: Container(
                                width: 100,
                                height: 140,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(5),
                                  child: Image.asset("images/elite.png",
                                    fit: BoxFit.cover,),
                                ),
                              ),
                            ),

                            Padding(
                              padding: const EdgeInsets.only(left: 5),
                              child: Container(
                                width: 100,
                                height: 140,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(5),
                                  child: Image.asset("images/dynasty.png",
                                    fit: BoxFit.cover,),
                                ),
                              ),
                            ),

                            Padding(
                              padding: const EdgeInsets.only(left: 5),
                              child: Container(
                                width: 100,
                                height: 140,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(5),
                                  child: Image.asset("images/cloy.png",
                                    fit: BoxFit.cover,),
                                ),
                              ),
                            ),

                            Padding(
                              padding: const EdgeInsets.only(left: 5),
                              child: Container(
                                width: 100,
                                height: 140,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(5),
                                  child: Image.asset("images/blymanor.png",
                                    fit: BoxFit.cover,),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    )

                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}