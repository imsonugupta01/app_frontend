import 'package:flutter/material.dart';
import 'package:newproject/CustomRow.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.purpleAccent),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Assignment'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Padding(
          padding: const EdgeInsets.only(top: 20.0),
          child: const Text(
            "Menu",
            style: TextStyle(color: Colors.white, fontSize: 50),
          ),
        ),
      ),
      body: Container(
        color: Colors.black,
        width: double.infinity,
        height: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            SizedBox(height: 20),

            Row(
              children: [
                SizedBox(width: 10),
                CircleAvatar(
                  radius: 32,
                  backgroundColor: Colors.black,

                  child: CircleAvatar(
                    radius: 28,
                    child: CircleAvatar(
                      radius: 25, // Outer circle radius
                      backgroundColor: Colors.white,
                      child: CircleAvatar(
                        radius: 20, // Inner circle radius
                        backgroundColor: Colors.red,
                        child: CircleAvatar(
                          radius: 15, // Innermost circle radius
                          backgroundColor: Colors.red,
                          child: Text(
                            "J",
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 16),
                  child: Text(
                    "Dr. Angad Singh",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20,),
            Row(
              children: [
                SizedBox(width: 10,),
                CircleAvatar(
                    backgroundColor: Colors.white,
                    child: Icon(Icons.account_balance_wallet, color: Colors.black, size: 30)),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: Text(
                    "Wallet",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
                //
                Spacer(),
                Icon(Icons.lock_outline,color: Colors.white,)
              ],
            ),
            SizedBox(height: 15),
            CustomRow(icon: Icons.account_circle_outlined, text: "Profile Setting",),
            SizedBox(height: 15),
            CustomRow(icon: Icons.edit_document,   text: "Terms & Conditions"),
            SizedBox(height: 15),
            CustomRow(icon: Icons.headphones, text: "Supoort"),
            SizedBox(height: 15),
            CustomRow(icon: Icons.logout, text: "Logout"),
            SizedBox(height: 15),
            Row(
              children: [
                SizedBox(width: 10,),
                Icon(Icons.delete, color: Colors.white, size: 30),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: Text(
                    "delete account",
                    style: TextStyle(color: Colors.red, fontSize: 20),
                  ),
                ),
              ],
            ),
            SizedBox(height: 50,),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: Text(
                    "version 1.0.1",
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.all(10), // Adjust padding as needed
        color: Colors.black87, // Choose your desired background color
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Icon(Icons.home_filled, color: Colors.white, size: 30),
            Icon(Icons.add_home, color: Colors.white, size: 30),
            Icon(Icons.notifications, color: Colors.white, size: 30),
            Container(
              // color: Colors.black26,
              decoration: BoxDecoration(
                color: Colors.black26,
                borderRadius:BorderRadius.circular(10)
              ),
              child: Row(

                children: [
                  Icon(Icons.settings_sharp, color: Colors.white, size: 30),
                  Text("menu",style: TextStyle(color: Colors.white),)
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
