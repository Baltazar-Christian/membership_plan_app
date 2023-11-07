import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Membership Plans',
      theme: ThemeData(
        primarySwatch: Colors.green,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: PlanScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class PlanScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        children: <Widget>[
          PlanDetails(
            title: 'Weekly',
            price: '199/w',
            savings: 'Save \$500 every week',
            features: [
              'Free consulting',
              'Free diet plan',
              'Unlimited training',
              'Free goodies',
              'Personalize workout'
            ],
          ),
          PlanDetails(
            title: 'Monthly',
            price: '1999/m',
            savings: 'Save \$500 every month',
            features: [
              'Free consulting',
              'Free diet plan',
              'Unlimited training',
              'Free goodies',
              'Personalize workout'
            ],
          ),
          PlanDetails(
            title: 'Yearly',
            price: '5999/y',
            savings: 'Save \$500 every year',
            features: [
              'Free consulting',
              'Free diet plan',
              'Unlimited training',
              'Free goodies',
              'Personalize workout'
            ],
          ),
        ],
      ),
    );
  }
}

class PlanDetails extends StatelessWidget {
  final String title;
  final String price;
  final String savings;
  final List<String> features;

  PlanDetails({
    required this.title,
    required this.price,
    required this.savings,
    required this.features,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[900],
      padding: EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(height: 30),
          Text(title,
              style: TextStyle(
                  color: Colors.green,
                  fontSize: 24,
                  fontWeight: FontWeight.bold)),
          SizedBox(height: 8),
          Text(savings, style: TextStyle(color: Colors.grey, fontSize: 16)),
          SizedBox(height: 12),
          Text(price,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 32,
                  fontWeight: FontWeight.bold)),
          SizedBox(height: 16),
          ElevatedButton(
            child: Text('Get Started'),
            style: ElevatedButton.styleFrom(
              primary: Colors.green,
              onPrimary: Colors.black,
              padding: EdgeInsets.symmetric(vertical: 12.0, horizontal: 110.0),
              textStyle: TextStyle(fontSize: 18),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30), // Rounded edges
              ),
            ),
            onPressed: () {
              // Handle button press
            },
          ),
          SizedBox(height: 24),
          Divider(color: Colors.grey, thickness: 2),
          SizedBox(height: 24),
          ...features
              .map((feature) => ListTile(
                    contentPadding: EdgeInsets.all(0),
                    leading: Container(
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: Colors.grey[
                            600], // Grey color for the circular background
                        shape: BoxShape.circle,
                      ),
                      child: Icon(Icons.check, color: Colors.green, size: 20),
                    ),
                    title: Text(feature,
                        style: TextStyle(color: Colors.grey, fontSize: 16)),
                  ))
              .toList(),
        ],
      ),
    );
  }
}
