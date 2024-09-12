import 'package:flutter/material.dart';

void main() {
  runApp(BiddingApp());
}

class BiddingApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bidding App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // Remove the brightness property from ThemeData and configure it within colorScheme
        colorScheme: ColorScheme.light(
          primary: Colors.yellow, // Set primary color to yellow
          secondary: Colors.yellowAccent, // Set accent color to yellow
        ),
        textTheme: TextTheme(
          bodyMedium: TextStyle(color: Colors.white, fontSize: 18), // Text color and style
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.yellow, // Button color
            foregroundColor: Colors.black, // Button text color
          ),
        ),
      ),
      home: MaximumBid(),
    );
  }
}

class MaximumBid extends StatefulWidget {
  @override
  _MaximumBidState createState() => _MaximumBidState();
}

class _MaximumBidState extends State<MaximumBid> {
  int _currentBid = 50; // Initial bid value

  void _increaseBid() {
    setState(() {
      _currentBid += 50; // Increase bid by $50
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bidding Page'),
        backgroundColor: Theme.of(context).colorScheme.primary, // AppBar uses primary color (yellow)
      ),
      body: Container(
        color: Colors.grey[700], // Dark background color
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Current Maximum Bid:',
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.yellow, // Text color (changed to yellow)
                ),
              ),
              SizedBox(height: 25),
              Text(
                '\$$_currentBid',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.yellowAccent, // Bid text color (changed to yellow)
                ),
              ),
              SizedBox(height: 40),
              ElevatedButton(
                onPressed: _increaseBid,
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
                  textStyle: TextStyle(fontSize: 20),
                ),
                child: Text('Push \$50'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}