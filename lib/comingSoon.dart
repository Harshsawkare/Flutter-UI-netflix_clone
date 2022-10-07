import 'package:flutter/material.dart';

class ComingSoon extends StatefulWidget {
  const ComingSoon({Key? key}) : super(key: key);

  @override
  _ComingSoonState createState() => _ComingSoonState();
}

class _ComingSoonState extends State<ComingSoon> {

  bool remindme = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.black,
          elevation: 0,
          title: Text("Coming Soon",
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Colors.white,
                fontSize: 22,
                fontWeight: FontWeight.bold
            ),),
          // actions: [
          //   Padding(
          //     padding: const EdgeInsets.only(right: 15),
          //     child: Container(
          //       child: Center(
          //         child: ClipRRect(
          //           borderRadius: BorderRadius.circular(3),
          //           child: Image.network("https://assets.teenvogue.com/photos/5df7a55a71c0860008100a7c/master/pass/tout.jpg",
          //             height: 30,
          //             width: 30,
          //             fit: BoxFit.cover,),
          //         ),
          //       ),
          //     ),
          //   ),
          // ],
        ),
        backgroundColor: Colors.black,
        body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            children: [

              //one
              Column(
                children: [
                  //image
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 200,
                    child: Image.network("https://images.unsplash.com/photo-1568111561564-08726a1563e1?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTh8fG1vdmllc3xlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
                      fit: BoxFit.fitWidth,),
                  ),

                  //movie/show
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Row(
                      children: [
                        Image.asset("images/netflixshort_logo.png", width: 14, height: 12,),
                        Text("Movie", style: TextStyle(color: Colors.grey, fontSize: 12, fontWeight: FontWeight.bold),)
                      ],
                    ),
                  ),

                  //title
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Text("Nemesis",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 28
                          ),),
                      ),
                      Expanded(child: Container()),
                      GestureDetector(
                        child: Container(
                          width: 70,
                          child: Column(
                            children: [
                              Icon(remindme ? Icons.check : Icons.alarm, color: Colors.white, size: 25,),
                              Padding(
                                padding: const EdgeInsets.all(3),
                                child: Text("Remind Me",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14
                                  ),),
                              ),
                            ],
                          ),
                        ),
                        onTap: (){
                          setState(() {
                            remindme = true;
                          });
                        },
                      ),
                      Container(
                        width: 60,
                        child: Column(
                          children: [
                            Icon(Icons.info_outline, color: Colors.white, size: 25,),
                            Padding(
                              padding: const EdgeInsets.all(3),
                              child: Text("Info",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14
                                ),),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),

                  //release
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 3, horizontal: 10),
                    child: Row(
                      children: [
                        Text("Coming on Friday",
                          style: TextStyle(
                              color: Colors.grey
                          ),),
                      ],
                    ),
                  ),

                  //genre
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 3, horizontal: 10),
                    child: Row(
                      children: [
                        Text("Suspenseful . Psychological Thriller . Dark . Utopian",
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: 12
                          ),),
                      ],
                    ),
                  ),
                ],
              ),

              //two
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 30),
                child: Column(
                  children: [
                    //image
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 200,
                      child: Image.network("https://images.unsplash.com/photo-1568876694728-451bbf694b83?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTd8fG1vdmllc3xlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
                        fit: BoxFit.fitWidth,),
                    ),

                    //movie/show
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Row(
                        children: [
                          Image.asset("images/netflixshort_logo.png", width: 14, height: 12,),
                          Text("Movie", style: TextStyle(color: Colors.grey, fontSize: 12, fontWeight: FontWeight.bold),)
                        ],
                      ),
                    ),

                    //title
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Text("Memories of the dead",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 26
                            ),),
                        ),
                        Expanded(child: Container()),
                        GestureDetector(
                          child: Container(
                            width: 67,
                            child: Column(
                              children: [
                                Icon(remindme ? Icons.check : Icons.alarm, color: Colors.white, size: 25,),
                                Padding(
                                  padding: const EdgeInsets.all(3),
                                  child: Text("Remind Me",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 14
                                    ),),
                                ),
                              ],
                            ),
                          ),
                          onTap: (){
                            setState(() {
                              remindme = true;
                            });
                          },
                        ),
                        Container(
                          width: 60,
                          child: Column(
                            children: [
                              Icon(Icons.info_outline, color: Colors.white, size: 25,),
                              Padding(
                                padding: const EdgeInsets.all(3),
                                child: Text("Info",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14
                                  ),),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),

                    //release
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 3, horizontal: 10),
                      child: Row(
                        children: [
                          Text("Coming on 18th December",
                            style: TextStyle(
                                color: Colors.grey
                            ),),
                        ],
                      ),
                    ),

                    //genre
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 3, horizontal: 10),
                      child: Row(
                        children: [
                          Text("Romance . Drama . Calming . Nostalgic",
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize: 12
                            ),),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              //three
              Column(
                children: [
                  //image
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 200,
                    child: Image.network("https://images.unsplash.com/photo-1577033117892-6d498c6c7921?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NjR8fG1vdmllc3xlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60",
                      fit: BoxFit.fitWidth,),
                  ),

                  //movie/show
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Row(
                      children: [
                        Image.asset("images/netflixshort_logo.png", width: 14, height: 12,),
                        Text("Series", style: TextStyle(color: Colors.grey, fontSize: 12, fontWeight: FontWeight.bold),)
                      ],
                    ),
                  ),

                  //title
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Text("Popcorn Factory",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 28
                          ),),
                      ),
                      Expanded(child: Container()),
                      GestureDetector(
                        child: Container(
                          width: 70,
                          child: Column(
                            children: [
                              Icon(remindme ? Icons.check : Icons.alarm, color: Colors.white, size: 25,),
                              Padding(
                                padding: const EdgeInsets.all(3),
                                child: Text("Remind Me",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14
                                  ),),
                              ),
                            ],
                          ),
                        ),
                        onTap: (){
                          setState(() {
                            remindme = true;
                          });
                        },
                      ),
                      Container(
                        width: 60,
                        child: Column(
                          children: [
                            Icon(Icons.info_outline, color: Colors.white, size: 25,),
                            Padding(
                              padding: const EdgeInsets.all(3),
                              child: Text("Info",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14
                                ),),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),

                  //release
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 3, horizontal: 10),
                    child: Row(
                      children: [
                        Text("Coming on 29th January",
                          style: TextStyle(
                              color: Colors.grey
                          ),),
                      ],
                    ),
                  ),

                  //genre
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 3, horizontal: 10),
                    child: Row(
                      children: [
                        Text("Dark Comedy . Teen Drama . Sitcom . Modern",
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: 12
                          ),),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        )
    );
  }
}