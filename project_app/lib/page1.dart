import 'package:flutter/material.dart';

class Page1 extends StatefulWidget {
  const Page1({super.key});

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  Text('Unit Converter'),
        centerTitle: true,
        backgroundColor: Colors.amber,
      ),
      body: SafeArea(
        child: Center(
          child: Padding(
            padding:  EdgeInsets.all(16.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  width: double.infinity,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.black26,
                          blurRadius: 10,
                         
                        ),
                      ],
                    ),
                    padding: EdgeInsets.all(16),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                         Text(
                          'Convert units quickly',
                          style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                        ),
                         SizedBox(height: 12),
                         Text(
                          'This app converts lengths, weights, temperatures and more.\nTap the button below to open the converter.',
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 16, color: Colors.grey),
                        ),
                         SizedBox(height: 24),
                        ElevatedButton.icon(
                          onPressed: () => Navigator.pushNamed(context, '/page2'),
                          icon:  Icon(Icons.swap_horiz),
                          label:  Text('Open Converter'),
                         
                          ),
                      
                      ],
                    ),
                  ),
                ),
              
              ],
            ),
          ),
        ),
      ),
    );
  }
}