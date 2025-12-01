import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const MyHomePage(),
        '/Second': (context) => const SecondPage(),
      },
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(top: 20, bottom: 20),
              width: double.infinity,
              decoration: BoxDecoration(color: Colors.red[300]),
              child: Column(
                children: [
                  Text(
                    "ข้อมูลส่วนตัว",
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 18),
                  Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.green,
                      shape: BoxShape.circle,
                    ),
                    child: ClipOval(
                      child: Image.network(
                        "https://preview.redd.it/bombardiro-crocodilo-is-watching-you-v0-zz7m4erg081f1.jpeg?auto=webp&s=3ec40520b53a7488e4cec8f1e3457db6490b58ef",
                        width: 200,
                        height: 200,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),

                  SizedBox(height: 18),
                  Text("Pongsakarn Rasameejaem"),
                  SizedBox(height: 18),
                  Text("pongsakarn.rasameejaem@e-tech.ac.th"),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("ข้อมูลส่วนตัว"),
                  SizedBox(height: 30),

                  Container(
                    padding: EdgeInsets.only(left: 20),
                    child: Row(
                      children: [
                        Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: Colors.green[100],
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Icon((Icons.phone), color: Colors.green),
                        ),
                        SizedBox(width: 10),
                        Column(
                          children: [
                            Text("เบอร์โทรศัพท์"),
                            Text("081-2563698"),
                          ],
                        ),
                      ],
                    ),
                  ),

                  SizedBox(height: 18),

                  Container(
                    padding: EdgeInsets.only(left: 20),
                    child: Row(
                      children: [
                        Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: Colors.red[100],
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Icon((Icons.cake), color: Colors.red),
                        ),
                        SizedBox(width: 10),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [Text("วันเกิด"), Text("26 กันยายน 2568")],
                        ),
                      ],
                    ),
                  ),

                  SizedBox(height: 18),

                  Container(
                    padding: EdgeInsets.only(left: 20),
                    child: Row(
                      children: [
                        Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: Colors.orange[100],
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Icon(
                            (Icons.location_on),
                            color: Colors.orange,
                          ),
                        ),
                        SizedBox(width: 10),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [Text("ที่อยู่"), Text("ชลบุรี")],
                        ),
                      ],
                    ),
                  ),

                  SizedBox(height: 18),

                  Container(
                    padding: EdgeInsets.only(left: 20),
                    child: Row(
                      children: [
                        Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: Colors.purple[100],
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Icon((Icons.school), color: Colors.purple),
                        ),
                        SizedBox(width: 10),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("การศึกษา"),
                            Text("วิทยาลัยเทคโนโลยีภาคตะวันออก(อี.เทค)"),
                          ],
                        ),
                      ],
                    ),
                  ),

                  SizedBox(height: 20),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () => Navigator.pushNamed(context, '/Second'),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange,
                        foregroundColor: Colors.white,
                      ),
                      child: Text("Go To Second"),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  padding: EdgeInsets.only(top: 30, left: 10),
                  child: ClipOval(
                    child: Image.network(
                      "https://preview.redd.it/bombardiro-crocodilo-is-watching-you-v0-zz7m4erg081f1.jpeg?auto=webp&s=3ec40520b53a7488e4cec8f1e3457db6490b58ef",
                      width: 100,
                      height: 100,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),

                Container(
                  padding: EdgeInsets.only(left: 10),
                  child: Column(children: [Text("5"), Text("กำลังติดตาม")]),
                ),
                SizedBox(width: 10),
                Container(width: 2, height: 50, color: Colors.grey[400]),
                SizedBox(width: 10),
                Container(
                  child: Column(children: [Text("828.1 K"), Text("ผู้ติดตาม")]),
                ),
                SizedBox(width: 10),
                Container(width: 2, height: 50, color: Colors.grey[400]),
                SizedBox(width: 10),
                Container(
                  child: Column(children: [Text("5"), Text("ถูกใจและบันทึก")]),
                ),
              ],
            ),

            SizedBox(height: 20),
            Container(
              padding: EdgeInsets.only(left: 20),
              child: Row(
                children: [
                  Text(
                    "Pongsakarn_Rasameejaem",
                    style: TextStyle(fontSize: 20),
                  ),
                  Icon(Icons.verified, color: Colors.blue),
                ],
              ),
            ),

            SizedBox(height: 5),
            Container(
              padding: EdgeInsets.only(left: 15),
              child: Row(
                children: [
                  Icon(Icons.tiktok),
                  Text("Pongsakarn16"),
                  Icon(Icons.arrow_drop_down),
                ],
              ),
            ),

            SizedBox(height: 40),
            Row(
              children: [
                SizedBox(width: 40),
                SizedBox(
                  width: 250,
                  child: ElevatedButton(
                    onPressed: () => Navigator.pushNamed(context, '/Second'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.yellow,
                      foregroundColor: Colors.white,
                    ),
                    child: Text("ติดตาม",style: TextStyle(color: Colors.black),) ,
                  ),
                ),
                SizedBox(width: 15),
                Container(child: Icon(Icons.share)),
              ],
            ),

            SizedBox(height: 40),

            Row(
              children: [
                SizedBox(width: 17,),
                SizedBox(
                  width: 190,
                  child: Image.network(
                    "https://i.pinimg.com/474x/b3/02/03/b30203cc1a19fa3921b8dcb0b4c62db0.jpg",
                  ),
                ),
                SizedBox(width: 20),
                SizedBox(
                  width: 165,
                  child: Image.network(
                    "https://cdn.vectorstock.com/i/1000v/07/29/happy-crocodile-for-kids-design-vector-11500729.jpg",
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
