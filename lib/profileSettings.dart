import 'package:flutter/material.dart';
import 'package:netflix_clone/mylist.dart';

class ProfileSettings extends StatefulWidget {
  const ProfileSettings({Key? key}) : super(key: key);

  @override
  _ProfileSettingsState createState() => _ProfileSettingsState();
}

class _ProfileSettingsState extends State<ProfileSettings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text("Profile & More",
          textAlign: TextAlign.center,
          style: TextStyle(
              color: Colors.white,
              fontSize: 22,
              fontWeight: FontWeight.bold
          ),),

      ),
      backgroundColor: Colors.black,

      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [

            //manage profiles
            Container(
              height: 170,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Container(
                      child: Center(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(3),
                          child: Image.network("https://assets.teenvogue.com/photos/5df7a55a71c0860008100a7c/master/pass/tout.jpg",
                            height: 100,
                            width: 100,
                            fit: BoxFit.cover,),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: Text("Soulmates",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16
                      ),),
                  ),
                  Row(
                    children: [
                      Expanded(child: Container()),

                      Icon(Icons.edit, color: Colors.grey, size: 18,),
                      Text("  Manage Profiles",
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 18
                        ),),

                      Expanded(child: Container()),

                    ],
                  )
                ],
              ),
            ),
            SizedBox(height: 20,),

            //tell your friends
            Container(
              color: Colors.white12,
              child: Column(
                children: [

                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Row(
                      children: [
                        Icon(Icons.messenger_outline, color: Colors.white, size: 30,),
                        Text("  Tell you friends",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 22,
                              fontWeight: FontWeight.bold
                          ),),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10, bottom: 5),
                    child: Row(
                      children: [
                        Text("Share this link so your friends can join the\n"
                            "conversation around all your favourite TV shows\n"
                            "and movies.",
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: 16
                          ),),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10, bottom: 10),
                    child: Row(
                      children: [
                        Text("Term & conditions",
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: 14,
                              fontStyle: FontStyle.italic
                          ),),
                      ],
                    ),
                  ),

                  //copy link
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Container(
                      height: 50,
                      color: Colors.black,
                      child: Row(
                        children: [
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.all(10),
                              child: Text("https://www.netflix.com.in/u/2258...",
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 15,
                                    fontStyle: FontStyle.italic
                                ),),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 5),
                            child: Container(
                              width: 80,
                              height: 40,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(3)
                              ),
                              child: Center(
                                child: Text("Copy Link",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16
                                  ),),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),

                  //shares
                  Row(
                    children: [

                      Expanded(child: Container()),

                      //whatsapp
                      Container(
                        height: 100,
                        child: Column(
                          children: [

                            Padding(
                              padding: const EdgeInsets.only(top: 22),
                              child: Icon(Icons.send, color: Colors.grey, size: 35,),
                            ),
                            Expanded(child: Container()),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 22),
                              child: Text("WhatsApp",
                                style: TextStyle(
                                    color: Colors.grey
                                ),),
                            )
                          ],
                        ),
                      ),

                      Expanded(child: Container()),
                      Container(
                        width: 2,
                        height: 60,
                        decoration: BoxDecoration(
                            color: Colors.white12,
                            borderRadius: BorderRadius.circular(1)
                        ),
                      ),
                      Expanded(child: Container()),

                      //gmail
                      Container(
                        height: 100,
                        child: Column(
                          children: [

                            Padding(
                              padding: const EdgeInsets.only(top: 22),
                              child: Icon(Icons.mail_outline, color: Colors.grey, size: 35,),
                            ),
                            Expanded(child: Container()),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 22),
                              child: Text("Gmail",
                                style: TextStyle(
                                    color: Colors.grey
                                ),),
                            )
                          ],
                        ),
                      ),

                      Expanded(child: Container()),
                      Container(
                        width: 2,
                        height: 60,
                        decoration: BoxDecoration(
                            color: Colors.white12,
                            borderRadius: BorderRadius.circular(1)
                        ),
                      ),
                      Expanded(child: Container()),

                      //paypal
                      Container(
                        height: 100,
                        child: Column(
                          children: [

                            Padding(
                              padding: const EdgeInsets.only(top: 22),
                              child: Icon(Icons.payment, color: Colors.grey, size: 35,),
                            ),
                            Expanded(child: Container()),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 22),
                              child: Text("PayPal",
                                style: TextStyle(
                                    color: Colors.grey
                                ),),
                            )
                          ],
                        ),
                      ),

                      Expanded(child: Container()),
                      Container(
                        width: 2,
                        height: 60,
                        decoration: BoxDecoration(
                            color: Colors.white12,
                            borderRadius: BorderRadius.circular(1)
                        ),
                      ),
                      Expanded(child: Container()),

                      //more
                      Container(
                        height: 100,
                        child: Column(
                          children: [

                            Padding(
                              padding: const EdgeInsets.only(top: 22),
                              child: Icon(Icons.more_horiz, color: Colors.grey, size: 35,),
                            ),
                            Expanded(child: Container()),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 22),
                              child: Text("More",
                                style: TextStyle(
                                    color: Colors.grey
                                ),),
                            )
                          ],
                        ),
                      ),

                      Expanded(child: Container()),
                    ],
                  ),
                ],
              ),
            ),

            //my list
            GestureDetector(
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Row(
                  children: [
                    Icon(Icons.check, color: Colors.grey, size: 28,),
                    Text("  My List",
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 20
                      ),)
                  ],
                ),
              ),

              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => MyList()));
              },
            ),
            Container(
              height: 1,
              color: Colors.white24,
            ),

            //app settings
            Padding(
              padding: const EdgeInsets.only(top: 10, left: 10),
              child: Row(
                children: [
                  Text("App Settings",
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 18
                    ),),
                ],
              ),
            ),

            //account
            Padding(
              padding: const EdgeInsets.only(top: 10, left: 10),
              child: Row(
                children: [
                  Text("Account",
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 18
                    ),),
                ],
              ),
            ),

            //help
            Padding(
              padding: const EdgeInsets.only(top: 10, left: 10),
              child: Row(
                children: [
                  Text("Help",
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 18
                    ),),
                ],
              ),
            ),

            //sign out
            Padding(
              padding: const EdgeInsets.only(top: 10, left: 10, bottom: 10),
              child: Row(
                children: [
                  Text("Sign Out",
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 18
                    ),),
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}