import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme:ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: Colors.black12,
      ),
      home: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Expanded(

                  child: Container(
                    width: 20,
                    height: 20,
                    child: CircleAvatar(
                      backgroundImage:
                      NetworkImage('https://picsum.photos/id/237/200/300'),
                    )
                    ),
                ),
                SizedBox(width: 10,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Container(
                          //width: 200,
                          padding: EdgeInsets.all(10),
                          margin: EdgeInsets.fromLTRB(10, 20, 10, 0),
                          child: Text(
                            'Adewale Yusuf ',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12.0,
                              fontWeight: FontWeight.w400,
                            ),
                          )),
                    ),
                    SizedBox(height: 5),
                    Expanded(
                      child: Container(
                          //width: 200,
                          padding: EdgeInsets.all(10),
                          margin: EdgeInsets.fromLTRB(10, 20, 10, 0),
                          child: Text(
                            'Democrating acess to in-demand skills',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12.0,
                              fontWeight: FontWeight.w400,
                            ),
                          )),
                    ),
                    SizedBox(height: 5),
                    Expanded(
                      child: Container(
                          //width: 350,
                          padding: EdgeInsets.all(10),
                          margin: EdgeInsets.fromLTRB(10, 20, 10, 0),
                          child: Text(
                            '1 week.',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12.0,
                              fontWeight: FontWeight.w400,
                            ),
                          )),
                    ),
                    SizedBox(height: 5),
                  ],
                ),
                SizedBox(width: 10,),
                Expanded(
                  child: Container(
                   // width: 20,
                    //height: 10,
                    child: Icon(Icons.apps_sharp, size: 14),
                  ),
                ),

              ],
            ),
            Expanded(
              child: Container(
                 // width: 350,
                  padding: EdgeInsets.all(10),
                  margin: EdgeInsets.fromLTRB(10, 20, 10, 0),
                  child: Text(
                    'I spent yesterday with a team of investors',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14.0,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
              ),
            ),
            Expanded(
              child: Container(
               // width: 200,
                height: 50,
                child: Image.network(
                  'https://picsum.photos/id/1074/400/400',
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Expanded(
                  child:
                  Container(
                    child: Icon(Icons.thumb_up_outlined, size: 14),
                  ),
                ),
                SizedBox(width: 5,),
                Expanded(
                  child: Container(
                   // width: 100,
                    padding: EdgeInsets.all(10),
                    //margin: EdgeInsets.fromLTRB(10, 20, 10, 0),
                    child: Text(
                      'Temitope Olorungbaba and 1,367 others',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12.0,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 5,),
                Expanded(
                  child: Container(
                   // width: 50,
                    padding: EdgeInsets.all(10),
                   // margin: EdgeInsets.fromLTRB(10, 20, 10, 0),
                    child: Text(
                      '22 comments.4shares',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18.0,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const Divider(height: 0, color: Color(0xFF999999)),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                TextButton.icon(
                  icon: Icon(Icons.thumb_up_outlined),
                  label: Text('Like'),
                  onPressed: () {},
                ),
                SizedBox(width: 10,),

                TextButton.icon(
                  icon: Icon(Icons.comment),
                  label: Text('Comment'),
                  onPressed: () {},
                ),
                SizedBox(width: 10,),

                TextButton.icon(
                  icon: Icon(Icons.share_outlined),
                  label: Text('Share'),
                  onPressed: () {},
                ),
                SizedBox(width: 10,),

                TextButton.icon(
                  icon: Icon(Icons.send),
                  label: Text('Send'),
                  onPressed: () {},
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
