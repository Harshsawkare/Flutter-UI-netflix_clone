import 'package:flutter/material.dart';

class Downloads extends StatefulWidget {
  const Downloads({Key? key}) : super(key: key);

  @override
  _DownloadsState createState() => _DownloadsState();
}

class _DownloadsState extends State<Downloads> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.black,
        elevation: 0,
        title: Text("Downloads",
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
      body: Center(
        child: Text("Start downloading now and \nwatch your favorite movies \nand TV shows offline.",
          textAlign: TextAlign.center,
          style: TextStyle(
              color: Colors.white54
          ),),
      ),
    );
  }
}