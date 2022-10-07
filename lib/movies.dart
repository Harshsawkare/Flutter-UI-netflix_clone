import 'package:flutter/material.dart';
import 'package:netflix_clone/episodes.dart';
import 'package:netflix_clone/profileSettings.dart';

class Movies extends StatefulWidget {
  const Movies({Key? key}) : super(key: key);

  @override
  _MoviesState createState() => _MoviesState();
}

class _MoviesState extends State<Movies> {

  int _value = 0;
  final List genre = [
    "Genre",
    "Adventure",
    "Action",
    "Crime",
    "Comedy",
    "Drama",
    "Documentary",
    "Dark Comedy",
    "Psychological Thriller",
    "Kdrama",
    "Romance",
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

      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [

            //movies and genre
            Padding(
              padding: const EdgeInsets.only(left: 10, bottom: 10, right: 10),
              child: Row(
                children: [
                  Text("Movies",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.bold
                    ),),

                  Expanded(child: Container()),

                  DropdownButtonHideUnderline(
                    child: DropdownButton(
                      value: _value,
                      dropdownColor: Colors.black,
                      items: [
                        for(int i = 0; i < genre.length ; i++)
                          DropdownMenuItem(
                            child: Text(genre.elementAt(i),
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
                ],
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

            //Thriller
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Container(
                height: 200,
                width: MediaQuery.of(context).size.width,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10, bottom: 10),
                      child: Text("Thriller",
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

            //Romance
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Container(
                height: 200,
                width: MediaQuery.of(context).size.width,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10, bottom: 10),
                      child: Text("Romance",
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

          ],
        ),
      ),
    );
  }
}