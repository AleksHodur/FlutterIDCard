import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: NinjaCard(),
  ));
}

class NinjaCard extends StatefulWidget {
  const NinjaCard({super.key});

  @override
  State<NinjaCard> createState() => _NinjaCardState();
}

class _NinjaCardState extends State<NinjaCard> {

  int ninjaLevel = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 7, 77, 134),
      appBar: AppBar(
        title: Text('Awesome ID Card',
        style: TextStyle(
          color: Colors.pinkAccent,
        ),),
        centerTitle: true,
        backgroundColor: Colors.blue[800],
        elevation: 0.0, //deleting shadow
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            ninjaLevel++;
          });
        },
        child: Icon(
          Icons.add,
          color: Colors.pinkAccent[200],
        ),
        backgroundColor: Colors.blue[800],
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/profile_chun.PNG'),
                radius: 40.0,
              ),
            ),
            Divider(
              height: 60.0, //the space between
              color: Colors.blue[800],
            ),
            Text(
              'NAME',
              style: TextStyle(
                color: Colors.blue,
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              'Andy',
              style: TextStyle(
                color: Colors.pinkAccent[200],
                letterSpacing: 2.0,
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 30.0),
            Text(
              'CURRENT LEVEL',
              style: TextStyle(
                color: Colors.blue,
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              '$ninjaLevel',
              style: TextStyle(
                color: Colors.pinkAccent[200],
                letterSpacing: 2.0,
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 30.0),
            Row(
              children: [
                Icon(
                  Icons.email,
                  color: Colors.blue[400],
                ),
                SizedBox(width: 10.0),
                Text(
                  'andy@crazymail.com',
                  style: TextStyle(
                    color: Colors.blue[400],
                    fontSize: 18.0,
                    letterSpacing: 1.0,
                  )
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}