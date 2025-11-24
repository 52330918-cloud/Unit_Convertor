import 'package:flutter/material.dart';

class Page2 extends StatefulWidget {
  const Page2({super.key});

  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  final TextEditingController num1Controller = TextEditingController();
  final TextEditingController num2Controller = TextEditingController();
  final TextEditingController num3Controller = TextEditingController();
  final TextEditingController num4Controller = TextEditingController();
  final TextEditingController num5Controller = TextEditingController();
  final TextEditingController num6Controller = TextEditingController();

  double? km;
  double? cm;
  double? kg;
  double? mg;
  double? kelvin;
  double? fahrenheit;

  void CalculateKm() {
    final double meters = double.tryParse(num1Controller.text) ?? 0;

    setState(() {
      km = meters / 1000;
    });
  }

  void CalculateCm() {
    final double meters = double.tryParse(num2Controller.text) ?? 0;

    setState(() {
      cm = meters * 100;
    });
  }

  void CalculateKg() {
    final double grams = double.tryParse(num3Controller.text) ?? 0;

    setState(() {
      kg = grams / 1000;
    });
  }

  void CalculateMg() {
    final double grams = double.tryParse(num4Controller.text) ?? 0;

    setState(() {
      mg = grams * 1000;
    });
  }

  void CalculateKelvin() {
    final double celsius = double.tryParse(num5Controller.text) ?? 0;

    setState(() {
      kelvin = celsius + 273.15;
    });
  }

  void CalculateFahrenheit() {
    final double celsius = double.tryParse(num6Controller.text) ?? 0;

    setState(() {
      fahrenheit = (celsius * 9 / 5) + 32;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Unit Converter - Tools'),
        centerTitle: true,
        backgroundColor: Colors.amber,
      ),
      body: SingleChildScrollView(
        padding:  EdgeInsets.all(12),
        child: Column(
          
          children: [
             SizedBox(height: 6),
           
            Card(
              elevation: 6,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              margin:  EdgeInsets.symmetric(vertical: 8),
              child: Padding(
                padding:  EdgeInsets.all(16),
                child: Column(
                  children: [
                     Text(
                      'Length Converter',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                     SizedBox(height: 8),
                     Text('Convert meters to kilometers and centimeters.'),
                     SizedBox(height: 12),
                    TextField(
                      controller: num1Controller,
                      keyboardType: TextInputType.numberWithOptions(
                        decimal: true,
                      ),
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Enter value in meters',
                      ),
                    ),
                     SizedBox(height: 12),
                    Row(
                      children: [
                        Expanded(
                          child: ElevatedButton(
                            onPressed:
                               
                                CalculateKm,

                            child:  Text('To km'),
                          ),
                        ),
                         SizedBox(width: 12),
                        Expanded(
                          child: ElevatedButton(
                            onPressed: () {
                             
                              num2Controller.text = num1Controller.text;
                              CalculateCm();
                            },
                            child:  Text('To cm'),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 12),
                   
                    Container(
                      width: double.infinity,
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey.shade400),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Column(
                        children: [
                          Text(
                            "the value in km is:  ${km != null ? km : ''} km",
                            
                          ),
                          SizedBox(height: 10),
                          Text( 
                            "the value in cm is:  ${cm != null ? cm : ''} cm",
                           
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),

            
            Card(
              elevation: 6,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              margin:  EdgeInsets.symmetric(vertical: 8),
              child: Padding(
                padding:  EdgeInsets.all(16),
                child: Column(
                  children: [
                    Text(
                      'Weight Converter',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                     SizedBox(height: 8),
                     Text('Convert grams to kilograms and milligrams.'),
                     SizedBox(height: 12),
                    TextField(
                      controller: num3Controller,
                      keyboardType: TextInputType.numberWithOptions(
                        decimal: true,
                      ),
                      decoration:  InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Enter value in grams',
                      ),
                    ),
                    SizedBox(height: 12),
                    Row(
                      children: [
                        Expanded(
                          child: ElevatedButton(
                            onPressed: () {
                              CalculateKg();
                            },
                            child:  Text('To kg'),
                          ),
                        ),
                         SizedBox(width: 12),
                        Expanded(
                          child: ElevatedButton(
                            onPressed: () {
                              num4Controller.text = num3Controller.text;
                              CalculateMg();
                            },
                            child:  Text('To mg'),
                          ),
                        ),
                      ],
                    ),
                     SizedBox(height: 12),
                    Container(
                      width: double.infinity,
                      padding:  EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey.shade400),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Column(
                        children: [
                          Text(
                            "the value in kg is:  ${kg != null ? kg : ''} kg",
                            style:  TextStyle(fontSize: 16),
                          ),
                          SizedBox(height: 10),
                          Text(
                            "the value in mg is:  ${mg != null ? mg : ''} mg ",
                            style:  TextStyle(fontSize: 16),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),

            
            Card(
              elevation: 6,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              margin:  EdgeInsets.symmetric(vertical: 8),
              child: Padding(
                padding:  EdgeInsets.all(16),
                child: Column(
                  children: [
                     Text(
                      'Temperature Converter',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                     SizedBox(height: 8),
                     Text('Convert Celsius to Kelvin and Fahrenheit.'),
                     SizedBox(height: 12),
                    TextField(
                      controller: num5Controller,
                      keyboardType: TextInputType.numberWithOptions(
                        decimal: true,
                        signed: true,
                      ),
                      decoration:  InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Enter value in °C',
                      ),
                    ),
                    const SizedBox(height: 12),
                    Row(
                      children: [
                        Expanded(
                          child: ElevatedButton(
                            onPressed: () {
                              CalculateKelvin();
                            },
                            child:  Text('To K'),
                          ),
                        ),
                         SizedBox(width: 12),
                        Expanded(
                          child: ElevatedButton(
                            onPressed: () {
                              num6Controller.text = num5Controller.text;
                              CalculateFahrenheit();
                            },
                            child:  Text('To °F'),
                          ),
                        ),
                      ],
                    ),
                     SizedBox(height: 12),
                    Container(
                      width: double.infinity,
                      padding:  EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey.shade400),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Column(
                        children: [
                          Text(
                            "the value in kelvin is:  ${kelvin != null ? kelvin : ''} K",
                            style:  TextStyle(fontSize: 16),
                          ),
                          SizedBox(height: 10),
                          Text(
                            "the value in fahrenheit is:  ${fahrenheit != null ? fahrenheit : ''} °F",
                            style:  TextStyle(fontSize: 16),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 12),
            Center(
              child: TextButton(
                onPressed: () => Navigator.pop(context),
                child:  Text('Back'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
